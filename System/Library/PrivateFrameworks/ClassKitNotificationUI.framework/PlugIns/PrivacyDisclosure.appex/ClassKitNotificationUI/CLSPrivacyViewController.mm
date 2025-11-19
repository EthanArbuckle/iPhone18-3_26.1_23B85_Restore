@interface CLSPrivacyViewController
- (void)dismiss;
@end

@implementation CLSPrivacyViewController

- (void)dismiss
{
  v2 = [(CLSPrivacyViewController *)self _remoteViewControllerProxy];
  [v2 dismissViewControllerAnimated:1 completion:&stru_100004138];
}

@end