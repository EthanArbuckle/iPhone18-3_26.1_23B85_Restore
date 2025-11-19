@interface UINavigationController(MobileSafariFrameworkExtras)
- (uint64_t)safari_prefersHalfHeightSheetPresentationWithLoweredBar;
@end

@implementation UINavigationController(MobileSafariFrameworkExtras)

- (uint64_t)safari_prefersHalfHeightSheetPresentationWithLoweredBar
{
  v1 = [a1 viewControllers];
  v2 = [v1 firstObject];
  v3 = [v2 safari_prefersHalfHeightSheetPresentationWithLoweredBar];

  return v3;
}

@end