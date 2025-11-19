@interface CKSendMenuPopoverPresentationConfiguration
- (UIViewController)initialViewController;
@end

@implementation CKSendMenuPopoverPresentationConfiguration

- (UIViewController)initialViewController
{
  sendMenuViewController = self->_sendMenuViewController;
  if (!sendMenuViewController)
  {
    sendMenuViewController = self->_appCardContentViewController;
  }

  return sendMenuViewController;
}

@end