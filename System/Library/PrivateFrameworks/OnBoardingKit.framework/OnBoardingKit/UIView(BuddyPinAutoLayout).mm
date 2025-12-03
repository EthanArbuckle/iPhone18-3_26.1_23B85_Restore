@interface UIView(BuddyPinAutoLayout)
- (id)ob_pinToEdgesConstraints:()BuddyPinAutoLayout;
- (void)ob_pinToEdges:()BuddyPinAutoLayout;
@end

@implementation UIView(BuddyPinAutoLayout)

- (void)ob_pinToEdges:()BuddyPinAutoLayout
{
  v1 = MEMORY[0x1E696ACD8];
  v2 = [self ob_pinToEdgesConstraints:?];
  [v1 activateConstraints:v2];
}

- (id)ob_pinToEdgesConstraints:()BuddyPinAutoLayout
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  leadingAnchor = [self leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[0] = v17;
  trailingAnchor = [self trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v7;
  topAnchor = [self topAnchor];
  topAnchor2 = [v4 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[2] = v10;
  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];

  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end