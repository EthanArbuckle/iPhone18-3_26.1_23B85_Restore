@interface MSHistoryMultiPointRoute
+ (Class)managedClass;
- (BOOL)navigationInterrupted;
- (GEOStorageRouteRequestStorage)routeRequestStorage;
- (MSHistoryMultiPointRoute)initWithNavigationInterrupted:(BOOL)a3 requiredCharge:(id)a4 routeProgressWaypointIndex:(signed __int16)a5 routeRequestStorage:(id)a6 sharedETAData:(id)a7 type:(signed __int16)a8 vehicleIdentifier:(id)a9;
- (MSHistoryMultiPointRoute)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSHistoryMultiPointRoute)initWithStore:(id)a3 navigationInterrupted:(BOOL)a4 requiredCharge:(id)a5 routeProgressWaypointIndex:(signed __int16)a6 routeRequestStorage:(id)a7 sharedETAData:(id)a8 type:(signed __int16)a9 vehicleIdentifier:(id)a10;
- (NSData)sharedETAData;
- (NSNumber)requiredCharge;
- (NSString)vehicleIdentifier;
- (void)setNavigationInterrupted:(BOOL)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setRequiredCharge:(id)a3;
- (void)setRouteProgressWaypointIndex:(signed __int16)a3;
- (void)setRouteRequestStorage:(id)a3;
- (void)setSharedETAData:(id)a3;
- (void)setType:(signed __int16)a3;
- (void)setVehicleIdentifier:(id)a3;
@end

@implementation MSHistoryMultiPointRoute

- (MSHistoryMultiPointRoute)initWithNavigationInterrupted:(BOOL)a3 requiredCharge:(id)a4 routeProgressWaypointIndex:(signed __int16)a5 routeRequestStorage:(id)a6 sharedETAData:(id)a7 type:(signed __int16)a8 vehicleIdentifier:(id)a9
{
  v9 = a7;
  if (!a7)
  {
    v23 = a4;
    v24 = a6;
    v25 = a9;
    v19 = 0xF000000000000000;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    v22 = 0;
    return HistoryMultiPointRoute.init(navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(a3, a4, a5, a6, v9, v19, a8, v20, v22);
  }

  v14 = a4;
  v15 = a6;
  v16 = a9;
  v17 = v9;
  v9 = sub_1B63BE924();
  v19 = v18;

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = sub_1B63BEBD4();
  v22 = v21;

  return HistoryMultiPointRoute.init(navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(a3, a4, a5, a6, v9, v19, a8, v20, v22);
}

- (MSHistoryMultiPointRoute)initWithStore:(id)a3 navigationInterrupted:(BOOL)a4 requiredCharge:(id)a5 routeProgressWaypointIndex:(signed __int16)a6 routeRequestStorage:(id)a7 sharedETAData:(id)a8 type:(signed __int16)a9 vehicleIdentifier:(id)a10
{
  v10 = a8;
  if (!a8)
  {
    v25 = a3;
    v26 = a5;
    v27 = a7;
    v28 = a10;
    v21 = 0xF000000000000000;
    if (a10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = 0;
    v24 = 0;
    return HistoryMultiPointRoute.init(store:navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(a3, a4, a5, a6, a7, v10, v21, a9, v22, v24);
  }

  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a10;
  v19 = v10;
  v10 = sub_1B63BE924();
  v21 = v20;

  if (!a10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22 = sub_1B63BEBD4();
  v24 = v23;

  return HistoryMultiPointRoute.init(store:navigationInterrupted:requiredCharge:routeProgressWaypointIndex:routeRequestStorage:sharedETAData:type:vehicleIdentifier:)(a3, a4, a5, a6, a7, v10, v21, a9, v22, v24);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryMultiPointRoute();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62F9098(v7, a4);
}

- (BOOL)navigationInterrupted
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOBYTE(v4) = *(&v5->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setNavigationInterrupted:(BOOL)a3
{
  v4 = self;
  sub_1B62F623C(a3);
}

- (NSNumber)requiredCharge
{
  v2 = self;
  v3 = sub_1B62F653C();

  return v3;
}

- (void)setRequiredCharge:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62F9340(a3);
}

- (void)setRouteProgressWaypointIndex:(signed __int16)a3
{
  v4 = self;
  sub_1B62F6BC4(a3);
}

- (GEOStorageRouteRequestStorage)routeRequestStorage
{
  v2 = self;
  v3 = sub_1B62F6E60();

  return v3;
}

- (void)setRouteRequestStorage:(id)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v7 = a3;
  v8 = self;
  [v6 lock];
  sub_1B62F73CC(*(&self->super.super.super.isa + v5), a3, v8);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (NSData)sharedETAData
{
  v2 = self;
  v3 = sub_1B62F79F8();
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

  sub_1B62F9574(v3, v7);
  sub_1B6284F64(v3, v7);
}

- (void)setType:(signed __int16)a3
{
  v4 = self;
  sub_1B62F81F8(a3);
}

- (NSString)vehicleIdentifier
{
  v2 = self;
  sub_1B62F8538();
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

- (void)setVehicleIdentifier:(id)a3
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
  sub_1B62F8944(v4, v6);
}

- (MSHistoryMultiPointRoute)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__navigationInterrupted) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__requiredCharge) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__routeProgressWaypointIndex) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__routeRequestStorage) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__sharedETAData) = xmmword_1B63C3E40;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__type) = 0;
  v10 = (&self->super.super.super.isa + OBJC_IVAR___MSHistoryMultiPointRoute__vehicleIdentifier);
  *v10 = 0;
  v10[1] = 0;
  v11 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

@end