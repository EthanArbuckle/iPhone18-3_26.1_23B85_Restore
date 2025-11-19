@interface DEDAttachmentItem
+ (id)archivedClasses;
+ (id)itemWithDEItem:(id)a3;
+ (id)itemWithDictionary:(id)a3;
- (BOOL)isLocal;
- (NSString)description;
- (id)serialize;
- (void)serialize;
@end

@implementation DEDAttachmentItem

+ (id)itemWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"displayName"];
    v6 = stringIfNil(v5);
    [v4 setDisplayName:v6];

    v7 = MEMORY[0x277CBEBC0];
    v8 = [v3 objectForKeyedSubscript:@"attachedPath"];
    v9 = [v7 fileURLWithPath:v8];
    [v4 setAttachedPath:v9];

    v10 = MEMORY[0x277CBEAA8];
    v11 = [v3 objectForKeyedSubscript:@"modificationDate"];
    v12 = [v10 _dateWithString:v11];
    [v4 setModificationDate:v12];

    v13 = [v3 objectForKeyedSubscript:@"fileSize"];
    [v4 setFileSize:v13];

    v14 = [v3 objectForKeyedSubscript:@"deviceID"];
    [v4 setDeviceID:v14];
  }

  return v4;
}

+ (id)itemWithDEItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [v3 displayName];
    if (v5)
    {
      v6 = [v3 displayName];
      [v4 setDisplayName:v6];
    }

    else
    {
      v6 = [v3 attachedPath];
      v7 = [v6 lastPathComponent];
      [v4 setDisplayName:v7];
    }

    v8 = [v3 path];
    [v4 setAttachedPath:v8];

    v9 = [v3 modificationDate];
    [v4 setModificationDate:v9];

    v10 = [v3 filesize];
    [v4 setFileSize:v10];

    v11 = +[DEDDevice currentDevice];
    v12 = [v11 identifier];
    [v4 setDeviceID:v12];
  }

  return v4;
}

- (id)serialize
{
  v22[5] = *MEMORY[0x277D85DE8];
  v3 = [(DEDAttachmentItem *)self attachedPath];
  v4 = [v3 path];

  if (!v4)
  {
    v5 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(DEDAttachmentItem *)self serialize];
    }
  }

  v21[0] = @"displayName";
  v20 = [(DEDAttachmentItem *)self displayName];
  v19 = stringIfNil(v20);
  v22[0] = v19;
  v21[1] = @"attachedPath";
  v18 = [(DEDAttachmentItem *)self attachedPath];
  v6 = [v18 path];
  v7 = stringIfNil(v6);
  v22[1] = v7;
  v21[2] = @"modificationDate";
  v8 = [(DEDAttachmentItem *)self modificationDate];
  v9 = [v8 serialize];
  v10 = stringIfNil(v9);
  v22[2] = v10;
  v21[3] = @"fileSize";
  v11 = [(DEDAttachmentItem *)self fileSize];
  if (v11)
  {
    v12 = [(DEDAttachmentItem *)self fileSize];
  }

  else
  {
    v12 = &unk_285B89A48;
  }

  v22[3] = v12;
  v21[4] = @"deviceID";
  v13 = [(DEDAttachmentItem *)self deviceID];
  v14 = stringIfNil(v13);
  v22[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  if (v11)
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isLocal
{
  v3 = [(DEDAttachmentItem *)self deviceID];

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

  v7 = [(DEDAttachmentItem *)self deviceID];
  LOBYTE(v5) = [v7 isEqualToString:v6];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DEDAttachmentItem *)self serialize];
  v7 = [v3 stringWithFormat:@"%@: %@", v5, v6];

  return v7;
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (void)serialize
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 displayName];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "attachment item [%{public}@] has nil path", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end