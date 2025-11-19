@interface DEAttachmentItem(GroupHandling)
- (id)description;
- (uint64_t)isGroup;
@end

@implementation DEAttachmentItem(GroupHandling)

- (uint64_t)isGroup
{
  v1 = [a1 attachmentType];
  v2 = [v1 isEqualToString:@"DEAttachmentTypeGroup"];

  return v2;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 displayName];
  v4 = [a1 path];
  v5 = [a1 modificationDate];
  v6 = [a1 filesize];
  v7 = [a1 shouldCompress];
  v8 = [a1 attachedPath];
  v9 = [v2 stringWithFormat:@"Item: (display %@) (path %@) (mod %@) (size %@) (compress %@) (attPath %@)", v3, v4, v5, v6, v7, v8];

  return v9;
}

@end