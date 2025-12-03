@interface CKSendMenuViewController
- (BOOL)isPresentingAudioRecordingQuickSend;
- (BOOL)prefersStatusBarHidden;
- (CKSendMenuViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CKSendMenuViewControllerDelegate)sendMenuViewControllerDelegate;
- (NSArray)accessibilityCustomActions;
- (void)_handleReorderingGesture:(id)gesture;
- (void)anchorViewDidMove;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionViewBackgroundTapped:(id)tapped;
- (void)loadView;
- (void)performFullScreenDismissAnimationWithCompletion:(id)completion;
- (void)pluginIconUpdatedWithNotification:(id)notification;
- (void)rePresentSendMenu;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setIsPresentingAudioRecordingQuickSend:(BOOL)send;
- (void)updatePreferredContentSize;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)setIsPresentingAudioRecordingQuickSend:(BOOL)send
{
  v5 = OBJC_IVAR___CKSendMenuViewController_isPresentingAudioRecordingQuickSend;
  swift_beginAccess();
  *(self + v5) = send;
}

- (void)loadView
{
  selfCopy = self;
  v2 = sub_19097C498();
  [(CKSendMenuViewController *)selfCopy setView:v2];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_19097CB1C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_19097D630(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_19097D7A4(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_19097DEAC();
}

- (void)updatePreferredContentSize
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1909842FC(v5, self + v7);
  swift_endAccess();
  v9 = sub_19097C498();
  v10 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  swift_beginAccess();
  v9[v10] = 1;

  sub_19097D8C4(0);
}

- (void)performFullScreenDismissAnimationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1909803CC(v7, v6);
  sub_19022123C(v7);
}

- (void)pluginIconUpdatedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_19098290C(notificationCopy);
}

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  v3 = sub_190982E40();

  return v3 & 1;
}

- (void)collectionViewBackgroundTapped:(id)tapped
{
  v4 = objc_opt_self();
  selfCopy = self;
  sharedFeatureFlags = [v4 sharedFeatureFlags];
  LODWORD(v4) = [sharedFeatureFlags isPopoverSendMenuEnabled];

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
  selfCopy = self;
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
  selfCopy = self;
  sub_1909836C4();
}

- (CKSendMenuViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_handleReorderingGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  SendMenuViewController.handleReorderingGesture(_:)(gestureCopy);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_190D51C00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  viewCopy = view;
  selfCopy = self;
  SendMenuViewController.collectionView(_:didSelectItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4 = objc_opt_self();
  selfCopy = self;
  sharedFeatureFlags = [v4 sharedFeatureFlags];
  LOBYTE(v4) = [sharedFeatureFlags isPopoverSendMenuEnabled];

  if ((v4 & 1) == 0)
  {
    SendMenuViewController.updateVisibleCellsForScrollPosition()();
  }
}

@end