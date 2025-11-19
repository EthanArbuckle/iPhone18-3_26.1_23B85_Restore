@interface UIFocusItemContainerAddChildItemsInContextWithOptions
@end

@implementation UIFocusItemContainerAddChildItemsInContextWithOptions

_UIFocusRegionContainerProxy *___UIFocusItemContainerAddChildItemsInContextWithOptions_block_invoke(uint64_t a1)
{
  v1 = [[_UIFocusRegionContainerProxy alloc] initWithEnvironmentContainer:*(a1 + 32)];
  [(_UIFocusRegionContainerProxy *)v1 setShouldCreateRegionForOwningItem:0];
  [(_UIFocusRegionContainerProxy *)v1 setShouldCreateRegionForGuideBehavior:0];
  [(_UIFocusRegionContainerProxy *)v1 setAllowsLazyLoading:0];

  return v1;
}

@end