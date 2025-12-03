@interface UINavigationItem(ScrollToEdge)
- (uint64_t)ob_applyAutomaticScrollToEdgeBehaviorWithDistance:()ScrollToEdge;
@end

@implementation UINavigationItem(ScrollToEdge)

- (uint64_t)ob_applyAutomaticScrollToEdgeBehaviorWithDistance:()ScrollToEdge
{
  result = [self _isManualScrollEdgeAppearanceEnabled];
  if ((result & 1) == 0)
  {
    [self _setAutoScrollEdgeTransitionDistance:a2];

    return [self _setManualScrollEdgeAppearanceEnabled:1];
  }

  return result;
}

@end