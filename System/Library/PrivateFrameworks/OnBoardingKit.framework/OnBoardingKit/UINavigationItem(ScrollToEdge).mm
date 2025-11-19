@interface UINavigationItem(ScrollToEdge)
- (uint64_t)ob_applyAutomaticScrollToEdgeBehaviorWithDistance:()ScrollToEdge;
@end

@implementation UINavigationItem(ScrollToEdge)

- (uint64_t)ob_applyAutomaticScrollToEdgeBehaviorWithDistance:()ScrollToEdge
{
  result = [a1 _isManualScrollEdgeAppearanceEnabled];
  if ((result & 1) == 0)
  {
    [a1 _setAutoScrollEdgeTransitionDistance:a2];

    return [a1 _setManualScrollEdgeAppearanceEnabled:1];
  }

  return result;
}

@end