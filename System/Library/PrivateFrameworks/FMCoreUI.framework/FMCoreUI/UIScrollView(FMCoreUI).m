@interface UIScrollView(FMCoreUI)
- (BOOL)isContentLargerThanBounds;
- (uint64_t)centerContentIfNecessary;
- (uint64_t)centerContentWithOffset:()FMCoreUI animated:;
- (uint64_t)scrollSubviewToVisible:()FMCoreUI animated:;
@end

@implementation UIScrollView(FMCoreUI)

- (BOOL)isContentLargerThanBounds
{
  [a1 layoutIfNeeded];
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  [a1 contentSize];
  return v7 > v5 || v6 > v3;
}

- (uint64_t)centerContentIfNecessary
{
  result = [a1 isContentLargerThanBounds];
  if ((result & 1) == 0)
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);

    return [a1 centerContentWithOffset:0 animated:{v3, v4}];
  }

  return result;
}

- (uint64_t)centerContentWithOffset:()FMCoreUI animated:
{
  [a1 layoutIfNeeded];
  [a1 contentSize];
  v10 = v9;
  v12 = v11 * 0.5;
  [a1 bounds];
  v14 = v12 - v13 * 0.5;
  [a1 bounds];

  return [a1 setContentOffset:a5 animated:{v14 - a2, v10 * 0.5 - v15 * 0.5 - a3}];
}

- (uint64_t)scrollSubviewToVisible:()FMCoreUI animated:
{
  v6 = a3;
  v7 = [v6 superview];
  [v6 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v7 convertRect:a1 toView:{v9, v11, v13, v15}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [a1 scrollRectToVisible:a4 animated:{v17, v19, v21, v23}];
}

@end