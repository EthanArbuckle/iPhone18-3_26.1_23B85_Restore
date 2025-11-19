@interface MultiplayerModeSelectionViewController
+ (id)viewControllerWithRequest:(id)a3 game:(id)a4 multiplayerViewController:(id)a5 dismissHandler:(id)a6;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSArray)preferredFocusEnvironments;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)contentScrollView;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didEnterBackgroundWithNotif:(id)a3;
- (void)donePressed:(id)a3;
- (void)launchSharePlayChiclet;
- (void)setCollectionView:(id)a3;
- (void)setIsEligibleForGroupSession:(BOOL)a3;
- (void)setIsEntitledToUseGroupActivities:(BOOL)a3;
- (void)setOriginalMatchmakingMode:(int64_t)a3;
- (void)showLobbyWithOriginalRequest;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willEnterForegroundWithNotif:(id)a3;
@end

@implementation MultiplayerModeSelectionViewController

- (void)setOriginalMatchmakingMode:(int64_t)a3
{
  v4 = self;
  MultiplayerModeSelectionViewController.originalMatchmakingMode.setter(a3);
}

- (void)setIsEligibleForGroupSession:(BOOL)a3
{
  v4 = self;
  MultiplayerModeSelectionViewController.isEligibleForGroupSession.setter(a3);
}

- (void)setIsEntitledToUseGroupActivities:(BOOL)a3
{
  v4 = self;
  MultiplayerModeSelectionViewController.isEntitledToUseGroupActivities.setter(a3);
}

- (void)launchSharePlayChiclet
{
  v2 = self;
  MultiplayerModeSelectionViewController.launchSharePlayChiclet()();
}

- (void)showLobbyWithOriginalRequest
{
  v2 = self;
  MultiplayerModeSelectionViewController.showLobbyWithOriginalRequest()();
}

- (id)contentScrollView
{
  v0 = _s29GameCenterMatchmakerExtension38MultiplayerModeSelectionViewControllerC013contentScrollH0So08UIScrollH0CSgyF_0();

  return v0;
}

- (void)setCollectionView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000E52C(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  MultiplayerModeSelectionViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  MultiplayerModeSelectionViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  MultiplayerModeSelectionViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  MultiplayerModeSelectionViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  MultiplayerModeSelectionViewController.viewDidDisappear(_:)(a3);
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  MultiplayerModeSelectionViewController.preferredFocusEnvironments.getter();

  sub_100005BC4(&qword_100028BB8);
  v3.super.isa = sub_100014308().super.isa;

  return v3.super.isa;
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  MultiplayerModeSelectionViewController.viewSafeAreaInsetsDidChange()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  MultiplayerModeSelectionViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  MultiplayerModeSelectionViewController.viewWillLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  MultiplayerModeSelectionViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)donePressed:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_100014438();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10000FE2C();

  sub_100013B48(v6, &qword_100028D28);
}

+ (id)viewControllerWithRequest:(id)a3 game:(id)a4 multiplayerViewController:(id)a5 dismissHandler:(id)a6
{
  v9 = _Block_copy(a6);
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
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = static MultiplayerModeSelectionViewController.viewController(request:game:multiplayerViewController:dismissHandler:)(v11, v12, v13, v9, v10);
  sub_10000D204(v9);

  return v14;
}

- (void)didEnterBackgroundWithNotif:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100010FE0();
}

- (void)willEnterForegroundWithNotif:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100011064();
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  v5 = sub_100005BC4(&qword_100028D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = a3;
  v9 = self;
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_1000141B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014188();
  v10 = a3;
  v11 = self;
  v12 = MultiplayerModeSelectionViewController.collectionView(_:cellForItemAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1000141B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014188();
  v10 = a3;
  v11 = self;
  MultiplayerModeSelectionViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v9, v6);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = sub_1000141B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014188();
  v12 = a3;
  v13 = a4;
  v14 = self;
  MultiplayerModeSelectionViewController.collectionView(_:layout:sizeForItemAt:)(v12);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = MultiplayerModeSelectionViewController.collectionView(_:layout:minimumLineSpacingForSectionAt:)();

  return v10;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  MultiplayerModeSelectionViewController.collectionView(_:layout:insetForSectionAt:)(v8, v9, a5);
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