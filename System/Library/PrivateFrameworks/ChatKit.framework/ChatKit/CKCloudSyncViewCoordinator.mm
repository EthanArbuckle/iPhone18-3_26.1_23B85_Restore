@interface CKCloudSyncViewCoordinator
- (BOOL)isSyncViewCurrentlyVisible;
- (BOOL)isSyncViewInitialized;
- (double)heightForSyncViewForFittingSize:(CGSize)size;
- (void)addSyncStatusViewToViewControllerWithView:(id)view navigationItem:(id)item;
- (void)createSyncStatusView;
- (void)tearDownView;
- (void)updateWithSyncState:(id)state;
@end

@implementation CKCloudSyncViewCoordinator

- (BOOL)isSyncViewCurrentlyVisible
{
  selfCopy = self;
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

- (double)heightForSyncViewForFittingSize:(CGSize)size
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7ChatKit26CKCloudSyncViewCoordinator_toolbarSyncStatusView);
  if (!v3)
  {
    return 0.0;
  }

  height = size.height;
  width = size.width;
  selfCopy = self;
  v7 = v3;
  [v7 systemLayoutSizeFittingSize_];
  v9 = v8;
  [v7 safeAreaInsets];
  v11 = v10;

  return v9 - v11;
}

- (void)tearDownView
{
  selfCopy = self;
  sub_1909D57BC();
}

- (void)createSyncStatusView
{
  selfCopy = self;
  sub_1909D5900();
}

- (void)addSyncStatusViewToViewControllerWithView:(id)view navigationItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  selfCopy = self;
  sub_1909D5ACC(viewCopy);
}

- (void)updateWithSyncState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1909D5E40(stateCopy);
}

@end