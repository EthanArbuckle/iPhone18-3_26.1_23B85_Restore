@interface DEAttachmentGroup(GroupHandling)
- (id)description;
@end

@implementation DEAttachmentGroup(GroupHandling)

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 rootURL];
  v4 = [a1 attachmentItems];
  v5 = [v2 stringWithFormat:@"Group: (rootURL %@) (items %@)", v3, v4];

  return v5;
}

@end