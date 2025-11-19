@interface SUUIDonationResultViewController
- (SUUIDonationResultViewController)initWithCharity:(id)a3 configuration:(id)a4;
- (void)_doneButtonAction:(id)a3;
- (void)donationConfigurationController:(id)a3 didLoadLogoForCharity:(id)a4;
- (void)loadView;
@end

@implementation SUUIDonationResultViewController

- (SUUIDonationResultViewController)initWithCharity:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SUUIDonationResultViewController;
  v7 = [(SUUIDonationStepViewController *)&v12 initWithCharity:a3 configuration:v6];
  if (v7)
  {
    [v6 addObserver:v7];
    v8 = [v6 clientContext];
    v9 = v8;
    if (v8)
    {
      [v8 localizedStringForKey:@"DONATION_CONFIRM_TITLE"];
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
  v3 = [(SUUIDonationStepViewController *)self donationConfiguration];
  v23 = [v3 clientContext];

  v4 = [(SUUIDonationResultViewController *)self navigationItem];
  [v4 setHidesBackButton:1];
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__doneButtonAction_];
  [v5 setStyle:2];
  [v5 setTarget:self];
  if (v23)
  {
    [v23 localizedStringForKey:@"DONATION_CONFIRM_DONE"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"DONATION_CONFIRM_DONE" inBundles:0];
  }
  v6 = ;
  [v5 setTitle:v6];

  [v4 setRightBarButtonItem:v5];
  resultView = self->_resultView;
  if (!resultView)
  {
    v8 = objc_alloc_init(SUUIDonationResultView);
    v9 = self->_resultView;
    self->_resultView = v8;

    v10 = self->_resultView;
    v11 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUIDonationResultView *)v10 setBackgroundColor:v11];

    v12 = self->_resultView;
    v13 = [(SUUIDonationStepViewController *)self donationConfiguration];
    v14 = [(SUUIDonationStepViewController *)self charity];
    v15 = [v13 logoImageForCharity:v14];
    [(SUUIDonationResultView *)v12 setImage:v15];

    if (v23)
    {
      [v23 localizedStringForKey:@"DONATION_CONFIRM_MESSAGE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"DONATION_CONFIRM_MESSAGE" inBundles:0];
    }
    v16 = ;
    v17 = self->_resultView;
    v18 = MEMORY[0x277CCACA8];
    v19 = [(SUUIGiftAmount *)self->_donationAmount displayLabel];
    v20 = [v18 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v19];
    [(SUUIDonationResultView *)v17 setMessage:v20];

    v21 = self->_resultView;
    if (v23)
    {
      [v23 localizedStringForKey:@"DONATION_CONFIRM_THANKS"];
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

- (void)donationConfigurationController:(id)a3 didLoadLogoForCharity:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SUUIDonationStepViewController *)self charity];

  if (v7 == v6)
  {
    resultView = self->_resultView;
    v9 = [v10 logoImageForCharity:v6];
    [(SUUIDonationResultView *)resultView setImage:v9];
  }
}

- (void)_doneButtonAction:(id)a3
{
  v4 = [(SUUIDonationStepViewController *)self donationViewController];
  v5 = v4;
  if (!v4)
  {
    v4 = self;
  }

  [v4 dismissViewControllerAnimated:1 completion:0];
}

@end