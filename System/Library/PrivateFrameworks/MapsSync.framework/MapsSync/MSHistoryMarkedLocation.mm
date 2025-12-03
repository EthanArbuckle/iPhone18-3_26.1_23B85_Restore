@interface MSHistoryMarkedLocation
+ (Class)managedClass;
- (GEOMapItemStorage)mapItemStorage;
- (MSHistoryMarkedLocation)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryMarkedLocation)initWithStore:(id)store customName:(id)name floorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSString)customName;
- (int)floorOrdinal;
- (void)setCustomName:(id)name;
- (void)setFloorOrdinal:(int)ordinal;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemStorage:(id)storage;
- (void)setMuid:(id)muid;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSHistoryMarkedLocation

- (MSHistoryMarkedLocation)initWithStore:(id)store customName:(id)name floorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid
{
  if (name)
  {
    v14 = sub_1B63BEBD4();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  storeCopy = store;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  storageCopy = storage;
  muidCopy = muid;
  return HistoryMarkedLocation.init(store:customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(storeCopy, v14, v16, ordinal, latitude, longitude, storage, muid);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62F45C0(objectCopy, load);
}

- (NSString)customName
{
  selfCopy = self;
  sub_1B62F1900();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1B63BEBC4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCustomName:(id)name
{
  if (name)
  {
    v4 = sub_1B63BEBD4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1B62F1D0C(v4, v6);
}

- (int)floorOrdinal
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setFloorOrdinal:(int)ordinal
{
  selfCopy = self;
  sub_1B62F2278(ordinal);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v3 = sub_1B62F2568();

  return v3;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B62F4858(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v3 = sub_1B62F2A04();

  return v3;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B62F4A30(longitude);
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v3 = sub_1B62F2F20();

  return v3;
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62F35B0(*(&self->super.super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (NSNumber)muid
{
  selfCopy = self;
  v3 = sub_1B62F3CD0();

  return v3;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B62F4C14(muid);
}

- (MSHistoryMarkedLocation)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  v10 = (&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__customName);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__latitude) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__longitude) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__muid) = 0;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

@end