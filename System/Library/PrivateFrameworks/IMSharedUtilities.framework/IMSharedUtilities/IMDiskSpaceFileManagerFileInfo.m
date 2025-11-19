@interface IMDiskSpaceFileManagerFileInfo
- (IMDiskSpaceFileManagerFileInfo)initWithPath:(id)a3 fileSize:(IMFileSize)a4 isDirectory:(BOOL)a5 isAttachment:(BOOL)a6 isSyncAsset:(BOOL)a7 isSticker:(BOOL)a8 purgableFlags:(unint64_t)a9;
- (void)addLogItems:(id)a3;
@end

@implementation IMDiskSpaceFileManagerFileInfo

- (IMDiskSpaceFileManagerFileInfo)initWithPath:(id)a3 fileSize:(IMFileSize)a4 isDirectory:(BOOL)a5 isAttachment:(BOOL)a6 isSyncAsset:(BOOL)a7 isSticker:(BOOL)a8 purgableFlags:(unint64_t)a9
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  disk_allocation_size = a4.disk_allocation_size;
  file_size = a4.file_size;
  v15 = a3;
  if (a9)
  {
    v16 = (IM_APFS_PURGEABLE_IGNORE_ME() & a9) == 0;
  }

  else
  {
    v16 = 0;
  }

  v21.receiver = self;
  v21.super_class = IMDiskSpaceFileManagerFileInfo;
  HIBYTE(v20) = v16;
  LOBYTE(v20) = a8;
  v17 = [(IMDiskSpaceFileInfo *)&v21 initWithPath:v15 fileSize:file_size isDirectory:disk_allocation_size isAttachment:v11 isSyncAsset:v10 isSticker:v9 isPurgableOnDisk:v20];
  v18 = v17;
  if (v17)
  {
    v17->_purgableFlags = a9;
  }

  return v18;
}

- (void)addLogItems:(id)a3
{
  v8.receiver = self;
  v8.super_class = IMDiskSpaceFileManagerFileInfo;
  v4 = a3;
  [(IMDiskSpaceFileInfo *)&v8 addLogItems:v4];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [IMAPFSUtils stringForPurgableFlags:[(IMDiskSpaceFileManagerFileInfo *)self purgableFlags]];
  v7 = [v5 stringWithFormat:@"isPurgable: %@ (on disk)", v6];
  [v4 addObject:v7];
}

@end