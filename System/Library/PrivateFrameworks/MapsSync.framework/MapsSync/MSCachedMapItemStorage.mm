@interface MSCachedMapItemStorage
+ (BOOL)beforeFetchWithStore:(id)store context:(id)context error:(id *)error;
+ (Class)managedClass;
- (GEOMapItemStorage)mapItemStorage;
- (MSCachedMapItemStorage)initWithCustomName:(id)name latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid resultsProvider:(id)provider;
- (MSCachedMapItemStorage)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSCachedMapItemStorage)initWithStore:(id)store customName:(id)name latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid resultsProvider:(id)provider;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSNumber)resultsProvider;
- (NSString)customName;
- (void)setCustomName:(id)name;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemStorage:(id)storage;
- (void)setMuid:(id)muid;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setResultsProvider:(id)provider;
@end

@implementation MSCachedMapItemStorage

- (MSCachedMapItemStorage)initWithCustomName:(id)name latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid resultsProvider:(id)provider
{
  if (name)
  {
    sub_1B63BEBD4();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = qword_1EDB0F2A0;
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  storageCopy = storage;
  muidCopy = muid;
  providerCopy = provider;
  if (v16 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDB0F2A8;
  if (v15)
  {
    v23 = sub_1B63BEBC4();
  }

  else
  {
    v23 = 0;
  }

  v24 = [(MSCachedMapItemStorage *)self initWithStore:v22 customName:v23 latitude:latitudeCopy longitude:longitudeCopy mapItemStorage:storageCopy muid:muidCopy resultsProvider:providerCopy];

  return v24;
}

- (MSCachedMapItemStorage)initWithStore:(id)store customName:(id)name latitude:(id)latitude longitude:(id)longitude mapItemStorage:(id)storage muid:(id)muid resultsProvider:(id)provider
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
  providerCopy = provider;
  return CachedMapItemStorage.init(store:customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(storeCopy, v14, v16, latitude, longitude, storage, muid, provider);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62C67E4(objectCopy, load);
}

- (NSString)customName
{
  selfCopy = self;
  sub_1B62C3514();
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
  sub_1B62C3920(v4, v6);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v3 = sub_1B62C3DB4();

  return v3;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B62C6A58(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v3 = sub_1B62C4250();

  return v3;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B62C6C30(longitude);
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v3 = sub_1B62C476C();

  return v3;
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62C4DFC(*(&self->super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.isa + v5) unlock];
}

- (NSNumber)muid
{
  selfCopy = self;
  v3 = sub_1B62C55CC();

  return v3;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B62C6E14(muid);
}

- (NSNumber)resultsProvider
{
  selfCopy = self;
  v3 = sub_1B62C5A68();

  return v3;
}

- (void)setResultsProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  sub_1B62C6FEC(provider);
}

- (MSCachedMapItemStorage)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62C60A0(object, store, loadCopy, parentCopy);
}

+ (BOOL)beforeFetchWithStore:(id)store context:(id)context error:(id *)error
{
  storeCopy = store;
  contextCopy = context;
  sub_1B63A064C(storeCopy, contextCopy);

  return 1;
}

@end