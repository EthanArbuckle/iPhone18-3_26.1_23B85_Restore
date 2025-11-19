@interface MSCachedMapItemStorage
+ (BOOL)beforeFetchWithStore:(id)a3 context:(id)a4 error:(id *)a5;
+ (Class)managedClass;
- (GEOMapItemStorage)mapItemStorage;
- (MSCachedMapItemStorage)initWithCustomName:(id)a3 latitude:(id)a4 longitude:(id)a5 mapItemStorage:(id)a6 muid:(id)a7 resultsProvider:(id)a8;
- (MSCachedMapItemStorage)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSCachedMapItemStorage)initWithStore:(id)a3 customName:(id)a4 latitude:(id)a5 longitude:(id)a6 mapItemStorage:(id)a7 muid:(id)a8 resultsProvider:(id)a9;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSNumber)resultsProvider;
- (NSString)customName;
- (void)setCustomName:(id)a3;
- (void)setLatitude:(id)a3;
- (void)setLongitude:(id)a3;
- (void)setMapItemStorage:(id)a3;
- (void)setMuid:(id)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setResultsProvider:(id)a3;
@end

@implementation MSCachedMapItemStorage

- (MSCachedMapItemStorage)initWithCustomName:(id)a3 latitude:(id)a4 longitude:(id)a5 mapItemStorage:(id)a6 muid:(id)a7 resultsProvider:(id)a8
{
  if (a3)
  {
    sub_1B63BEBD4();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = qword_1EDB0F2A0;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
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

  v24 = [(MSCachedMapItemStorage *)self initWithStore:v22 customName:v23 latitude:v17 longitude:v18 mapItemStorage:v19 muid:v20 resultsProvider:v21];

  return v24;
}

- (MSCachedMapItemStorage)initWithStore:(id)a3 customName:(id)a4 latitude:(id)a5 longitude:(id)a6 mapItemStorage:(id)a7 muid:(id)a8 resultsProvider:(id)a9
{
  if (a4)
  {
    v14 = sub_1B63BEBD4();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  return CachedMapItemStorage.init(store:customName:latitude:longitude:mapItemStorage:muid:resultsProvider:)(v17, v14, v16, a5, a6, a7, a8, a9);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCachedMapItemStorage();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62C67E4(v7, a4);
}

- (NSString)customName
{
  v2 = self;
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

- (void)setCustomName:(id)a3
{
  if (a3)
  {
    v4 = sub_1B63BEBD4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1B62C3920(v4, v6);
}

- (NSNumber)latitude
{
  v2 = self;
  v3 = sub_1B62C3DB4();

  return v3;
}

- (void)setLatitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62C6A58(a3);
}

- (NSNumber)longitude
{
  v2 = self;
  v3 = sub_1B62C4250();

  return v3;
}

- (void)setLongitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62C6C30(a3);
}

- (GEOMapItemStorage)mapItemStorage
{
  v2 = self;
  v3 = sub_1B62C476C();

  return v3;
}

- (void)setMapItemStorage:(id)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v7 = a3;
  v8 = self;
  [v6 lock];
  sub_1B62C4DFC(*(&self->super.super.isa + v5), a3, v8);
  [*(&self->super.super.isa + v5) unlock];
}

- (NSNumber)muid
{
  v2 = self;
  v3 = sub_1B62C55CC();

  return v3;
}

- (void)setMuid:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62C6E14(a3);
}

- (NSNumber)resultsProvider
{
  v2 = self;
  v3 = sub_1B62C5A68();

  return v3;
}

- (void)setResultsProvider:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62C6FEC(a3);
}

- (MSCachedMapItemStorage)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B62C60A0(a3, a4, v7, v6);
}

+ (BOOL)beforeFetchWithStore:(id)a3 context:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_1B63A064C(v6, v7);

  return 1;
}

@end