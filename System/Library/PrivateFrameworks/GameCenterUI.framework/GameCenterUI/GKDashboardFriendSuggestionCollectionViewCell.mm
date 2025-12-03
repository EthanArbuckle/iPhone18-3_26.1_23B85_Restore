@interface GKDashboardFriendSuggestionCollectionViewCell
+ (CGSize)sizeWithFitting:(CGSize)fitting in:(id)in;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)tapHandler;
- (void)applyWithSuggestedFriend:(id)friend previouslyInvited:(BOOL)invited;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setInviteButtonTitleColor:(id)color;
- (void)setTapHandler:(id)handler;
@end

@implementation GKDashboardFriendSuggestionCollectionViewCell

+ (CGSize)sizeWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  v5 = static GKDashboardFriendSuggestionCollectionViewCell.size(fitting:in:)(in);
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
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

- (void)setTapHandler:(id)handler
{
  v4 = _Block_copy(handler);
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

  selfCopy = self;
  sub_24DFE8CCC(v4, v5);
}

- (void)applyWithSuggestedFriend:(id)friend previouslyInvited:(BOOL)invited
{
  invitedCopy = invited;
  friendCopy = friend;
  selfCopy = self;
  sub_24DFE8E7C(friend, invitedCopy);
}

- (void)setInviteButtonTitleColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_24DFE948C(colorCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24DFE9534();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24DFE96FC();
}

@end