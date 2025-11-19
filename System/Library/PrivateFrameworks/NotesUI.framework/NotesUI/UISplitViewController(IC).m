@interface UISplitViewController(IC)
- (uint64_t)ic_toggleSidebar;
- (void)ic_showColumn:()IC animated:;
@end

@implementation UISplitViewController(IC)

- (void)ic_showColumn:()IC animated:
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__UISplitViewController_IC__ic_showColumn_animated___block_invoke;
  v7[3] = &unk_1E84698E0;
  v7[4] = a1;
  v7[5] = a3;
  v5 = _Block_copy(v7);
  v6 = v5;
  if (a4)
  {
    (*(v5 + 2))(v5);
  }

  else
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (uint64_t)ic_toggleSidebar
{
  if ([a1 displayMode] == 1 || objc_msgSend(a1, "isCollapsed"))
  {

    return [a1 showColumn:0];
  }

  else
  {

    return [a1 hideColumn:0];
  }
}

@end