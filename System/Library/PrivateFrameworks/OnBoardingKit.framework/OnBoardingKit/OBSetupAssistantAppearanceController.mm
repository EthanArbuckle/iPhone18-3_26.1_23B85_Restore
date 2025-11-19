@interface OBSetupAssistantAppearanceController
- (void)_scrollViewDidLayoutSubviews:(id)a3;
@end

@implementation OBSetupAssistantAppearanceController

- (void)_scrollViewDidLayoutSubviews:(id)a3
{
  v4.receiver = self;
  v4.super_class = OBSetupAssistantAppearanceController;
  [(OBWelcomeController *)&v4 _scrollViewDidLayoutSubviews:a3];
  [(OBSetupAssistantAppearanceController *)self updateContentViewForScrollViewLayoutChange];
}

@end