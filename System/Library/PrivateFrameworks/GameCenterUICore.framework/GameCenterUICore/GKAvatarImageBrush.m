@interface GKAvatarImageBrush
- (id)renderedImageIdentifier;
@end

@implementation GKAvatarImageBrush

- (id)renderedImageIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKAvatarImageBrush dimension](self, "dimension")}];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

@end