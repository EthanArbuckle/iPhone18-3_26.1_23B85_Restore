@interface DEDAttachmentGroup
+ (id)archivedClasses;
+ (id)groupWithDEGroup:(id)group identifier:(id)identifier;
+ (id)groupWithDictionary:(id)dictionary;
- (BOOL)isLocal;
- (DEDExtensionIdentifier)dedExtensionIdentifier;
- (NSString)description;
- (id)archiveName;
- (id)serialize;
- (id)totalFileSize;
@end

@implementation DEDAttachmentGroup

+ (id)groupWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rootURL"];
    v7 = [v5 fileURLWithPath:v6];
    [v4 setRootURL:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
    v9 = stringIfNil(v8);
    [v4 setDisplayName:v9];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"extensionID"];
    v11 = stringIfNil(v10);
    [v4 setExtensionID:v11];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceID"];
    v13 = stringIfNil(v12);
    [v4 setDeviceID:v13];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"attachmentItems"];
    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"attachmentItems"];
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

+ (id)groupWithDEGroup:(id)group identifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  if (v7)
  {
    rootURL = [groupCopy rootURL];
    [v7 setRootURL:rootURL];

    displayName = [groupCopy displayName];
    if (displayName)
    {
      displayName2 = [groupCopy displayName];
      [v7 setDisplayName:displayName2];
    }

    else
    {
      displayName2 = [v7 rootURL];
      lastPathComponent = [displayName2 lastPathComponent];
      [v7 setDisplayName:lastPathComponent];
    }

    [v7 setExtensionID:identifierCopy];
    v12 = +[DEDDevice currentDevice];
    identifier = [v12 identifier];
    [v7 setDeviceID:identifier];

    v14 = MEMORY[0x277CBEB18];
    attachmentItems = [groupCopy attachmentItems];
    v16 = [v14 arrayWithCapacity:{objc_msgSend(attachmentItems, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    attachmentItems2 = [groupCopy attachmentItems];
    v18 = [attachmentItems2 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(attachmentItems2);
          }

          v22 = [DEDAttachmentItem itemWithDEItem:*(*(&v26 + 1) + 8 * i)];
          [v16 addObject:v22];
        }

        v19 = [attachmentItems2 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
  attachmentItems = [(DEDAttachmentGroup *)self attachmentItems];
  v3 = [attachmentItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(attachmentItems);
        }

        fileSize = [*(*(&v12 + 1) + 8 * i) fileSize];
        v5 += [fileSize integerValue];
      }

      v4 = [attachmentItems countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  extensionID = [(DEDAttachmentGroup *)self extensionID];

  if (extensionID)
  {
    v4 = MEMORY[0x277CCACA8];
    extensionID2 = [(DEDAttachmentGroup *)self extensionID];
    [v4 stringWithFormat:@"%@.tar.gz", extensionID2];
  }

  else
  {
    attachmentItems = [(DEDAttachmentGroup *)self attachmentItems];
    v7 = [attachmentItems count];

    if (v7)
    {
      attachmentItems2 = [(DEDAttachmentGroup *)self attachmentItems];
      firstObject = [attachmentItems2 firstObject];
      attachedPath = [firstObject attachedPath];
      extensionID2 = [attachedPath lastPathComponent];
    }

    else
    {
      attachmentItems2 = [MEMORY[0x277CCAD78] UUID];
      extensionID2 = [attachmentItems2 UUIDString];
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"%@.tar.gz", extensionID2];
  }
  v11 = ;

  return v11;
}

- (id)serialize
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  attachmentItems = [(DEDAttachmentGroup *)self attachmentItems];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(attachmentItems, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  attachmentItems2 = [(DEDAttachmentGroup *)self attachmentItems];
  v7 = [attachmentItems2 countByEnumeratingWithState:&v30 objects:v36 count:16];
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
          objc_enumerationMutation(attachmentItems2);
        }

        serialize = [*(*(&v30 + 1) + 8 * i) serialize];
        [v5 addObject:serialize];
      }

      v8 = [attachmentItems2 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
  v34[0] = @"rootURL";
  rootURL = [(DEDAttachmentGroup *)self rootURL];
  path = [rootURL path];
  v27 = stringIfNil(path);
  v35[0] = v27;
  v34[1] = @"displayName";
  displayName = [(DEDAttachmentGroup *)self displayName];
  v13 = stringIfNil(displayName);
  v35[1] = v13;
  v34[2] = @"extensionID";
  extensionID = [(DEDAttachmentGroup *)self extensionID];
  v15 = stringIfNil(extensionID);
  v35[2] = v15;
  v34[3] = @"deviceID";
  deviceID = [(DEDAttachmentGroup *)self deviceID];
  v17 = stringIfNil(deviceID);
  v35[3] = v17;
  v34[4] = @"DEDExtensionID";
  dedExtensionIdentifier = [(DEDAttachmentGroup *)self dedExtensionIdentifier];
  stringValue = [dedExtensionIdentifier stringValue];
  v20 = stringIfNil(stringValue);
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
    rootURL = [(DEDAttachmentGroup *)self rootURL];
    lastPathComponent = [rootURL lastPathComponent];
    v7 = [(DEDExtensionIdentifier *)v4 initWithString:lastPathComponent];
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
  serialize = [(DEDAttachmentGroup *)self serialize];
  v7 = [v3 stringWithFormat:@"%@: %@", v5, serialize];

  return v7;
}

- (BOOL)isLocal
{
  deviceID = [(DEDAttachmentGroup *)self deviceID];

  if (!deviceID)
  {
    v4 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DEDAttachmentGroup *)v4 isLocal];
    }
  }

  v5 = +[DEDDevice currentDevice];
  identifier = [v5 identifier];

  deviceID2 = [(DEDAttachmentGroup *)self deviceID];
  LOBYTE(v5) = [deviceID2 isEqualToString:identifier];

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