@interface SUUIDonationStepViewController
- (SUUIDonationStepViewController)initWithCharity:(id)charity configuration:(id)configuration;
- (SUUIDonationViewController)donationViewController;
@end

@implementation SUUIDonationStepViewController

- (SUUIDonationStepViewController)initWithCharity:(id)charity configuration:(id)configuration
{
  charityCopy = charity;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SUUIDonationStepViewController;
  v9 = [(SUUIDonationStepViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_charity, charity);
    objc_storeStrong(&v10->_configuration, configuration);
  }

  return v10;
}

- (SUUIDonationViewController)donationViewController
{
  navigationController = [(SUUIDonationStepViewController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = navigationController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end