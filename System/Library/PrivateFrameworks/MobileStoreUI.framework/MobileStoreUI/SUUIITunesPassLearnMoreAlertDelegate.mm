@interface SUUIITunesPassLearnMoreAlertDelegate
+ (BOOL)shouldShowAlertForRedeem:(id)redeem configuration:(id)configuration;
+ (void)beginThrottleInterval;
- (SUUIITunesPassLearnMoreAlertDelegate)initWithRedeemConfiguration:(id)configuration clientContext:(id)context;
- (UIViewController)presentingViewController;
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)show;
@end

@implementation SUUIITunesPassLearnMoreAlertDelegate

- (SUUIITunesPassLearnMoreAlertDelegate)initWithRedeemConfiguration:(id)configuration clientContext:(id)context
{
  configurationCopy = configuration;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SUUIITunesPassLearnMoreAlertDelegate;
  v9 = [(SUUIITunesPassLearnMoreAlertDelegate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_redeemConfiguration, configuration);
  }

  return v10;
}

+ (void)beginThrottleInterval
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setDouble:@"SUUILastITunesPassLearnMoreAlertTime" forKey:CFAbsoluteTimeGetCurrent()];
  [standardUserDefaults synchronize];
}

+ (BOOL)shouldShowAlertForRedeem:(id)redeem configuration:(id)configuration
{
  redeemCopy = redeem;
  iTunesPassConfiguration = [configuration ITunesPassConfiguration];
  learnMoreAlertView = [iTunesPassConfiguration learnMoreAlertView];

  [redeemCopy ITunesPassLearnMoreAlertInterval];
  v9 = v8;

  if (v9 >= 0.0)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [standardUserDefaults objectForKey:@"SUUILastITunesPassLearnMoreAlertTime"];

    if (objc_opt_respondsToSelector())
    {
      v13 = MEMORY[0x277CBEAA8];
      [v12 doubleValue];
      v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
      [v14 timeIntervalSinceNow];
      if (v15 > -v9)
      {

        learnMoreAlertView = 0;
      }
    }

    v10 = learnMoreAlertView != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)show
{
  iTunesPassConfiguration = [(SUUIRedeemConfiguration *)self->_redeemConfiguration ITunesPassConfiguration];
  object = [iTunesPassConfiguration learnMoreAlertView];

  [object setDelegate:self];
  objc_setAssociatedObject(object, "com.apple.iTunesStoreUI.SUUIITunesPassLearnMoreAlertDelegate", self, 1);
  [object show];
  [objc_opt_class() beginThrottleInterval];
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  object = view;
  if ([object cancelButtonIndex] != index)
  {
    presentingViewController = [(SUUIITunesPassLearnMoreAlertDelegate *)self presentingViewController];
    if (presentingViewController)
    {
      v7 = objc_alloc_init(SUUIRedeemITunesPassLearnMoreViewController);
      [(SUUIRedeemStepViewController *)v7 setClientContext:self->_clientContext];
      [(SUUIRedeemStepViewController *)v7 setConfiguration:self->_redeemConfiguration];
      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v7];
      [presentingViewController presentViewController:v8 animated:1 completion:0];
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