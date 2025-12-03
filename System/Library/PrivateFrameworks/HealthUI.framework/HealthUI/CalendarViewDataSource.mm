@interface CalendarViewDataSource
- (_TtC8HealthUI22CalendarViewDataSource)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
@end

@implementation CalendarViewDataSource

- (_TtC8HealthUI22CalendarViewDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v5 = _s8HealthUI22CalendarViewDataSourceC16numberOfSections2inSiSo012UICollectionD0C_tF_0();

  return v5;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
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

  selfCopy = self;
  CalendarViewDataSource.startDate(forSection:)(section, v9);
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
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
  viewCopy = view;
  selfCopy = self;
  v12 = CalendarViewDataSource.collectionView(_:cellForItemAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
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
  viewCopy = view;
  selfCopy = self;
  v16 = CalendarViewDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(viewCopy, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

@end