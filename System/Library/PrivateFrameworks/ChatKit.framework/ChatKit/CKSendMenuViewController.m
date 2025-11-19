@interface CKSendMenuViewController
- (BOOL)isPresentingAudioRecordingQuickSend;
- (BOOL)prefersStatusBarHidden;
- (CKSendMenuViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CKSendMenuViewControllerDelegate)sendMenuViewControllerDelegate;
- (NSArray)accessibilityCustomActions;
- (void)_handleReorderingGesture:(id)a3;
- (void)anchorViewDidMove;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionViewBackgroundTapped:(id)a3;
- (void)loadView;
- (void)performFullScreenDismissAnimationWithCompletion:(id)a3;
- (void)pluginIconUpdatedWithNotification:(id)a3;
- (void)rePresentSendMenu;
- (void)scrollViewDidScroll:(id)a3;
- (void)setIsPresentingAudioRecordingQuickSend:(BOOL)a3;
- (void)updatePreferredContentSize;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CKSendMenuViewController

- (CKSendMenuViewControllerDelegate)sendMenuViewControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)isPresentingAudioRecordingQuickSend
{
  v3 = OBJC_IVAR___CKSendMenuViewController_isPresentingAudioRecordingQuickSend;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsPresentingAudioRecordingQuickSend:(BOOL)a3
{
  v5 = OBJC_IVAR___CKSendMenuViewController_isPresentingAudioRecordingQuickSend;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)loadView
{
  v3 = self;
  v2 = sub_19097C498();
  [(CKSendMenuViewController *)v3 setView:v2];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_19097CB1C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_19097D630(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_19097D7A4(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_19097DEAC();
}

- (void)updatePreferredContentSize
{
  v2 = self;
  sub_19097FACC();
}

- (void)rePresentSendMenu
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58460);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_190D518A0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR___CKSendMenuViewController_activeDismissAnimationIdentifier;
  swift_beginAccess();
  v8 = self;
  sub_1909842FC(v5, self + v7);
  swift_endAccess();
  v9 = sub_19097C498();
  v10 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  swift_beginAccess();
  v9[v10] = 1;

  sub_19097D8C4(0);
}

- (void)performFullScreenDismissAnimationWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_190851E64;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1909803CC(v7, v6);
  sub_19022123C(v7);
}

- (void)pluginIconUpdatedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19098290C(v4);
}

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = sub_190982E40();

  return v3 & 1;
}

- (void)collectionViewBackgroundTapped:(id)a3
{
  v4 = objc_opt_self();
  v7 = self;
  v5 = [v4 sharedFeatureFlags];
  LODWORD(v4) = [v5 isPopoverSendMenuEnabled];

  if (v4)
  {
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong sendMenuViewControllerRequestDismiss_];
      swift_unknownObjectRelease();
    }
  }
}

- (NSArray)accessibilityCustomActions
{
  v2 = self;
  v3 = sub_190983288();

  if (v3)
  {
    sub_1902188FC(0, &qword_1EAD58488);
    v4 = sub_190D57160();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)anchorViewDidMove
{
  v2 = self;
  sub_1909836C4();
}

- (CKSendMenuViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_handleReorderingGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  SendMenuViewController.handleReorderingGesture(_:)(v4);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_190D51C00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v10 = a3;
  v11 = self;
  SendMenuViewController.collectionView(_:didSelectItemAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = objc_opt_self();
  v6 = self;
  v5 = [v4 sharedFeatureFlags];
  LOBYTE(v4) = [v5 isPopoverSendMenuEnabled];

  if ((v4 & 1) == 0)
  {
    SendMenuViewController.updateVisibleCellsForScrollPosition()();
  }
}

@end