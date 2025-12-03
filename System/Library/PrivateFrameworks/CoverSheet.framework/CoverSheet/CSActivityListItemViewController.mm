@interface CSActivityListItemViewController
- (CSActivityListItemViewController)initWithDescriptor:(id)descriptor;
- (void)_invalidateRestrictsTouchesAssertion;
- (void)notificationListSupplementaryViewPresentableContentWillBecomeVisible:(BOOL)visible;
- (void)setListAppeared:(BOOL)appeared;
- (void)setRestrictsTouchesOnHostedScene:(BOOL)scene;
- (void)setScreenOn:(BOOL)on;
@end

@implementation CSActivityListItemViewController

- (CSActivityListItemViewController)initWithDescriptor:(id)descriptor
{
  v4.receiver = self;
  v4.super_class = CSActivityListItemViewController;
  return [(CSActivityViewController *)&v4 initWithDescriptor:descriptor sceneType:0];
}

- (void)setScreenOn:(BOOL)on
{
  if (self->_screenOn != on)
  {
    self->_screenOn = on;
    v5 = NSStringFromSelector(a2);
    [(CSActivityViewController *)self reevaluatePresentationModeForReason:v5];
  }
}

- (void)setListAppeared:(BOOL)appeared
{
  if (self->_listAppeared != appeared)
  {
    self->_listAppeared = appeared;
    v5 = NSStringFromSelector(a2);
    [(CSActivityViewController *)self reevaluatePresentationModeForReason:v5];
    [(CSActivityViewController *)self reevaluateAudioCategoriesDisablingVolumeHUDForReason:v5];
  }
}

- (void)setRestrictsTouchesOnHostedScene:(BOOL)scene
{
  if (scene)
  {
    if (!self->_restrictsTouchesAssertion)
    {
      hostViewController = [(CSActivityViewController *)self hostViewController];
      cancelTouchesForCurrentEventInHostedContent = [hostViewController cancelTouchesForCurrentEventInHostedContent];
      restrictsTouchesAssertion = self->_restrictsTouchesAssertion;
      self->_restrictsTouchesAssertion = cancelTouchesForCurrentEventInHostedContent;
    }
  }

  else
  {

    [(CSActivityListItemViewController *)self _invalidateRestrictsTouchesAssertion];
  }
}

- (void)notificationListSupplementaryViewPresentableContentWillBecomeVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->_isContentVisible = visible;
  hostViewController = [(CSActivityViewController *)self hostViewController];
  [hostViewController setVisibility:visibleCopy];

  v7 = NSStringFromSelector(a2);
  [(CSActivityViewController *)self reevaluatePresentationModeForReason:v7];
  [(CSActivityViewController *)self reevaluateAudioCategoriesDisablingVolumeHUDForReason:v7];
}

- (void)_invalidateRestrictsTouchesAssertion
{
  [(BSInvalidatable *)self->_restrictsTouchesAssertion invalidate];
  restrictsTouchesAssertion = self->_restrictsTouchesAssertion;
  self->_restrictsTouchesAssertion = 0;
}

@end