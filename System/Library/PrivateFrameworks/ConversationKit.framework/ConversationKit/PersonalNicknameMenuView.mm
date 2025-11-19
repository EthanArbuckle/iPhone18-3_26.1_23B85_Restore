@interface PersonalNicknameMenuView
- (void)didTapWithSender:(id)a3;
@end

@implementation PersonalNicknameMenuView

- (void)didTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  PersonalNicknameMenuView.didTap(sender:)(v5);
}

@end