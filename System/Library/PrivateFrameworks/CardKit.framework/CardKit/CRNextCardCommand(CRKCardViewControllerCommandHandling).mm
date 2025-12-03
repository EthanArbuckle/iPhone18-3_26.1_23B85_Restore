@interface CRNextCardCommand(CRKCardViewControllerCommandHandling)
- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling;
@end

@implementation CRNextCardCommand(CRKCardViewControllerCommandHandling)

- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling
{
  v4 = a3;
  cardViewControllerDelegate = [v4 cardViewControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CF9400]);
    card = [v4 card];
    nextCard = [self nextCard];
    [v7 setBaseCard:card];
    [v7 setRequestedCard:nextCard];
    cardViewControllerDelegate2 = [v4 cardViewControllerDelegate];
    [cardViewControllerDelegate2 controllerForCard:card didRequestAsyncCard:nextCard withAsyncCardRequestFeedback:v7];
  }

  v15.receiver = self;
  v15.super_class = &off_285614120;
  v11 = objc_msgSendSuper2(&v15, sel_handleForCardViewController_, v4);
  cardViewControllerDelegate3 = [v4 cardViewControllerDelegate];
  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v13 = [cardViewControllerDelegate3 performNextCardCommand:self forCardViewController:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end