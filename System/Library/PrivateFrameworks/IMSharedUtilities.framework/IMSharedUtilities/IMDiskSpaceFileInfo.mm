@interface IMDiskSpaceFileInfo
- (IMDiskSpaceFileInfo)initWithPath:(id)a3 fileSize:(IMFileSize)a4 isDirectory:(BOOL)a5 isAttachment:(BOOL)a6 isSyncAsset:(BOOL)a7 isSticker:(BOOL)a8 isPurgableOnDisk:(BOOL)a9;
- (IMFileSize)fileSize;
- (id)logString;
- (void)addLogItems:(id)a3;
- (void)log;
@end

@implementation IMDiskSpaceFileInfo

- (IMDiskSpaceFileInfo)initWithPath:(id)a3 fileSize:(IMFileSize)a4 isDirectory:(BOOL)a5 isAttachment:(BOOL)a6 isSyncAsset:(BOOL)a7 isSticker:(BOOL)a8 isPurgableOnDisk:(BOOL)a9
{
  v10 = a6;
  disk_allocation_size = a4.disk_allocation_size;
  file_size = a4.file_size;
  v15 = a3;
  v28.receiver = self;
  v28.super_class = IMDiskSpaceFileInfo;
  v16 = [(IMDiskSpaceFileInfo *)&v28 init];
  if (v16)
  {
    v17 = [v15 copy];
    path = v16->_path;
    v16->_path = v17;

    v16->_isDirectory = a5;
    v16->_isAttachment = v10;
    v16->_isSyncAsset = a7;
    v16->_isPurgableOnDisk = a9;
    v16->_fileSize.file_size = file_size;
    v16->_fileSize.disk_allocation_size = disk_allocation_size;
    v16->_isSticker = a8;
    if (v10)
    {
      v19 = [v15 stringByDeletingLastPathComponent];
      v20 = [v19 lastPathComponent];
      guid = v16->_guid;
      v16->_guid = v20;
    }

    v22 = [v15 pathExtension];
    v23 = v22;
    if (v22 && [v22 length])
    {
      v24 = v23;
      fileExtension = v16->_fileExtension;
      v16->_fileExtension = v24;
    }

    else
    {
      v26 = [v15 lastPathComponent];
      fileExtension = v26;
      if (v26 && [(NSString *)v26 length]&& [(NSString *)fileExtension containsString:@"GroupPhotoImage"])
      {
        objc_storeStrong(&v16->_fileExtension, fileExtension);
      }
    }
  }

  return v16;
}

- (void)addLogItems:(id)a3
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

  v6 = a3;
  v7 = [v4 stringWithFormat:@"guid: %@ (on disk)", guid];
  [v6 addObject:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"path: %@ (on disk)", self->_path];
  [v6 addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = MEMORY[0x1E696ADA0];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_fileSize.file_size];
  v12 = [v10 stringFromHugeNumber:v11];
  v13 = [v9 stringWithFormat:@"file size: %@ (on disk)", v12];
  [v6 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = MEMORY[0x1E696ADA0];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_fileSize.disk_allocation_size];
  v17 = [v15 stringFromHugeNumber:v16];
  v18 = [v14 stringWithFormat:@"disk allocation size: %@", v17];
  [v6 addObject:v18];

  if (self->_isAttachment)
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isAttachment: %@", v19];
  [v6 addObject:v20];

  if (self->_isDirectory)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isDirectory: %@", v21];
  [v6 addObject:v22];
}

- (id)logString
{
  v3 = [MEMORY[0x1E695DF70] array];
  [(IMDiskSpaceFileInfo *)self addLogItems:v3];
  [v3 sortUsingComparator:&unk_1F1BA63E8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 componentsJoinedByString:@"\n      "];
  v8 = [v4 stringWithFormat:@"%@%@%@", v6, @"\n      ", v7];

  return v8;
}

- (void)log
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory("DiskSpace");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(IMDiskSpaceFileInfo *)self logString];
    v5 = 138412290;
    v6 = v4;
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