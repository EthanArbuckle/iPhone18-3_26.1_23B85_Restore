@interface SUUIDonationStepViewController
- (SUUIDonationStepViewController)initWithCharity:(id)a3 configuration:(id)a4;
- (SUUIDonationViewController)donationViewController;
@end

@implementation SUUIDonationStepViewController

- (SUUIDonationStepViewController)initWithCharity:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUUIDonationStepViewController;
  v9 = [(SUUIDonationStepViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_charity, a3);
    objc_storeStrong(&v10->_configuration, a4);
  }

  return v10;
}

- (SUUIDonationViewController)donationViewController
{
  v2 = [(SUUIDonationStepViewController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end