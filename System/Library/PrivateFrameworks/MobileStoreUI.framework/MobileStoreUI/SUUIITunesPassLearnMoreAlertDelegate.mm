@interface SUUIITunesPassLearnMoreAlertDelegate
+ (BOOL)shouldShowAlertForRedeem:(id)a3 configuration:(id)a4;
+ (void)beginThrottleInterval;
- (SUUIITunesPassLearnMoreAlertDelegate)initWithRedeemConfiguration:(id)a3 clientContext:(id)a4;
- (UIViewController)presentingViewController;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)show;
@end

@implementation SUUIITunesPassLearnMoreAlertDelegate

- (SUUIITunesPassLearnMoreAlertDelegate)initWithRedeemConfiguration:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUUIITunesPassLearnMoreAlertDelegate;
  v9 = [(SUUIITunesPassLearnMoreAlertDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_redeemConfiguration, a3);
  }

  return v10;
}

+ (void)beginThrottleInterval
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 setDouble:@"SUUILastITunesPassLearnMoreAlertTime" forKey:CFAbsoluteTimeGetCurrent()];
  [v2 synchronize];
}

+ (BOOL)shouldShowAlertForRedeem:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = [a4 ITunesPassConfiguration];
  v7 = [v6 learnMoreAlertView];

  [v5 ITunesPassLearnMoreAlertInterval];
  v9 = v8;

  if (v9 >= 0.0)
  {
    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [v11 objectForKey:@"SUUILastITunesPassLearnMoreAlertTime"];

    if (objc_opt_respondsToSelector())
    {
      v13 = MEMORY[0x277CBEAA8];
      [v12 doubleValue];
      v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
      [v14 timeIntervalSinceNow];
      if (v15 > -v9)
      {

        v7 = 0;
      }
    }

    v10 = v7 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)show
{
  v3 = [(SUUIRedeemConfiguration *)self->_redeemConfiguration ITunesPassConfiguration];
  object = [v3 learnMoreAlertView];

  [object setDelegate:self];
  objc_setAssociatedObject(object, "com.apple.iTunesStoreUI.SUUIITunesPassLearnMoreAlertDelegate", self, 1);
  [object show];
  [objc_opt_class() beginThrottleInterval];
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  object = a3;
  if ([object cancelButtonIndex] != a4)
  {
    v6 = [(SUUIITunesPassLearnMoreAlertDelegate *)self presentingViewController];
    if (v6)
    {
      v7 = objc_alloc_init(SUUIRedeemITunesPassLearnMoreViewController);
      [(SUUIRedeemStepViewController *)v7 setClientContext:self->_clientContext];
      [(SUUIRedeemStepViewController *)v7 setConfiguration:self->_redeemConfiguration];
      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
      [v6 presentViewController:v8 animated:1 completion:0];
    }
  }

  [object setDelegate:0];
  objc_setAssociatedObject(object, "com.apple.iTunesStoreUI.SUUIITunesPassLearnMoreAlertDelegate", 0, 1);
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end