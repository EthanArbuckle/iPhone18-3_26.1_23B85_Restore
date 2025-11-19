@interface MSHistoryPlaceItem
+ (Class)managedClass;
+ (id)strippedMapItemWith:(id)a3;
- (GEOMapItemStorage)mapItemStorage;
- (MSHistoryPlaceItem)initWithLatitude:(id)a3 longitude:(id)a4 mapItemLastRefreshed:(id)a5 muid:(id)a6 supersededSearchId:(id)a7;
- (MSHistoryPlaceItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSHistoryPlaceItem)initWithStore:(id)a3 latitude:(id)a4 longitude:(id)a5 mapItemLastRefreshed:(id)a6 muid:(id)a7 supersededSearchId:(id)a8;
- (NSDate)mapItemLastRefreshed;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSUUID)supersededSearchId;
- (void)setLatitude:(id)a3;
- (void)setLongitude:(id)a3;
- (void)setMapItemLastRefreshed:(id)a3;
- (void)setMapItemStorage:(id)a3;
- (void)setMuid:(id)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setSupersededSearchId:(id)a3;
@end

@implementation MSHistoryPlaceItem

- (MSHistoryPlaceItem)initWithLatitude:(id)a3 longitude:(id)a4 mapItemLastRefreshed:(id)a5 muid:(id)a6 supersededSearchId:(id)a7
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v29 - v18;
  if (a5)
  {
    sub_1B63BE974();
    v20 = sub_1B63BE994();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
  }

  else
  {
    v21 = sub_1B63BE994();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  }

  if (a7)
  {
    sub_1B63BE9E4();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_1B63BEA04();
  (*(*(v23 - 8) + 56))(v15, v22, 1, v23);
  v24 = a3;
  v25 = a4;
  v26 = a6;
  v27 = sub_1B62FFC80(a3, a4, v19, a6, v15);

  return v27;
}

- (MSHistoryPlaceItem)initWithStore:(id)a3 latitude:(id)a4 longitude:(id)a5 mapItemLastRefreshed:(id)a6 muid:(id)a7 supersededSearchId:(id)a8
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v31 - v20;
  if (a6)
  {
    sub_1B63BE974();
    v22 = sub_1B63BE994();
    (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  else
  {
    v23 = sub_1B63BE994();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  }

  if (a8)
  {
    sub_1B63BE9E4();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_1B63BEA04();
  (*(*(v25 - 8) + 56))(v17, v24, 1, v25);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a7;
  return HistoryPlaceItem.init(store:latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(v26, a4, a5, v21, a7, v17);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62FF724(v7, a4);
}

- (NSNumber)latitude
{
  v2 = self;
  v3 = sub_1B62FB2CC();

  return v3;
}

- (void)setLatitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6300084(a3);
}

- (NSNumber)longitude
{
  v2 = self;
  v3 = sub_1B62FB768();

  return v3;
}

- (void)setLongitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B630025C(a3);
}

- (NSDate)mapItemLastRefreshed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  sub_1B62FBD68(v6);

  v8 = sub_1B63BE994();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1B63BE954();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setMapItemLastRefreshed:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    sub_1B63BE974();
    v9 = sub_1B63BE994();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B63BE994();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  sub_1B62FC368(v8);
}

- (NSNumber)muid
{
  v2 = self;
  v3 = sub_1B62FCAFC();

  return v3;
}

- (void)setMuid:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6300468(a3);
}

- (NSUUID)supersededSearchId
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
  sub_1B62FD200(v6);

  v8 = sub_1B63BEA04();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1B63BE9C4();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setSupersededSearchId:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
  {
    sub_1B63BE9E4();
    v9 = sub_1B63BEA04();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B63BEA04();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = self;
  sub_1B62FD800(v8);
}

- (GEOMapItemStorage)mapItemStorage
{
  v2 = self;
  v3 = sub_1B62FE0DC();

  return v3;
}

- (void)setMapItemStorage:(id)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v7 = a3;
  v8 = self;
  [v6 lock];
  sub_1B62FE808(*(&self->super.super.super.isa + v5), a3, v8);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (MSHistoryPlaceItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryPlaceItem__latitude) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryPlaceItem__longitude) = 0;
  v11 = OBJC_IVAR___MSHistoryPlaceItem__mapItemLastRefreshed;
  v12 = sub_1B63BE994();
  (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryPlaceItem__muid) = 0;
  v13 = OBJC_IVAR___MSHistoryPlaceItem__supersededSearchId;
  v14 = sub_1B63BEA04();
  (*(*(v14 - 8) + 56))(self + v13, 1, 1, v14);
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryPlaceItem__mapItemStorage) = xmmword_1B63C3E40;
  v15 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

+ (id)strippedMapItemWith:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  result = [v4 mapItemStorageForGEOMapItem:v5 forUseType:4];
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end