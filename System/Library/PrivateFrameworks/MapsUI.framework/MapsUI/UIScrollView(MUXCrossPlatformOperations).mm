@interface UIScrollView(MUXCrossPlatformOperations)
- (uint64_t)_mapsui_scrollToTopAnimated:()MUXCrossPlatformOperations;
@end

@implementation UIScrollView(MUXCrossPlatformOperations)

- (uint64_t)_mapsui_scrollToTopAnimated:()MUXCrossPlatformOperations
{
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  [a1 adjustedContentInset];
  v8 = v5 - v7;
  [a1 adjustedContentInset];

  return [a1 setContentOffset:a3 animated:{v8, v6 - v9}];
}

@end