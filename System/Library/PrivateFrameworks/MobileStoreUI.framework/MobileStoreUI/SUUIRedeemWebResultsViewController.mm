@interface SUUIRedeemWebResultsViewController
+ (BOOL)canShowResultsForRedeem:(id)redeem;
- (void)dealloc;
- (void)storePage:(id)page finishedWithSuccess:(BOOL)success;
- (void)viewDidLoad;
@end

@implementation SUUIRedeemWebResultsViewController

+ (BOOL)canShowResultsForRedeem:(id)redeem
{
  customizedThankyouURL = [redeem customizedThankyouURL];

  return customizedThankyouURL != 0;
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = SUUIRedeemWebResultsViewController;
  [(SUUIRedeemResultsViewController *)&v20 viewDidLoad];
  redeem = [(SUUIRedeemResultsViewController *)self redeem];
  customizedThankyouURL = [redeem customizedThankyouURL];

  clientContext = [(SUUIRedeemStepViewController *)self clientContext];
  clientInterface = [clientContext clientInterface];

  v7 = [objc_alloc(MEMORY[0x277D7FD90]) initWithExternalAccountURL:customizedThankyouURL];
  [v7 setCanMoveToOverlay:0];
  [v7 setClientInterface:clientInterface];
  [(SUUIRedeemWebResultsViewController *)self addChildViewController:v7];
  view = [(SUUIRedeemWebResultsViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view2 = [v7 view];
  [view2 setFrame:{v10, v12, v14, v16}];

  view3 = [(SUUIRedeemWebResultsViewController *)self view];
  view4 = [v7 view];
  [view3 addSubview:view4];

  [v7 didMoveToParentViewController:self];
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  childViewControllers = [(SUUIRedeemWebResultsViewController *)self childViewControllers];
  v4 = [childViewControllers copy];

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
        view = [v10 view];
        [view removeFromSuperview];

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

- (void)storePage:(id)page finishedWithSuccess:(BOOL)success
{
  if (!success)
  {
    v6 = [SUUIRedeemNativeResultsViewController alloc];
    redeem = [(SUUIRedeemResultsViewController *)self redeem];
    v12 = [(SUUIRedeemNativeResultsViewController *)v6 initWithRedeem:redeem];

    clientContext = [(SUUIRedeemStepViewController *)self clientContext];
    [(SUUIRedeemStepViewController *)v12 setClientContext:clientContext];

    [(SUUIRedeemResultsViewController *)v12 setRedeemCategory:[(SUUIRedeemResultsViewController *)self redeemCategory]];
    operationQueue = [(SUUIRedeemStepViewController *)self operationQueue];
    [(SUUIRedeemNativeResultsViewController *)v12 setOperationQueue:operationQueue];

    configuration = [(SUUIRedeemStepViewController *)self configuration];
    [(SUUIRedeemStepViewController *)v12 setConfiguration:configuration];

    navigationController = [(SUUIRedeemWebResultsViewController *)self navigationController];
    [navigationController pushViewController:v12 animated:1];
  }
}

@end