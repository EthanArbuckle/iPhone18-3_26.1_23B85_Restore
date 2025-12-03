@interface OBSetupAssistantAppearanceController
- (void)_scrollViewDidLayoutSubviews:(id)subviews;
@end

@implementation OBSetupAssistantAppearanceController

- (void)_scrollViewDidLayoutSubviews:(id)subviews
{
  v4.receiver = self;
  v4.super_class = OBSetupAssistantAppearanceController;
  [(OBWelcomeController *)&v4 _scrollViewDidLayoutSubviews:subviews];
  [(OBSetupAssistantAppearanceController *)self updateContentViewForScrollViewLayoutChange];
}

@end