@interface GKDashboardInviteFriendButtonCollectionViewCell
+ (CGSize)sizeWithFitting:(CGSize)fitting in:(id)in;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)updateTextColorWith:(id)with;
@end

@implementation GKDashboardInviteFriendButtonCollectionViewCell

+ (CGSize)sizeWithFitting:(CGSize)fitting in:(id)in
{
  static GKDashboardInviteFriendButtonCollectionViewCell.size(fitting:in:)();
  v5 = 200.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_24E221614();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E2216C8();
}

- (void)updateTextColorWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_24E221918(withCopy);
}

@end