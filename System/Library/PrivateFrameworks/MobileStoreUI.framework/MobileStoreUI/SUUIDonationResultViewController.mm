@interface SUUIDonationResultViewController
- (SUUIDonationResultViewController)initWithCharity:(id)charity configuration:(id)configuration;
- (void)_doneButtonAction:(id)action;
- (void)donationConfigurationController:(id)controller didLoadLogoForCharity:(id)charity;
- (void)loadView;
@end

@implementation SUUIDonationResultViewController

- (SUUIDonationResultViewController)initWithCharity:(id)charity configuration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SUUIDonationResultViewController;
  v7 = [(SUUIDonationStepViewController *)&v12 initWithCharity:charity configuration:configurationCopy];
  if (v7)
  {
    [configurationCopy addObserver:v7];
    clientContext = [configurationCopy clientContext];
    v9 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_CONFIRM_TITLE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"DONATION_CONFIRM_TITLE" inBundles:0];
    }
    v10 = ;
    [(SUUIDonationResultViewController *)v7 setTitle:v10];
  }

  return v7;
}

- (void)loadView
{
  donationConfiguration = [(SUUIDonationStepViewController *)self donationConfiguration];
  clientContext = [donationConfiguration clientContext];

  navigationItem = [(SUUIDonationResultViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__doneButtonAction_];
  [v5 setStyle:2];
  [v5 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"DONATION_CONFIRM_DONE"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"DONATION_CONFIRM_DONE" inBundles:0];
  }
  v6 = ;
  [v5 setTitle:v6];

  [navigationItem setRightBarButtonItem:v5];
  resultView = self->_resultView;
  if (!resultView)
  {
    v8 = objc_alloc_init(SUUIDonationResultView);
    v9 = self->_resultView;
    self->_resultView = v8;

    v10 = self->_resultView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUIDonationResultView *)v10 setBackgroundColor:systemBackgroundColor];

    v12 = self->_resultView;
    donationConfiguration2 = [(SUUIDonationStepViewController *)self donationConfiguration];
    charity = [(SUUIDonationStepViewController *)self charity];
    v15 = [donationConfiguration2 logoImageForCharity:charity];
    [(SUUIDonationResultView *)v12 setImage:v15];

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_CONFIRM_MESSAGE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"DONATION_CONFIRM_MESSAGE" inBundles:0];
    }
    v16 = ;
    v17 = self->_resultView;
    v18 = MEMORY[0x277CCACA8];
    displayLabel = [(SUUIGiftAmount *)self->_donationAmount displayLabel];
    v20 = [v18 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, displayLabel];
    [(SUUIDonationResultView *)v17 setMessage:v20];

    v21 = self->_resultView;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_CONFIRM_THANKS"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"DONATION_CONFIRM_THANKS" inBundles:0];
    }
    v22 = ;
    [(SUUIDonationResultView *)v21 setTitle:v22];

    resultView = self->_resultView;
  }

  [(SUUIDonationResultViewController *)self setView:resultView];
}

- (void)donationConfigurationController:(id)controller didLoadLogoForCharity:(id)charity
{
  controllerCopy = controller;
  charityCopy = charity;
  charity = [(SUUIDonationStepViewController *)self charity];

  if (charity == charityCopy)
  {
    resultView = self->_resultView;
    v9 = [controllerCopy logoImageForCharity:charityCopy];
    [(SUUIDonationResultView *)resultView setImage:v9];
  }
}

- (void)_doneButtonAction:(id)action
{
  selfCopy = [(SUUIDonationStepViewController *)self donationViewController];
  v5 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy dismissViewControllerAnimated:1 completion:0];
}

@end