@interface HierarchicalDiffableCollectionViewAdaptor
- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5;
@end

@implementation HierarchicalDiffableCollectionViewAdaptor

- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  sub_1B9F12538();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45C8();
  v12 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(&self->super.super.isa + v12) = 1;
  v13 = *&self->super.backingDataSource[OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource];
  ObjectType = swift_getObjectType();

  v15 = swift_unknownObjectRetain();
  v16 = sub_1BA21582C(v15, ObjectType, v13);
  swift_unknownObjectRelease();
  sub_1BA21515C(v16, v5, 0, 0);

  (*(v9 + 8))(v11, v8);
}

@end