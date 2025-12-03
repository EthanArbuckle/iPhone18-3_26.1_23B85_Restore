@interface UIScrollView(ControlCenterUI)
- (double)ccui_relativeContentOffset;
- (uint64_t)ccui_setContentInsetPreservingOffset:()ControlCenterUI;
- (uint64_t)ccui_setRelativeContentOffset:()ControlCenterUI;
@end

@implementation UIScrollView(ControlCenterUI)

- (double)ccui_relativeContentOffset
{
  [self contentOffset];
  v3 = v2;
  [self contentInset];
  return v3 + v4;
}

- (uint64_t)ccui_setRelativeContentOffset:()ControlCenterUI
{
  [self contentInset];

  return [self setContentOffset:{a2 - v7, a3 - v6}];
}

- (uint64_t)ccui_setContentInsetPreservingOffset:()ControlCenterUI
{
  result = [self contentInset];
  if (a3 != v14 || a2 != v11 || a5 != v13 || a4 != v12)
  {
    [self ccui_relativeContentOffset];
    v19 = v18;
    v21 = v20;
    [self setContentInset:{a2, a3, a4, a5}];

    return [self ccui_setRelativeContentOffset:{v19, v21}];
  }

  return result;
}

@end