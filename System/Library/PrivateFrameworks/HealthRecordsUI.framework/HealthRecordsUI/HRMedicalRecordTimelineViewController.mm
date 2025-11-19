@interface HRMedicalRecordTimelineViewController
- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4;
- (HRMedicalRecordTimelineViewController)initWithCollectionViewLayout:(id)a3;
- (HRMedicalRecordTimelineViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HRMedicalRecordTimelineViewController)initWithProfile:(id)a3 accountId:(id)a4;
- (NSString)sidebarSelectionIdentifier;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)clinicalIngestionStore:(id)a3 ingestionStateDidUpdateTo:(int64_t)a4;
- (void)cloudSyncObserver:(id)a3 syncDidStartWithProgress:(id)a4;
- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4;
- (void)cloudSyncObserverSyncCompleted:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureDisplayTypes:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5;
- (void)dealloc;
- (void)didTapExportPDFButton;
- (void)didUpdateSeriesWithNewValueRange:(id)a3;
- (void)didUpdateVisibleValueRange:(id)a3 changeContext:(int64_t)a4;
- (void)fetchMoreData;
- (void)reloadData;
- (void)reloadDataWithDelay:(double)a3;
- (void)reloadDataWithNotification:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)tapToRadarWithSender:(id)a3;
- (void)updateSystemStatusView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HRMedicalRecordTimelineViewController

- (NSString)sidebarSelectionIdentifier
{
  v2 = self;
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

- (HRMedicalRecordTimelineViewController)initWithProfile:(id)a3 accountId:(id)a4
{
  v20 = a3;
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
  v16 = (*(ObjectType + 968))(v20, 0, v9, 0, 0, v7, 0, 0, 0, v18);
  (*(v11 + 8))(v13, v10);
  swift_deallocPartialClassInstance();
  return v16;
}

- (void)dealloc
{
  v2 = self;
  sub_1D1077EF4();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for MedicalRecordTimelineViewController();
  [(HRMedicalRecordTimelineViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D1074F80();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1D1075B90(a3);
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

  v3 = [v2 collectionView];
  if (v3)
  {
    v4 = v3;
    [v3 contentOffset];

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
  v3 = [v2 traitCollection];
  sub_1D1390AEC();

  sub_1D13909AC();
}

- (void)updateSystemStatusView
{
  v2 = self;
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
  v8 = self;
  v9 = sub_1D139059C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = ObjectType;
  sub_1D107877C(0, 0, v6, &unk_1D139EA90, v10);
}

- (void)didTapExportPDFButton
{
  v2 = self;
  sub_1D10797AC();
}

- (void)tapToRadarWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1D139101C();
  swift_unknownObjectRelease();
  type metadata accessor for TapToRadarManager();
  static TapToRadarManager.presentTapToRadarDialogue(from:)(v4);

  __swift_destroy_boxed_opaque_existential_1Tm(&v5);
}

- (void)reloadDataWithDelay:(double)a3
{
  v5 = objc_opt_self();
  v6 = self;
  [v5 cancelPreviousPerformRequestsWithTarget:v6 selector:sel_reloadData object:0];
  [(HRMedicalRecordTimelineViewController *)v6 performSelector:sel_reloadData withObject:0 afterDelay:a3];
}

- (void)reloadDataWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D1079E2C(v4);
}

- (void)reloadData
{
  v2 = self;
  sub_1D10DD700();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D107C380(v4);
}

- (HRMedicalRecordTimelineViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (HRMedicalRecordTimelineViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didUpdateVisibleValueRange:(id)a3 changeContext:(int64_t)a4
{
  if (a4 == 1)
  {
    v5 = self;
    sub_1D107C5D0(3, 18);
  }
}

- (void)didUpdateSeriesWithNewValueRange:(id)a3
{
  if (!a3)
  {
    if (*(&self->super.super.super.super.isa + OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded))
    {
      v4 = self;
      sub_1D107C5D0(3, 18);
    }

    else
    {
      *(&self->super.super.super.super.isa + OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded) = 1;
    }
  }
}

- (void)configureDisplayTypes:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5
{
  v5 = self;
  sub_1D107C5D0(3, 18);
}

- (void)clinicalIngestionStore:(id)a3 ingestionStateDidUpdateTo:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D107F77C(a4);
}

- (void)cloudSyncObserver:(id)a3 syncDidStartWithProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1D107FA68(v7);
}

- (void)cloudSyncObserver:(id)a3 syncFailedWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1D107FD58(&unk_1F4D05FE0, sub_1D10819C4, &block_descriptor_115);
}

- (void)cloudSyncObserverSyncCompleted:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D107FD58(&unk_1F4D05F90, sub_1D1080CA0, &block_descriptor);
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = self;
  sub_1D10729E4();
  sub_1D138E86C();
  v4 = sub_1D138E21C();

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = self;
  sub_1D10729E4();
  sub_1D138E86C();
  v5 = sub_1D138E1FC();

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  v12 = sub_1D116C58C(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  sub_1D116D46C(v10);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = sub_1D138D82C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v11 = a3;
  v12 = self;
  v13 = sub_1D116DCF8(v11);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = sub_1D116DA04(v10);

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

@end