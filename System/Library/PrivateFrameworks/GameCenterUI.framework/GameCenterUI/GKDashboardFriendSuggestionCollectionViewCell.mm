@interface GKDashboardFriendSuggestionCollectionViewCell
+ (CGSize)sizeWithFitting:(CGSize)a3 in:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)tapHandler;
- (void)applyWithSuggestedFriend:(id)a3 previouslyInvited:(BOOL)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setInviteButtonTitleColor:(id)a3;
- (void)setTapHandler:(id)a3;
@end

@implementation GKDashboardFriendSuggestionCollectionViewCell

+ (CGSize)sizeWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v5 = static GKDashboardFriendSuggestionCollectionViewCell.size(fitting:in:)(a4);
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_24DFE8A80();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)tapHandler
{
  v2 = sub_24DFE8BD0();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E0D5E98;
    v6[3] = &block_descriptor_10;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTapHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DF889E4;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_24DFE8CCC(v4, v5);
}

- (void)applyWithSuggestedFriend:(id)a3 previouslyInvited:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = self;
  sub_24DFE8E7C(a3, v4);
}

- (void)setInviteButtonTitleColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFE948C(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24DFE9534();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_24DFE96FC();
}

@end