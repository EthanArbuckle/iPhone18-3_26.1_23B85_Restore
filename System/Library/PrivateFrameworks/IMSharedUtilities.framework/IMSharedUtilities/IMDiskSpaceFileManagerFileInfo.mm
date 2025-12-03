@interface IMDiskSpaceFileManagerFileInfo
- (IMDiskSpaceFileManagerFileInfo)initWithPath:(id)path fileSize:(IMFileSize)size isDirectory:(BOOL)directory isAttachment:(BOOL)attachment isSyncAsset:(BOOL)asset isSticker:(BOOL)sticker purgableFlags:(unint64_t)flags;
- (void)addLogItems:(id)items;
@end

@implementation IMDiskSpaceFileManagerFileInfo

- (IMDiskSpaceFileManagerFileInfo)initWithPath:(id)path fileSize:(IMFileSize)size isDirectory:(BOOL)directory isAttachment:(BOOL)attachment isSyncAsset:(BOOL)asset isSticker:(BOOL)sticker purgableFlags:(unint64_t)flags
{
  assetCopy = asset;
  attachmentCopy = attachment;
  directoryCopy = directory;
  disk_allocation_size = size.disk_allocation_size;
  file_size = size.file_size;
  pathCopy = path;
  if (flags)
  {
    v16 = (IM_APFS_PURGEABLE_IGNORE_ME() & flags) == 0;
  }

  else
  {
    v16 = 0;
  }

  v21.receiver = self;
  v21.super_class = IMDiskSpaceFileManagerFileInfo;
  HIBYTE(v20) = v16;
  LOBYTE(v20) = sticker;
  v17 = [(IMDiskSpaceFileInfo *)&v21 initWithPath:pathCopy fileSize:file_size isDirectory:disk_allocation_size isAttachment:directoryCopy isSyncAsset:attachmentCopy isSticker:assetCopy isPurgableOnDisk:v20];
  v18 = v17;
  if (v17)
  {
    v17->_purgableFlags = flags;
  }

  return v18;
}

- (void)addLogItems:(id)items
{
  v8.receiver = self;
  v8.super_class = IMDiskSpaceFileManagerFileInfo;
  itemsCopy = items;
  [(IMDiskSpaceFileInfo *)&v8 addLogItems:itemsCopy];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [IMAPFSUtils stringForPurgableFlags:[(IMDiskSpaceFileManagerFileInfo *)self purgableFlags]];
  v7 = [v5 stringWithFormat:@"isPurgable: %@ (on disk)", v6];
  [itemsCopy addObject:v7];
}

@end