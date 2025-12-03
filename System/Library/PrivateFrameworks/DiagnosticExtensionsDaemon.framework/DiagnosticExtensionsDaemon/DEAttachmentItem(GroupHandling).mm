@interface DEAttachmentItem(GroupHandling)
- (id)description;
- (uint64_t)isGroup;
@end

@implementation DEAttachmentItem(GroupHandling)

- (uint64_t)isGroup
{
  attachmentType = [self attachmentType];
  v2 = [attachmentType isEqualToString:@"DEAttachmentTypeGroup"];

  return v2;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  displayName = [self displayName];
  path = [self path];
  modificationDate = [self modificationDate];
  filesize = [self filesize];
  shouldCompress = [self shouldCompress];
  attachedPath = [self attachedPath];
  v9 = [v2 stringWithFormat:@"Item: (display %@) (path %@) (mod %@) (size %@) (compress %@) (attPath %@)", displayName, path, modificationDate, filesize, shouldCompress, attachedPath];

  return v9;
}

@end