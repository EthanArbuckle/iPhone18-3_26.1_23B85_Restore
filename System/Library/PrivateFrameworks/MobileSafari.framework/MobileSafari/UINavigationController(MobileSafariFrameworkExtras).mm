@interface UINavigationController(MobileSafariFrameworkExtras)
- (uint64_t)safari_prefersHalfHeightSheetPresentationWithLoweredBar;
@end

@implementation UINavigationController(MobileSafariFrameworkExtras)

- (uint64_t)safari_prefersHalfHeightSheetPresentationWithLoweredBar
{
  viewControllers = [self viewControllers];
  firstObject = [viewControllers firstObject];
  safari_prefersHalfHeightSheetPresentationWithLoweredBar = [firstObject safari_prefersHalfHeightSheetPresentationWithLoweredBar];

  return safari_prefersHalfHeightSheetPresentationWithLoweredBar;
}

@end