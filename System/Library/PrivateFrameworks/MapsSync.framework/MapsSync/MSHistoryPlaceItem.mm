@interface MSHistoryPlaceItem
+ (Class)managedClass;
+ (id)strippedMapItemWith:(id)with;
- (GEOMapItemStorage)mapItemStorage;
- (MSHistoryPlaceItem)initWithLatitude:(id)latitude longitude:(id)longitude mapItemLastRefreshed:(id)refreshed muid:(id)muid supersededSearchId:(id)id;
- (MSHistoryPlaceItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryPlaceItem)initWithStore:(id)store latitude:(id)latitude longitude:(id)longitude mapItemLastRefreshed:(id)refreshed muid:(id)muid supersededSearchId:(id)id;
- (NSDate)mapItemLastRefreshed;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSUUID)supersededSearchId;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemLastRefreshed:(id)refreshed;
- (void)setMapItemStorage:(id)storage;
- (void)setMuid:(id)muid;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setSupersededSearchId:(id)id;
@end

@implementation MSHistoryPlaceItem

- (MSHistoryPlaceItem)initWithLatitude:(id)latitude longitude:(id)longitude mapItemLastRefreshed:(id)refreshed muid:(id)muid supersededSearchId:(id)id
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v29 - v18;
  if (refreshed)
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

  if (id)
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
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  muidCopy = muid;
  v27 = sub_1B62FFC80(latitude, longitude, v19, muid, v15);

  return v27;
}

- (MSHistoryPlaceItem)initWithStore:(id)store latitude:(id)latitude longitude:(id)longitude mapItemLastRefreshed:(id)refreshed muid:(id)muid supersededSearchId:(id)id
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v31 - v20;
  if (refreshed)
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

  if (id)
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
  storeCopy = store;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  muidCopy = muid;
  return HistoryPlaceItem.init(store:latitude:longitude:mapItemLastRefreshed:muid:supersededSearchId:)(storeCopy, latitude, longitude, v21, muid, v17);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryPlaceItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62FF724(objectCopy, load);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v3 = sub_1B62FB2CC();

  return v3;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B6300084(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v3 = sub_1B62FB768();

  return v3;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B630025C(longitude);
}

- (NSDate)mapItemLastRefreshed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
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

- (void)setMapItemLastRefreshed:(id)refreshed
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (refreshed)
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

  selfCopy = self;
  sub_1B62FC368(v8);
}

- (NSNumber)muid
{
  selfCopy = self;
  v3 = sub_1B62FCAFC();

  return v3;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B6300468(muid);
}

- (NSUUID)supersededSearchId
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
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

- (void)setSupersededSearchId:(id)id
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (id)
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

  selfCopy = self;
  sub_1B62FD800(v8);
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v3 = sub_1B62FE0DC();

  return v3;
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62FE808(*(&self->super.super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (MSHistoryPlaceItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
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
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

+ (id)strippedMapItemWith:(id)with
{
  v4 = objc_opt_self();
  withCopy = with;
  result = [v4 mapItemStorageForGEOMapItem:withCopy forUseType:4];
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