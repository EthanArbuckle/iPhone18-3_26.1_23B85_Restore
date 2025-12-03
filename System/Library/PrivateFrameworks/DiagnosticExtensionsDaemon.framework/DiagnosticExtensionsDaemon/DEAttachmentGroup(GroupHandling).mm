@interface DEAttachmentGroup(GroupHandling)
- (id)description;
@end

@implementation DEAttachmentGroup(GroupHandling)

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  rootURL = [self rootURL];
  attachmentItems = [self attachmentItems];
  v5 = [v2 stringWithFormat:@"Group: (rootURL %@) (items %@)", rootURL, attachmentItems];

  return v5;
}

@end