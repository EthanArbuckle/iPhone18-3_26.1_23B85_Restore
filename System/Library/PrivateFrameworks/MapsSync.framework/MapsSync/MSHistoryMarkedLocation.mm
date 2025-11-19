@interface MSHistoryMarkedLocation
+ (Class)managedClass;
- (GEOMapItemStorage)mapItemStorage;
- (MSHistoryMarkedLocation)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSHistoryMarkedLocation)initWithStore:(id)a3 customName:(id)a4 floorOrdinal:(int)a5 latitude:(id)a6 longitude:(id)a7 mapItemStorage:(id)a8 muid:(id)a9;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSString)customName;
- (int)floorOrdinal;
- (void)setCustomName:(id)a3;
- (void)setFloorOrdinal:(int)a3;
- (void)setLatitude:(id)a3;
- (void)setLongitude:(id)a3;
- (void)setMapItemStorage:(id)a3;
- (void)setMuid:(id)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
@end

@implementation MSHistoryMarkedLocation

- (MSHistoryMarkedLocation)initWithStore:(id)a3 customName:(id)a4 floorOrdinal:(int)a5 latitude:(id)a6 longitude:(id)a7 mapItemStorage:(id)a8 muid:(id)a9
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
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  return HistoryMarkedLocation.init(store:customName:floorOrdinal:latitude:longitude:mapItemStorage:muid:)(v17, v14, v16, a5, a6, a7, a8, a9);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryMarkedLocation();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62F45C0(v7, a4);
}

- (NSString)customName
{
  v2 = self;
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
  sub_1B62F1D0C(v4, v6);
}

- (int)floorOrdinal
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LODWORD(v4) = *(&v5->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setFloorOrdinal:(int)a3
{
  v4 = self;
  sub_1B62F2278(a3);
}

- (NSNumber)latitude
{
  v2 = self;
  v3 = sub_1B62F2568();

  return v3;
}

- (void)setLatitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62F4858(a3);
}

- (NSNumber)longitude
{
  v2 = self;
  v3 = sub_1B62F2A04();

  return v3;
}

- (void)setLongitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62F4A30(a3);
}

- (GEOMapItemStorage)mapItemStorage
{
  v2 = self;
  v3 = sub_1B62F2F20();

  return v3;
}

- (void)setMapItemStorage:(id)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v7 = a3;
  v8 = self;
  [v6 lock];
  sub_1B62F35B0(*(&self->super.super.super.isa + v5), a3, v8);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (NSNumber)muid
{
  v2 = self;
  v3 = sub_1B62F3CD0();

  return v3;
}

- (void)setMuid:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62F4C14(a3);
}

- (MSHistoryMarkedLocation)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = (&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__customName);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__floorOrdinal) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__latitude) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__longitude) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__mapItemStorage) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMarkedLocation__muid) = 0;
  v11 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

@end