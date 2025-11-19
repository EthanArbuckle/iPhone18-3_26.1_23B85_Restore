@interface MSHistoryDirectionsItem
+ (Class)managedClass;
- (BOOL)navigationInterrupted;
- (GEOStorageRouteRequestStorage)routeRequestStorage;
- (MSHistoryDirectionsItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSHistoryDirectionsItem)initWithStore:(id)a3 navigationInterrupted:(BOOL)a4 routeRequestStorage:(id)a5 sharedETAData:(id)a6;
- (NSData)sharedETAData;
- (void)setNavigationInterrupted:(BOOL)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setRouteRequestStorage:(id)a3;
- (void)setSharedETAData:(id)a3;
@end

@implementation MSHistoryDirectionsItem

- (MSHistoryDirectionsItem)initWithStore:(id)a3 navigationInterrupted:(BOOL)a4 routeRequestStorage:(id)a5 sharedETAData:(id)a6
{
  v6 = a6;
  if (a6)
  {
    v10 = a3;
    v11 = a5;
    v12 = v6;
    v6 = sub_1B63BE924();
    v14 = v13;
  }

  else
  {
    v15 = a3;
    v16 = a5;
    v14 = 0xF000000000000000;
  }

  return HistoryDirectionsItem.init(store:navigationInterrupted:routeRequestStorage:sharedETAData:)(a3, a4, a5, v6, v14);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryDirectionsItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62ED7B0(v7, a4);
}

- (BOOL)navigationInterrupted
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOBYTE(v4) = *(&v5->super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setNavigationInterrupted:(BOOL)a3
{
  v4 = self;
  sub_1B62EBF34(a3);
}

- (GEOStorageRouteRequestStorage)routeRequestStorage
{
  v2 = self;
  v3 = sub_1B62EC234();

  return v3;
}

- (void)setRouteRequestStorage:(id)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v7 = a3;
  v8 = self;
  [v6 lock];
  sub_1B62EC7A0(*(&self->super.super.super.isa + v5), a3, v8);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (NSData)sharedETAData
{
  v2 = self;
  v3 = sub_1B62ECDCC();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_1B63BE904();
    sub_1B6284F64(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (void)setSharedETAData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B62ED984(v3, v7);
  sub_1B6284F64(v3, v7);
}

- (MSHistoryDirectionsItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData) = xmmword_1B63C3E40;
  v10 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

@end