@interface MultiplayerModeSelectionViewController
+ (id)viewControllerWithRequest:(id)request game:(id)game multiplayerViewController:(id)controller dismissHandler:(id)handler;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSArray)preferredFocusEnvironments;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)contentScrollView;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didEnterBackgroundWithNotif:(id)notif;
- (void)donePressed:(id)pressed;
- (void)launchSharePlayChiclet;
- (void)setCollectionView:(id)view;
- (void)setIsEligibleForGroupSession:(BOOL)session;
- (void)setIsEntitledToUseGroupActivities:(BOOL)activities;
- (void)setOriginalMatchmakingMode:(int64_t)mode;
- (void)showLobbyWithOriginalRequest;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willEnterForegroundWithNotif:(id)notif;
@end

@implementation MultiplayerModeSelectionViewController

- (void)setOriginalMatchmakingMode:(int64_t)mode
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.originalMatchmakingMode.setter(mode);
}

- (void)setIsEligibleForGroupSession:(BOOL)session
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.isEligibleForGroupSession.setter(session);
}

- (void)setIsEntitledToUseGroupActivities:(BOOL)activities
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.isEntitledToUseGroupActivities.setter(activities);
}

- (void)launchSharePlayChiclet
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.launchSharePlayChiclet()();
}

- (void)showLobbyWithOriginalRequest
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.showLobbyWithOriginalRequest()();
}

- (id)contentScrollView
{
  v0 = _s29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewControllerC013contentScrollH0So08UIScrollH0CSgyF_0();

  return v0;
}

- (void)setCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_10000E52C(view);
}

- (void)viewDidLoad
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.viewDidDisappear(_:)(disappear);
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.preferredFocusEnvironments.getter();

  sub_100005BC4(&qword_100028BB8);
  v3.super.isa = sub_100014308().super.isa;

  return v3.super.isa;
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.viewSafeAreaInsetsDidChange()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  MultiplayerModeSelectionViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  MultiplayerModeSelectionViewController.viewWillLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  MultiplayerModeSelectionViewController.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)donePressed:(id)pressed
{
  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100014438();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10000FE2C();

  sub_100013B48(v6, &qword_100028D28);
}

+ (id)viewControllerWithRequest:(id)request game:(id)game multiplayerViewController:(id)controller dismissHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_100013B38;
  }

  else
  {
    v10 = 0;
  }

  swift_getObjCClassMetadata();
  requestCopy = request;
  gameCopy = game;
  controllerCopy = controller;
  v14 = static MultiplayerModeSelectionViewController.viewController(request:game:multiplayerViewController:dismissHandler:)(requestCopy, gameCopy, controllerCopy, v9, v10);
  sub_10000D204(v9);

  return v14;
}

- (void)didEnterBackgroundWithNotif:(id)notif
{
  notifCopy = notif;
  selfCopy = self;
  sub_100010FE0();
}

- (void)willEnterForegroundWithNotif:(id)notif
{
  notifCopy = notif;
  selfCopy = self;
  sub_100011064();
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  v5 = sub_100005BC4(&qword_100028D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  viewCopy = view;
  selfCopy = self;
  MultiplayerModeSelectionViewController.indexPathForPreferredFocusedView(in:)(v7);

  v10 = sub_1000141B8();
  isa = 0;
  if (sub_100013AD8(v7, 1, v10) != 1)
  {
    isa = sub_100014178().super.isa;
    (*(*(v10 - 8) + 8))(v7, v10);
  }

  return isa;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1000141B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014188();
  viewCopy = view;
  selfCopy = self;
  v12 = MultiplayerModeSelectionViewController.collectionView(_:cellForItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1000141B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014188();
  viewCopy = view;
  selfCopy = self;
  MultiplayerModeSelectionViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_1000141B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014188();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  MultiplayerModeSelectionViewController.collectionView(_:layout:sizeForItemAt:)(viewCopy);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v10 = MultiplayerModeSelectionViewController.collectionView(_:layout:minimumLineSpacingForSectionAt:)();

  return v10;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  MultiplayerModeSelectionViewController.collectionView(_:layout:insetForSectionAt:)(viewCopy, layoutCopy, index);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

@end