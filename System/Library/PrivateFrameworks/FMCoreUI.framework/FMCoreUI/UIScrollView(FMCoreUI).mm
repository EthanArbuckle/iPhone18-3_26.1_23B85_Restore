@interface UIScrollView(FMCoreUI)
- (BOOL)isContentLargerThanBounds;
- (uint64_t)centerContentIfNecessary;
- (uint64_t)centerContentWithOffset:()FMCoreUI animated:;
- (uint64_t)scrollSubviewToVisible:()FMCoreUI animated:;
@end

@implementation UIScrollView(FMCoreUI)

- (BOOL)isContentLargerThanBounds
{
  [self layoutIfNeeded];
  [self bounds];
  v3 = v2;
  v5 = v4;
  [self contentSize];
  return v7 > v5 || v6 > v3;
}

- (uint64_t)centerContentIfNecessary
{
  result = [self isContentLargerThanBounds];
  if ((result & 1) == 0)
  {
    v3 = *MEMORY[0x277CBF348];
    v4 = *(MEMORY[0x277CBF348] + 8);

    return [self centerContentWithOffset:0 animated:{v3, v4}];
  }

  return result;
}

- (uint64_t)centerContentWithOffset:()FMCoreUI animated:
{
  [self layoutIfNeeded];
  [self contentSize];
  v10 = v9;
  v12 = v11 * 0.5;
  [self bounds];
  v14 = v12 - v13 * 0.5;
  [self bounds];

  return [self setContentOffset:a5 animated:{v14 - a2, v10 * 0.5 - v15 * 0.5 - a3}];
}

- (uint64_t)scrollSubviewToVisible:()FMCoreUI animated:
{
  v6 = a3;
  superview = [v6 superview];
  [v6 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [superview convertRect:self toView:{v9, v11, v13, v15}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [self scrollRectToVisible:a4 animated:{v17, v19, v21, v23}];
}

@end