@interface CKCloudSyncViewCoordinator
- (BOOL)isSyncViewCurrentlyVisible;
- (BOOL)isSyncViewInitialized;
- (double)heightForSyncViewForFittingSize:(CGSize)a3;
- (void)addSyncStatusViewToViewControllerWithView:(id)a3 navigationItem:(id)a4;
- (void)createSyncStatusView;
- (void)tearDownView;
- (void)updateWithSyncState:(id)a3;
@end

@implementation CKCloudSyncViewCoordinator

- (BOOL)isSyncViewCurrentlyVisible
{
  v2 = self;
  v3 = sub_1909D54C8();

  return v3 & 1;
}

- (BOOL)isSyncViewInitialized
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit26CKCloudSyncViewCoordinator_syncStatusViews);
  if (v2 >> 62)
  {
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

- (double)heightForSyncViewForFittingSize:(CGSize)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit26CKCloudSyncViewCoordinator_toolbarSyncStatusView);
  if (!v3)
  {
    return 0.0;
  }

  height = a3.height;
  width = a3.width;
  v6 = self;
  v7 = v3;
  [v7 systemLayoutSizeFittingSize_];
  v9 = v8;
  [v7 safeAreaInsets];
  v11 = v10;

  return v9 - v11;
}

- (void)tearDownView
{
  v2 = self;
  sub_1909D57BC();
}

- (void)createSyncStatusView
{
  v2 = self;
  sub_1909D5900();
}

- (void)addSyncStatusViewToViewControllerWithView:(id)a3 navigationItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1909D5ACC(v6);
}

- (void)updateWithSyncState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1909D5E40(v4);
}

@end