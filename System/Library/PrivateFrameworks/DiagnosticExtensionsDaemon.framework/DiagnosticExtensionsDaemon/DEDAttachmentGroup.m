@interface DEDAttachmentGroup
+ (id)archivedClasses;
+ (id)groupWithDEGroup:(id)a3 identifier:(id)a4;
+ (id)groupWithDictionary:(id)a3;
- (BOOL)isLocal;
- (DEDExtensionIdentifier)dedExtensionIdentifier;
- (NSString)description;
- (id)archiveName;
- (id)serialize;
- (id)totalFileSize;
@end

@implementation DEDAttachmentGroup

+ (id)groupWithDictionary:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = [v3 objectForKeyedSubscript:@"rootURL"];
    v7 = [v5 fileURLWithPath:v6];
    [v4 setRootURL:v7];

    v8 = [v3 objectForKeyedSubscript:@"displayName"];
    v9 = stringIfNil(v8);
    [v4 setDisplayName:v9];

    v10 = [v3 objectForKeyedSubscript:@"extensionID"];
    v11 = stringIfNil(v10);
    [v4 setExtensionID:v11];

    v12 = [v3 objectForKeyedSubscript:@"deviceID"];
    v13 = stringIfNil(v12);
    [v4 setDeviceID:v13];

    v14 = [v3 objectForKeyedSubscript:@"attachmentItems"];
    if (v14)
    {
      v15 = [v3 objectForKeyedSubscript:@"attachmentItems"];
    }

    else
    {
      v15 = &unk_285B899D0;
    }

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [DEDAttachmentItem itemWithDictionary:*(*(&v26 + 1) + 8 * i), v26];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v19);
    }

    v23 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    [v4 setAttachmentItems:v23];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)groupWithDEGroup:(id)a3 identifier:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if (v7)
  {
    v8 = [v5 rootURL];
    [v7 setRootURL:v8];

    v9 = [v5 displayName];
    if (v9)
    {
      v10 = [v5 displayName];
      [v7 setDisplayName:v10];
    }

    else
    {
      v10 = [v7 rootURL];
      v11 = [v10 lastPathComponent];
      [v7 setDisplayName:v11];
    }

    [v7 setExtensionID:v6];
    v12 = +[DEDDevice currentDevice];
    v13 = [v12 identifier];
    [v7 setDeviceID:v13];

    v14 = MEMORY[0x277CBEB18];
    v15 = [v5 attachmentItems];
    v16 = [v14 arrayWithCapacity:{objc_msgSend(v15, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [v5 attachmentItems];
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [DEDAttachmentItem itemWithDEItem:*(*(&v26 + 1) + 8 * i)];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v19);
    }

    v23 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    [v7 setAttachmentItems:v23];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)totalFileSize
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(DEDAttachmentGroup *)self attachmentItems];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) fileSize];
        v5 += [v8 integerValue];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)archiveName
{
  v3 = [(DEDAttachmentGroup *)self extensionID];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(DEDAttachmentGroup *)self extensionID];
    [v4 stringWithFormat:@"%@.tar.gz", v5];
  }

  else
  {
    v6 = [(DEDAttachmentGroup *)self attachmentItems];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(DEDAttachmentGroup *)self attachmentItems];
      v9 = [v8 firstObject];
      v10 = [v9 attachedPath];
      v5 = [v10 lastPathComponent];
    }

    else
    {
      v8 = [MEMORY[0x277CCAD78] UUID];
      v5 = [v8 UUIDString];
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.tar.gz", v5];
  }
  v11 = ;

  return v11;
}

- (id)serialize
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(DEDAttachmentGroup *)self attachmentItems];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(DEDAttachmentGroup *)self attachmentItems];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v30 + 1) + 8 * i) serialize];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  v34[0] = @"rootURL";
  v29 = [(DEDAttachmentGroup *)self rootURL];
  v28 = [v29 path];
  v27 = stringIfNil(v28);
  v35[0] = v27;
  v34[1] = @"displayName";
  v26 = [(DEDAttachmentGroup *)self displayName];
  v13 = stringIfNil(v26);
  v35[1] = v13;
  v34[2] = @"extensionID";
  v14 = [(DEDAttachmentGroup *)self extensionID];
  v15 = stringIfNil(v14);
  v35[2] = v15;
  v34[3] = @"deviceID";
  v16 = [(DEDAttachmentGroup *)self deviceID];
  v17 = stringIfNil(v16);
  v35[3] = v17;
  v34[4] = @"DEDExtensionID";
  v18 = [(DEDAttachmentGroup *)self dedExtensionIdentifier];
  v19 = [v18 stringValue];
  v20 = stringIfNil(v19);
  v21 = v20;
  v34[5] = @"attachmentItems";
  v22 = MEMORY[0x277CBEBF8];
  if (v12)
  {
    v22 = v12;
  }

  v35[4] = v20;
  v35[5] = v22;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:6];

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

- (DEDExtensionIdentifier)dedExtensionIdentifier
{
  dedExtensionIdentifier = self->_dedExtensionIdentifier;
  if (!dedExtensionIdentifier)
  {
    v4 = [DEDExtensionIdentifier alloc];
    v5 = [(DEDAttachmentGroup *)self rootURL];
    v6 = [v5 lastPathComponent];
    v7 = [(DEDExtensionIdentifier *)v4 initWithString:v6];
    v8 = self->_dedExtensionIdentifier;
    self->_dedExtensionIdentifier = v7;

    dedExtensionIdentifier = self->_dedExtensionIdentifier;
  }

  return dedExtensionIdentifier;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DEDAttachmentGroup *)self serialize];
  v7 = [v3 stringWithFormat:@"%@: %@", v5, v6];

  return v7;
}

- (BOOL)isLocal
{
  v3 = [(DEDAttachmentGroup *)self deviceID];

  if (!v3)
  {
    v4 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DEDAttachmentGroup *)v4 isLocal];
    }
  }

  v5 = +[DEDDevice currentDevice];
  v6 = [v5 identifier];

  v7 = [(DEDAttachmentGroup *)self deviceID];
  LOBYTE(v5) = [v7 isEqualToString:v6];

  return v5;
}

+ (id)archivedClasses
{
  if (archivedClasses_onceToken != -1)
  {
    +[DEDAttachmentGroup archivedClasses];
  }

  v3 = archivedClasses__outboundClasses;

  return v3;
}

void __37__DEDAttachmentGroup_archivedClasses__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = objc_opt_class();
  v6 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v2 = +[DEDAttachmentItem archivedClasses];
  [v6 unionSet:v2];

  v3 = +[DEDExtensionIdentifier archivedClasses];
  [v6 unionSet:v3];

  v4 = [MEMORY[0x277CBEB98] setWithSet:v6];
  v5 = archivedClasses__outboundClasses;
  archivedClasses__outboundClasses = v4;
}

@end