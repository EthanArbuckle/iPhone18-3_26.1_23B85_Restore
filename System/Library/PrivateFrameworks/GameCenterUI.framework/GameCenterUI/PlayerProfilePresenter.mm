@interface PlayerProfilePresenter
- (BOOL)isSignedIn;
- (BOOL)wantsHiddenNavigationBar;
- (BOOL)wantsHiddenTitle;
- (NSArray)additionalRightBarButtonItems;
- (NSString)title;
- (_TtC12GameCenterUI17NicknamePresenter)nicknamePresenter;
- (_TtC12GameCenterUI22PlayerProfilePresenter)initWithPlayerId:(id)id;
- (id)contextMenuAction;
- (void)addFriends;
- (void)didSignOut;
- (void)loadMoreActivityFeedWithContinuationToken:(id)token;
- (void)profileSettings;
- (void)setAllowsNearByMultiplayerInvites:(BOOL)invites;
- (void)setDisplayInSplitView:(BOOL)view;
- (void)setNicknamePresenter:(id)presenter;
- (void)showAvatarEditor;
- (void)showRecentlyPlayedWithFriends;
- (void)signIntoGameCenter;
- (void)updateSnapshot;
@end

@implementation PlayerProfilePresenter

- (BOOL)wantsHiddenNavigationBar
{
  selfCopy = self;
  v3 = sub_24E2461D4();

  return v3 & 1;
}

- (BOOL)wantsHiddenTitle
{
  selfCopy = self;
  v3 = sub_24E246318();

  return v3 & 1;
}

- (NSString)title
{
  selfCopy = self;
  sub_24E246394();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSignedIn
{
  selfCopy = self;
  v3 = sub_24E2465D8();

  return v3 & 1;
}

- (_TtC12GameCenterUI17NicknamePresenter)nicknamePresenter
{
  v2 = sub_24E24759C();

  return v2;
}

- (void)setNicknamePresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_24E247628(presenter);
}

- (void)setDisplayInSplitView:(BOOL)view
{
  selfCopy = self;
  sub_24E247E68(view);
}

- (id)contextMenuAction
{
  selfCopy = self;
  sub_24E247E7C();

  sub_24DF88A8C(0, &qword_27F1DFB08);
  v3 = sub_24E347EE8();

  return v3;
}

- (NSArray)additionalRightBarButtonItems
{
  selfCopy = self;
  v3 = sub_24E248800();

  if (v3)
  {
    sub_24DF88A8C(0, &unk_27F1E21B0);
    v4 = sub_24E347EE8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addFriends
{
  selfCopy = self;
  sub_24E249CA8();
}

- (void)showRecentlyPlayedWithFriends
{
  selfCopy = self;
  sub_24E24B0B4();
}

- (void)profileSettings
{
  selfCopy = self;
  sub_24E24B488();
}

- (void)updateSnapshot
{
  selfCopy = self;
  sub_24E24DFFC();
}

- (void)setAllowsNearByMultiplayerInvites:(BOOL)invites
{
  selfCopy = self;
  sub_24E24E7F4(invites);
}

- (void)signIntoGameCenter
{
  selfCopy = self;
  sub_24E24EAA8();
}

- (void)showAvatarEditor
{
  selfCopy = self;
  sub_24E24EF2C();
}

- (void)didSignOut
{
  selfCopy = self;
  sub_24E24F074();
}

- (void)loadMoreActivityFeedWithContinuationToken:(id)token
{
  sub_24E347CF8();
  selfCopy = self;
  sub_24E24F26C();
}

- (_TtC12GameCenterUI22PlayerProfilePresenter)initWithPlayerId:(id)id
{
  if (id)
  {
    sub_24E347CF8();
  }

  sub_24E24F348();
}

@end