@interface SUUIRedeemResultsViewController
+ (BOOL)canShowResultsForRedeem:(id)a3;
+ (id)redeemResultsControllerForRedeem:(id)a3;
- (SUUIRedeemResultsViewController)initWithRedeem:(id)a3;
- (void)_doneAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation SUUIRedeemResultsViewController

+ (BOOL)canShowResultsForRedeem:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Your view controller class (%@) MUST override %@ to be considered for showing a redeem", v7, v8}];

  return 0;
}

+ (id)redeemResultsControllerForRedeem:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 canShowResultsForRedeem:{v3, v12}])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = [[v9 alloc] initWithRedeem:v3];

  return v10;
}

- (SUUIRedeemResultsViewController)initWithRedeem:(id)a3
{
  v5 = a3;
  if ([(SUUIRedeemResultsViewController *)self isMemberOfClass:objc_opt_class()])
  {
    v6 = [SUUIRedeemResultsViewController redeemResultsControllerForRedeem:v5];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SUUIRedeemResultsViewController;
    v7 = [(SUUIRedeemResultsViewController *)&v11 initWithNibName:0 bundle:0];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_redeem, a3);
    }

    v6 = v8;
    self = v6;
  }

  v9 = v6;

  return v9;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SUUIRedeemResultsViewController;
  [(SUUIRedeemResultsViewController *)&v7 viewDidLoad];
  v3 = [(SUUIRedeemStepViewController *)self clientContext];
  v4 = [(SUUIRedeemResultsViewController *)self navigationItem];
  [v4 setHidesBackButton:1];
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__doneAction_];
  [v5 setTarget:self];
  if (v3)
  {
    [v3 localizedStringForKey:@"REDEEM_SUCCESS_DONE_BUTTON" inTable:@"Redeem"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"REDEEM_SUCCESS_DONE_BUTTON" inBundles:0 inTable:@"Redeem"];
  }
  v6 = ;
  [v5 setTitle:v6];

  [v5 setStyle:2];
  [v4 setRightBarButtonItem:v5];
}

- (void)_doneAction:(id)a3
{
  if ([(SUUIRedeemStepViewController *)self shouldShowPassbookLearnMore]&& ([(SUUIRedeemResultsViewController *)self redeem], v4 = objc_claimAutoreleasedReturnValue(), [(SUUIRedeemStepViewController *)self configuration], v5 = objc_claimAutoreleasedReturnValue(), v6 = [SUUIITunesPassLearnMoreAlertDelegate shouldShowAlertForRedeem:v4 configuration:v5], v5, v4, v6))
  {
    v7 = [SUUIITunesPassLearnMoreAlertDelegate alloc];
    v8 = [(SUUIRedeemStepViewController *)self configuration];
    v9 = [(SUUIRedeemStepViewController *)self clientContext];
    v10 = [(SUUIITunesPassLearnMoreAlertDelegate *)v7 initWithRedeemConfiguration:v8 clientContext:v9];

    v11 = [(SUUIRedeemResultsViewController *)self presentingViewController];
    [(SUUIITunesPassLearnMoreAlertDelegate *)v10 setPresentingViewController:v11];
  }

  else
  {
    v10 = 0;
  }

  v12 = [(SUUIRedeemResultsViewController *)self redeem];
  v13 = [v12 redirectURL];

  v14 = [(SUUIRedeemResultsViewController *)self parentViewController];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = self;
  }

  v17 = v16;

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__SUUIRedeemResultsViewController__doneAction___block_invoke;
  v20[3] = &unk_2798F5AF8;
  v21 = v13;
  v22 = v10;
  v18 = v10;
  v19 = v13;
  [(SUUIRedeemResultsViewController *)v17 dismissViewControllerAnimated:1 completion:v20];
}

void __47__SUUIRedeemResultsViewController__doneAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    SUUIMetricsOpenURL(v2);
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      [v3 show];
    }
  }
}

@end