@interface HRMedicalRecordTimelineViewController
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (HRMedicalRecordTimelineViewController)initWithCollectionViewLayout:(id)layout;
- (HRMedicalRecordTimelineViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HRMedicalRecordTimelineViewController)initWithProfile:(id)profile accountId:(id)id;
- (NSString)sidebarSelectionIdentifier;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)clinicalIngestionStore:(id)store ingestionStateDidUpdateTo:(int64_t)to;
- (void)cloudSyncObserver:(id)observer syncDidStartWithProgress:(id)progress;
- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error;
- (void)cloudSyncObserverSyncCompleted:(id)completed;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset;
- (void)dealloc;
- (void)didTapExportPDFButton;
- (void)didUpdateSeriesWithNewValueRange:(id)range;
- (void)didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context;
- (void)fetchMoreData;
- (void)reloadData;
- (void)reloadDataWithDelay:(double)delay;
- (void)reloadDataWithNotification:(id)notification;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tapToRadarWithSender:(id)sender;
- (void)updateSystemStatusView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation HRMedicalRecordTimelineViewController

- (NSString)sidebarSelectionIdentifier
{
  selfCopy = self;
  sub_1D1073014();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1D139012C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HRMedicalRecordTimelineViewController)initWithProfile:(id)profile accountId:(id)id
{
  profileCopy = profile;
  sub_1D107F4BC(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = sub_1D138D5EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D5CC();
  ObjectType = swift_getObjectType();
  (*(v11 + 16))(v9, v13, v10);
  v15 = *(v11 + 56);
  v15(v9, 0, 1, v10);
  v15(v7, 1, 1, v10);
  v18 = 1;
  v16 = (*(ObjectType + 968))(profileCopy, 0, v9, 0, 0, v7, 0, 0, 0, v18);
  (*(v11 + 8))(v13, v10);
  swift_deallocPartialClassInstance();
  return v16;
}

- (void)dealloc
{
  selfCopy = self;
  sub_1D1077EF4();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for MedicalRecordTimelineViewController();
  [(HRMedicalRecordTimelineViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D1074F80();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1D1075B90(appearing);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for MedicalRecordTimelineViewController();
  v2 = v5.receiver;
  [(HRMedicalRecordTimelineViewController *)&v5 viewWillLayoutSubviews];
  if (v2[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] != 1)
  {
    goto LABEL_4;
  }

  collectionView = [v2 collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    [collectionView contentOffset];

    sub_1D107F580(&qword_1EC609888, type metadata accessor for MedicalRecordTimelineViewController);
    sub_1D138E8CC();
LABEL_4:

    return;
  }

  __break(1u);
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for MedicalRecordTimelineViewController();
  v2 = v4.receiver;
  [(HRMedicalRecordTimelineViewController *)&v4 viewDidLayoutSubviews];
  traitCollection = [v2 traitCollection];
  sub_1D1390AEC();

  sub_1D13909AC();
}

- (void)updateSystemStatusView
{
  selfCopy = self;
  sub_1D10790F4(0);
}

- (void)fetchMoreData
{
  ObjectType = swift_getObjectType();
  sub_1D107F4BC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1D13905DC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D13905AC();
  selfCopy = self;
  v9 = sub_1D139059C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = selfCopy;
  v10[5] = ObjectType;
  sub_1D107877C(0, 0, v6, &unk_1D139EA90, v10);
}

- (void)didTapExportPDFButton
{
  selfCopy = self;
  sub_1D10797AC();
}

- (void)tapToRadarWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D139101C();
  swift_unknownObjectRelease();
  type metadata accessor for TapToRadarManager();
  static TapToRadarManager.presentTapToRadarDialogue(from:)(selfCopy);

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

- (void)reloadDataWithDelay:(double)delay
{
  v5 = objc_opt_self();
  selfCopy = self;
  [v5 cancelPreviousPerformRequestsWithTarget:selfCopy selector:sel_reloadData object:0];
  [(HRMedicalRecordTimelineViewController *)selfCopy performSelector:sel_reloadData withObject:0 afterDelay:delay];
}

- (void)reloadDataWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1D1079E2C(notificationCopy);
}

- (void)reloadData
{
  selfCopy = self;
  sub_1D10DD700();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1D107C380(scrollCopy);
}

- (HRMedicalRecordTimelineViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HRMedicalRecordTimelineViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context
{
  if (context == 1)
  {
    selfCopy = self;
    sub_1D107C5D0(3, 18);
  }
}

- (void)didUpdateSeriesWithNewValueRange:(id)range
{
  if (!range)
  {
    if (*(&self->super.super.super.super.isa + OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded))
    {
      selfCopy = self;
      sub_1D107C5D0(3, 18);
    }

    else
    {
      *(&self->super.super.super.super.isa + OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded) = 1;
    }
  }
}

- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset
{
  selfCopy = self;
  sub_1D107C5D0(3, 18);
}

- (void)clinicalIngestionStore:(id)store ingestionStateDidUpdateTo:(int64_t)to
{
  storeCopy = store;
  selfCopy = self;
  sub_1D107F77C(to);
}

- (void)cloudSyncObserver:(id)observer syncDidStartWithProgress:(id)progress
{
  observerCopy = observer;
  progressCopy = progress;
  selfCopy = self;
  sub_1D107FA68(progressCopy);
}

- (void)cloudSyncObserver:(id)observer syncFailedWithError:(id)error
{
  observerCopy = observer;
  selfCopy = self;
  errorCopy = error;
  sub_1D107FD58(&unk_1F4D05FE0, sub_1D10819C4, &block_descriptor_115);
}

- (void)cloudSyncObserverSyncCompleted:(id)completed
{
  completedCopy = completed;
  selfCopy = self;
  sub_1D107FD58(&unk_1F4D05F90, sub_1D1080CA0, &block_descriptor);
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  selfCopy = self;
  sub_1D10729E4();
  sub_1D138E86C();
  v4 = sub_1D138E21C();

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  selfCopy = self;
  sub_1D10729E4();
  sub_1D138E86C();
  v5 = sub_1D138E1FC();

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1D116C58C(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  sub_1D116D46C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  v7 = sub_1D138D82C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1D116DCF8(viewCopy);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_1D116DA04(viewCopy);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

@end