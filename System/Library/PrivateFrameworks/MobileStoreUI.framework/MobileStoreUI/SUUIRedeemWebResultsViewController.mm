@interface SUUIRedeemWebResultsViewController
+ (BOOL)canShowResultsForRedeem:(id)a3;
- (void)dealloc;
- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4;
- (void)viewDidLoad;
@end

@implementation SUUIRedeemWebResultsViewController

+ (BOOL)canShowResultsForRedeem:(id)a3
{
  v3 = [a3 customizedThankyouURL];

  return v3 != 0;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = SUUIRedeemWebResultsViewController;
  [(SUUIRedeemResultsViewController *)&v20 viewDidLoad];
  v3 = [(SUUIRedeemResultsViewController *)self redeem];
  v4 = [v3 customizedThankyouURL];

  v5 = [(SUUIRedeemStepViewController *)self clientContext];
  v6 = [v5 clientInterface];

  v7 = [objc_alloc(MEMORY[0x277D7FD90]) initWithExternalAccountURL:v4];
  [v7 setCanMoveToOverlay:0];
  [v7 setClientInterface:v6];
  [(SUUIRedeemWebResultsViewController *)self addChildViewController:v7];
  v8 = [(SUUIRedeemWebResultsViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v7 view];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [(SUUIRedeemWebResultsViewController *)self view];
  v19 = [v7 view];
  [v18 addSubview:v19];

  [v7 didMoveToParentViewController:self];
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SUUIRedeemWebResultsViewController *)self childViewControllers];
  v4 = [v3 copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 willMoveToParentViewController:0];
        v11 = [v10 view];
        [v11 removeFromSuperview];

        [v10 removeFromParentViewController];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12.receiver = self;
  v12.super_class = SUUIRedeemWebResultsViewController;
  [(SUUIRedeemWebResultsViewController *)&v12 dealloc];
}

- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4
{
  if (!a4)
  {
    v6 = [SUUIRedeemNativeResultsViewController alloc];
    v7 = [(SUUIRedeemResultsViewController *)self redeem];
    v12 = [(SUUIRedeemNativeResultsViewController *)v6 initWithRedeem:v7];

    v8 = [(SUUIRedeemStepViewController *)self clientContext];
    [(SUUIRedeemStepViewController *)v12 setClientContext:v8];

    [(SUUIRedeemResultsViewController *)v12 setRedeemCategory:[(SUUIRedeemResultsViewController *)self redeemCategory]];
    v9 = [(SUUIRedeemStepViewController *)self operationQueue];
    [(SUUIRedeemNativeResultsViewController *)v12 setOperationQueue:v9];

    v10 = [(SUUIRedeemStepViewController *)self configuration];
    [(SUUIRedeemStepViewController *)v12 setConfiguration:v10];

    v11 = [(SUUIRedeemWebResultsViewController *)self navigationController];
    [v11 pushViewController:v12 animated:1];
  }
}

@end