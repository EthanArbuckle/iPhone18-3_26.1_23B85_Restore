@interface CLSPrivacyViewController
- (void)dismiss;
@end

@implementation CLSPrivacyViewController

- (void)dismiss
{
  _remoteViewControllerProxy = [(CLSPrivacyViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismissViewControllerAnimated:1 completion:&stru_100004138];
}

@end