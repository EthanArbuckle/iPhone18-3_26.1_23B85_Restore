@interface SFUnifiedTabBarLayoutConfiguration
- (CGPoint)midpointForCenteredContent;
- (CGRect)visibleRectOverride;
- (SFUnifiedTabBarLayoutConfiguration)initWithScrollView:(id)view;
@end

@implementation SFUnifiedTabBarLayoutConfiguration

- (SFUnifiedTabBarLayoutConfiguration)initWithScrollView:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = SFUnifiedTabBarLayoutConfiguration;
  v6 = [(SFUnifiedTabBarLayoutConfiguration *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scrollView, view);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v7->_visibleRectOverride.origin = *MEMORY[0x1E695F050];
    v7->_visibleRectOverride.size = v8;
    preferredWidthForItem = v7->_preferredWidthForItem;
    v7->_preferredWidthForItem = &__block_literal_global_22;

    v10 = v7;
  }

  return v7;
}

- (CGPoint)midpointForCenteredContent
{
  x = self->_midpointForCenteredContent.x;
  y = self->_midpointForCenteredContent.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)visibleRectOverride
{
  x = self->_visibleRectOverride.origin.x;
  y = self->_visibleRectOverride.origin.y;
  width = self->_visibleRectOverride.size.width;
  height = self->_visibleRectOverride.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end