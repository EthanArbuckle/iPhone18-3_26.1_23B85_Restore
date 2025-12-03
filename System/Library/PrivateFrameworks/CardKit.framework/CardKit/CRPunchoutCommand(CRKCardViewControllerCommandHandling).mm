@interface CRPunchoutCommand(CRKCardViewControllerCommandHandling)
- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling;
@end

@implementation CRPunchoutCommand(CRKCardViewControllerCommandHandling)

- (uint64_t)handleForCardViewController:()CRKCardViewControllerCommandHandling
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = &off_28560DF80;
  v5 = objc_msgSendSuper2(&v9, sel_handleForCardViewController_, v4);
  cardViewControllerDelegate = [v4 cardViewControllerDelegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [cardViewControllerDelegate performPunchoutCommand:self forCardViewController:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end