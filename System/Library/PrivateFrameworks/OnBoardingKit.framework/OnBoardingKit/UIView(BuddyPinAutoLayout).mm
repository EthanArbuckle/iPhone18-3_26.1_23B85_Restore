@interface UIView(BuddyPinAutoLayout)
- (id)ob_pinToEdgesConstraints:()BuddyPinAutoLayout;
- (void)ob_pinToEdges:()BuddyPinAutoLayout;
@end

@implementation UIView(BuddyPinAutoLayout)

- (void)ob_pinToEdges:()BuddyPinAutoLayout
{
  v1 = MEMORY[0x1E696ACD8];
  v2 = [a1 ob_pinToEdgesConstraints:?];
  [v1 activateConstraints:v2];
}

- (id)ob_pinToEdgesConstraints:()BuddyPinAutoLayout
{
  v20[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = [a1 leadingAnchor];
  v18 = [v4 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v5 = [a1 trailingAnchor];
  v6 = [v4 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v20[1] = v7;
  v8 = [a1 topAnchor];
  v9 = [v4 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v20[2] = v10;
  v11 = [a1 bottomAnchor];
  v12 = [v4 bottomAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  v20[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end