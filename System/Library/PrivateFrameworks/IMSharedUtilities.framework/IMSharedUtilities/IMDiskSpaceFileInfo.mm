@interface IMDiskSpaceFileInfo
- (IMDiskSpaceFileInfo)initWithPath:(id)path fileSize:(IMFileSize)size isDirectory:(BOOL)directory isAttachment:(BOOL)attachment isSyncAsset:(BOOL)asset isSticker:(BOOL)sticker isPurgableOnDisk:(BOOL)disk;
- (IMFileSize)fileSize;
- (id)logString;
- (void)addLogItems:(id)items;
- (void)log;
@end

@implementation IMDiskSpaceFileInfo

- (IMDiskSpaceFileInfo)initWithPath:(id)path fileSize:(IMFileSize)size isDirectory:(BOOL)directory isAttachment:(BOOL)attachment isSyncAsset:(BOOL)asset isSticker:(BOOL)sticker isPurgableOnDisk:(BOOL)disk
{
  attachmentCopy = attachment;
  disk_allocation_size = size.disk_allocation_size;
  file_size = size.file_size;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = IMDiskSpaceFileInfo;
  v16 = [(IMDiskSpaceFileInfo *)&v28 init];
  if (v16)
  {
    v17 = [pathCopy copy];
    path = v16->_path;
    v16->_path = v17;

    v16->_isDirectory = directory;
    v16->_isAttachment = attachmentCopy;
    v16->_isSyncAsset = asset;
    v16->_isPurgableOnDisk = disk;
    v16->_fileSize.file_size = file_size;
    v16->_fileSize.disk_allocation_size = disk_allocation_size;
    v16->_isSticker = sticker;
    if (attachmentCopy)
    {
      stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
      lastPathComponent = [stringByDeletingLastPathComponent lastPathComponent];
      guid = v16->_guid;
      v16->_guid = lastPathComponent;
    }

    pathExtension = [pathCopy pathExtension];
    v23 = pathExtension;
    if (pathExtension && [pathExtension length])
    {
      v24 = v23;
      fileExtension = v16->_fileExtension;
      v16->_fileExtension = v24;
    }

    else
    {
      lastPathComponent2 = [pathCopy lastPathComponent];
      fileExtension = lastPathComponent2;
      if (lastPathComponent2 && [(NSString *)lastPathComponent2 length]&& [(NSString *)fileExtension containsString:@"GroupPhotoImage"])
      {
        objc_storeStrong(&v16->_fileExtension, fileExtension);
      }
    }
  }

  return v16;
}

- (void)addLogItems:(id)items
{
  v4 = MEMORY[0x1E696AEC0];
  if (self->_guid)
  {
    guid = self->_guid;
  }

  else
  {
    guid = @"nil";
  }

  itemsCopy = items;
  guid = [v4 stringWithFormat:@"guid: %@ (on disk)", guid];
  [itemsCopy addObject:guid];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"path: %@ (on disk)", self->_path];
  [itemsCopy addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = MEMORY[0x1E696ADA0];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_fileSize.file_size];
  v12 = [v10 stringFromHugeNumber:v11];
  v13 = [v9 stringWithFormat:@"file size: %@ (on disk)", v12];
  [itemsCopy addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = MEMORY[0x1E696ADA0];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_fileSize.disk_allocation_size];
  v17 = [v15 stringFromHugeNumber:v16];
  v18 = [v14 stringWithFormat:@"disk allocation size: %@", v17];
  [itemsCopy addObject:v18];

  if (self->_isAttachment)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isAttachment: %@", v19];
  [itemsCopy addObject:v20];

  if (self->_isDirectory)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isDirectory: %@", v21];
  [itemsCopy addObject:v22];
}

- (id)logString
{
  array = [MEMORY[0x1E695DF70] array];
  [(IMDiskSpaceFileInfo *)self addLogItems:array];
  [array sortUsingComparator:&unk_1F1BA63E8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [array componentsJoinedByString:@"\n      "];
  v8 = [v4 stringWithFormat:@"%@%@%@", v6, @"\n      ", v7];

  return v8;
}

- (void)log
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory("DiskSpace");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    logString = [(IMDiskSpaceFileInfo *)self logString];
    v5 = 138412290;
    v6 = logString;
    _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "%@", &v5, 0xCu);
  }
}

- (IMFileSize)fileSize
{
  disk_allocation_size = self->_fileSize.disk_allocation_size;
  file_size = self->_fileSize.file_size;
  result.disk_allocation_size = disk_allocation_size;
  result.file_size = file_size;
  return result;
}

@end