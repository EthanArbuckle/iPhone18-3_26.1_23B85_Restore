@interface FlexiblePaywallCollectionViewDataSource
- (_TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
@end

@implementation FlexiblePaywallCollectionViewDataSource

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider), *&self->layoutProvider[OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider + 16]);
  v5 = self;

  sub_1D78B3AF4();

  v6 = *(v8 + 16);

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_1D78B34F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B34C4();
  v10 = a3;
  v11 = self;
  v12 = sub_1D7866148(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_1D78B34F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B34C4();
  v11 = a3;
  v12 = self;
  v13 = sub_1D7866B08(v11, v10);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (_TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end