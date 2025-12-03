@interface UIView(BuddyPinAutoLayout)
- (id)pinToEdgesConstraints:()BuddyPinAutoLayout;
- (void)pinToEdges:()BuddyPinAutoLayout;
@end

@implementation UIView(BuddyPinAutoLayout)

- (void)pinToEdges:()BuddyPinAutoLayout
{
  v1 = MEMORY[0x277CCAAD0];
  v2 = [self pinToEdgesConstraints:?];
  [v1 activateConstraints:v2];
}

- (id)pinToEdgesConstraints:()BuddyPinAutoLayout
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  leadingAnchor = [self leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[0] = v16;
  trailingAnchor = [self trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[1] = v7;
  topAnchor = [self topAnchor];
  topAnchor2 = [v4 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[2] = v10;
  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];

  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v19[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  return v14;
}

@end