@interface PlayerProfilePresenter
- (BOOL)isSignedIn;
- (BOOL)wantsHiddenNavigationBar;
- (BOOL)wantsHiddenTitle;
- (NSArray)additionalRightBarButtonItems;
- (NSString)title;
- (_TtC12GameCenterUI17NicknamePresenter)nicknamePresenter;
- (_TtC12GameCenterUI22PlayerProfilePresenter)initWithPlayerId:(id)a3;
- (id)contextMenuAction;
- (void)addFriends;
- (void)didSignOut;
- (void)loadMoreActivityFeedWithContinuationToken:(id)a3;
- (void)profileSettings;
- (void)setAllowsNearByMultiplayerInvites:(BOOL)a3;
- (void)setDisplayInSplitView:(BOOL)a3;
- (void)setNicknamePresenter:(id)a3;
- (void)showAvatarEditor;
- (void)showRecentlyPlayedWithFriends;
- (void)signIntoGameCenter;
- (void)updateSnapshot;
@end

@implementation PlayerProfilePresenter

- (BOOL)wantsHiddenNavigationBar
{
  v2 = self;
  v3 = sub_24E2461D4();

  return v3 & 1;
}

- (BOOL)wantsHiddenTitle
{
  v2 = self;
  v3 = sub_24E246318();

  return v3 & 1;
}

- (NSString)title
{
  v2 = self;
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
  v2 = self;
  v3 = sub_24E2465D8();

  return v3 & 1;
}

- (_TtC12GameCenterUI17NicknamePresenter)nicknamePresenter
{
  v2 = sub_24E24759C();

  return v2;
}

- (void)setNicknamePresenter:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E247628(a3);
}

- (void)setDisplayInSplitView:(BOOL)a3
{
  v4 = self;
  sub_24E247E68(a3);
}

- (id)contextMenuAction
{
  v2 = self;
  sub_24E247E7C();

  sub_24DF88A8C(0, &qword_27F1DFB08);
  v3 = sub_24E347EE8();

  return v3;
}

- (NSArray)additionalRightBarButtonItems
{
  v2 = self;
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
  v2 = self;
  sub_24E249CA8();
}

- (void)showRecentlyPlayedWithFriends
{
  v2 = self;
  sub_24E24B0B4();
}

- (void)profileSettings
{
  v2 = self;
  sub_24E24B488();
}

- (void)updateSnapshot
{
  v2 = self;
  sub_24E24DFFC();
}

- (void)setAllowsNearByMultiplayerInvites:(BOOL)a3
{
  v4 = self;
  sub_24E24E7F4(a3);
}

- (void)signIntoGameCenter
{
  v2 = self;
  sub_24E24EAA8();
}

- (void)showAvatarEditor
{
  v2 = self;
  sub_24E24EF2C();
}

- (void)didSignOut
{
  v2 = self;
  sub_24E24F074();
}

- (void)loadMoreActivityFeedWithContinuationToken:(id)a3
{
  sub_24E347CF8();
  v4 = self;
  sub_24E24F26C();
}

- (_TtC12GameCenterUI22PlayerProfilePresenter)initWithPlayerId:(id)a3
{
  if (a3)
  {
    sub_24E347CF8();
  }

  sub_24E24F348();
}

@end