@interface CRNextCardCommand(CRKCardViewControllerCommandHandling)
- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling;
@end

@implementation CRNextCardCommand(CRKCardViewControllerCommandHandling)

- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling
{
  v4 = a3;
  v5 = [v4 cardViewControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF9400]);
    v8 = [v4 card];
    v9 = [a1 nextCard];
    [v7 setBaseCard:v8];
    [v7 setRequestedCard:v9];
    v10 = [v4 cardViewControllerDelegate];
    [v10 controllerForCard:v8 didRequestAsyncCard:v9 withAsyncCardRequestFeedback:v7];
  }

  v15.receiver = a1;
  v15.super_class = &off_285614120;
  v11 = objc_msgSendSuper2(&v15, sel_handleForCardViewController_, v4);
  v12 = [v4 cardViewControllerDelegate];
  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [v12 performNextCardCommand:a1 forCardViewController:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end