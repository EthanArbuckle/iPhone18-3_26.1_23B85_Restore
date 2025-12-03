@interface UIViewController(DC)
+ (void)dc_enableUIViewAnimations:()DC forBlock:;
- (BOOL)dc_isViewVisible;
- (double)dc_safeAreaDistanceFromBottom;
- (double)dc_safeAreaDistanceFromTop;
- (id)dc_safeAreaLayoutGuide;
- (uint64_t)dc_isRTL;
- (void)dc_showViewController:()DC animated:sender:;
@end

@implementation UIViewController(DC)

- (uint64_t)dc_isRTL
{
  view = [self view];
  dc_isRTL = [view dc_isRTL];

  return dc_isRTL;
}

+ (void)dc_enableUIViewAnimations:()DC forBlock:
{
  v7 = a4;
  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  if (areAnimationsEnabled == a3)
  {
    v7[2]();
  }

  else
  {
    v6 = areAnimationsEnabled;
    [MEMORY[0x277D75D18] setAnimationsEnabled:a3];
    v7[2]();
    [MEMORY[0x277D75D18] setAnimationsEnabled:v6];
  }
}

- (void)dc_showViewController:()DC animated:sender:
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_class();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__UIViewController_DC__dc_showViewController_animated_sender___block_invoke;
  v13[3] = &unk_278F93258;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 dc_enableUIViewAnimations:a4 forBlock:v13];
}

- (BOOL)dc_isViewVisible
{
  viewIfLoaded = [self viewIfLoaded];
  window = [viewIfLoaded window];
  if (window)
  {
    v4 = [self _appearState] != 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)dc_safeAreaDistanceFromTop
{
  dc_safeAreaLayoutGuide = [self dc_safeAreaLayoutGuide];
  [dc_safeAreaLayoutGuide layoutFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;

  return CGRectGetMinY(*&v10);
}

- (double)dc_safeAreaDistanceFromBottom
{
  dc_safeAreaLayoutGuide = [self dc_safeAreaLayoutGuide];
  [dc_safeAreaLayoutGuide layoutFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  view = [self view];
  [view bounds];
  MaxY = CGRectGetMaxY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v13 = MaxY - CGRectGetMaxY(v16);

  return v13;
}

- (id)dc_safeAreaLayoutGuide
{
  view = [self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];

  return safeAreaLayoutGuide;
}

@end