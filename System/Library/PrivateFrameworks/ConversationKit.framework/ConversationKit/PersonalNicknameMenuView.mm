@interface PersonalNicknameMenuView
- (void)didTapWithSender:(id)sender;
@end

@implementation PersonalNicknameMenuView

- (void)didTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  PersonalNicknameMenuView.didTap(sender:)(selfCopy);
}

@end