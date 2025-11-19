@interface CalendarViewDataSource
- (_TtC8HealthUI22CalendarViewDataSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
@end

@implementation CalendarViewDataSource

- (_TtC8HealthUI22CalendarViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  v5 = _s8HealthUI22CalendarViewDataSourceC16numberOfSections2inSiSo012UICollectionD0C_tF_0();

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = sub_1C3D1E1E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = self;
  CalendarViewDataSource.startDate(forSection:)(a4, v9);
  v11 = sub_1C3C8A3AC();
  v12 = sub_1C3D1E324();

  (*(v7 + 8))(v9, v6);

  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_1C3D1E5B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3D1E564();
  v10 = a3;
  v11 = self;
  v12 = CalendarViewDataSource.collectionView(_:cellForItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = sub_1C3D1E5B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_1C3D20104();
  v13 = v12;
  sub_1C3D1E564();
  v14 = a3;
  v15 = self;
  v16 = CalendarViewDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(v14, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

@end