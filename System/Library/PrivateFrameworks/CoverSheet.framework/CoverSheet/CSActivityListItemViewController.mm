@interface CSActivityListItemViewController
- (CSActivityListItemViewController)initWithDescriptor:(id)a3;
- (void)_invalidateRestrictsTouchesAssertion;
- (void)notificationListSupplementaryViewPresentableContentWillBecomeVisible:(BOOL)a3;
- (void)setListAppeared:(BOOL)a3;
- (void)setRestrictsTouchesOnHostedScene:(BOOL)a3;
- (void)setScreenOn:(BOOL)a3;
@end

@implementation CSActivityListItemViewController

- (CSActivityListItemViewController)initWithDescriptor:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSActivityListItemViewController;
  return [(CSActivityViewController *)&v4 initWithDescriptor:a3 sceneType:0];
}

- (void)setScreenOn:(BOOL)a3
{
  if (self->_screenOn != a3)
  {
    self->_screenOn = a3;
    v5 = NSStringFromSelector(a2);
    [(CSActivityViewController *)self reevaluatePresentationModeForReason:v5];
  }
}

- (void)setListAppeared:(BOOL)a3
{
  if (self->_listAppeared != a3)
  {
    self->_listAppeared = a3;
    v5 = NSStringFromSelector(a2);
    [(CSActivityViewController *)self reevaluatePresentationModeForReason:v5];
    [(CSActivityViewController *)self reevaluateAudioCategoriesDisablingVolumeHUDForReason:v5];
  }
}

- (void)setRestrictsTouchesOnHostedScene:(BOOL)a3
{
  if (a3)
  {
    if (!self->_restrictsTouchesAssertion)
    {
      v6 = [(CSActivityViewController *)self hostViewController];
      v4 = [v6 cancelTouchesForCurrentEventInHostedContent];
      restrictsTouchesAssertion = self->_restrictsTouchesAssertion;
      self->_restrictsTouchesAssertion = v4;
    }
  }

  else
  {

    [(CSActivityListItemViewController *)self _invalidateRestrictsTouchesAssertion];
  }
}

- (void)notificationListSupplementaryViewPresentableContentWillBecomeVisible:(BOOL)a3
{
  v3 = a3;
  self->_isContentVisible = a3;
  v6 = [(CSActivityViewController *)self hostViewController];
  [v6 setVisibility:v3];

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