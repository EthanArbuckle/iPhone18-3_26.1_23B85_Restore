@interface GKDashboardInviteFriendButtonCollectionViewCell
+ (CGSize)sizeWithFitting:(CGSize)a3 in:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)updateTextColorWith:(id)a3;
@end

@implementation GKDashboardInviteFriendButtonCollectionViewCell

+ (CGSize)sizeWithFitting:(CGSize)a3 in:(id)a4
{
  static GKDashboardInviteFriendButtonCollectionViewCell.size(fitting:in:)();
  v5 = 200.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
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
  v2 = self;
  sub_24E2216C8();
}

- (void)updateTextColorWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E221918(v4);
}

@end