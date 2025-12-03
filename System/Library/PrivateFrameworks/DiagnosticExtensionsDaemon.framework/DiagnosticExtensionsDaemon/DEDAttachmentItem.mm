@interface DEDAttachmentItem
+ (id)archivedClasses;
+ (id)itemWithDEItem:(id)item;
+ (id)itemWithDictionary:(id)dictionary;
- (BOOL)isLocal;
- (NSString)description;
- (id)serialize;
- (void)serialize;
@end

@implementation DEDAttachmentItem

+ (id)itemWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
    v6 = stringIfNil(v5);
    [v4 setDisplayName:v6];

    v7 = MEMORY[0x277CBEBC0];
    v8 = [dictionaryCopy objectForKeyedSubscript:@"attachedPath"];
    v9 = [v7 fileURLWithPath:v8];
    [v4 setAttachedPath:v9];

    v10 = MEMORY[0x277CBEAA8];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"modificationDate"];
    v12 = [v10 _dateWithString:v11];
    [v4 setModificationDate:v12];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"fileSize"];
    [v4 setFileSize:v13];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"deviceID"];
    [v4 setDeviceID:v14];
  }

  return v4;
}

+ (id)itemWithDEItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_new();
  if (v4)
  {
    displayName = [itemCopy displayName];
    if (displayName)
    {
      displayName2 = [itemCopy displayName];
      [v4 setDisplayName:displayName2];
    }

    else
    {
      displayName2 = [itemCopy attachedPath];
      lastPathComponent = [displayName2 lastPathComponent];
      [v4 setDisplayName:lastPathComponent];
    }

    path = [itemCopy path];
    [v4 setAttachedPath:path];

    modificationDate = [itemCopy modificationDate];
    [v4 setModificationDate:modificationDate];

    filesize = [itemCopy filesize];
    [v4 setFileSize:filesize];

    v11 = +[DEDDevice currentDevice];
    identifier = [v11 identifier];
    [v4 setDeviceID:identifier];
  }

  return v4;
}

- (id)serialize
{
  v22[5] = *MEMORY[0x277D85DE8];
  attachedPath = [(DEDAttachmentItem *)self attachedPath];
  path = [attachedPath path];

  if (!path)
  {
    v5 = +[DEDUtils sharedLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(DEDAttachmentItem *)self serialize];
    }
  }

  v21[0] = @"displayName";
  displayName = [(DEDAttachmentItem *)self displayName];
  v19 = stringIfNil(displayName);
  v22[0] = v19;
  v21[1] = @"attachedPath";
  attachedPath2 = [(DEDAttachmentItem *)self attachedPath];
  path2 = [attachedPath2 path];
  v7 = stringIfNil(path2);
  v22[1] = v7;
  v21[2] = @"modificationDate";
  modificationDate = [(DEDAttachmentItem *)self modificationDate];
  serialize = [modificationDate serialize];
  v10 = stringIfNil(serialize);
  v22[2] = v10;
  v21[3] = @"fileSize";
  fileSize = [(DEDAttachmentItem *)self fileSize];
  if (fileSize)
  {
    fileSize2 = [(DEDAttachmentItem *)self fileSize];
  }

  else
  {
    fileSize2 = &unk_285B89A48;
  }

  v22[3] = fileSize2;
  v21[4] = @"deviceID";
  deviceID = [(DEDAttachmentItem *)self deviceID];
  v14 = stringIfNil(deviceID);
  v22[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  if (fileSize)
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isLocal
{
  deviceID = [(DEDAttachmentItem *)self deviceID];

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

  deviceID2 = [(DEDAttachmentItem *)self deviceID];
  LOBYTE(v5) = [deviceID2 isEqualToString:identifier];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  serialize = [(DEDAttachmentItem *)self serialize];
  v7 = [v3 stringWithFormat:@"%@: %@", v5, serialize];

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
  displayName = [self displayName];
  v5 = 138543362;
  v6 = displayName;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "attachment item [%{public}@] has nil path", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end