@interface UIView(BatteryCenterUI)
- (void)observeContentSizeCategoryChange:()BatteryCenterUI;
@end

@implementation UIView(BatteryCenterUI)

- (void)observeContentSizeCategoryChange:()BatteryCenterUI
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_self();
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__UIView_BatteryCenterUI__observeContentSizeCategoryChange___block_invoke;
  v9[3] = &unk_1E814EE28;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  v8 = [self registerForTraitChanges:v6 withHandler:v9];
}

@end