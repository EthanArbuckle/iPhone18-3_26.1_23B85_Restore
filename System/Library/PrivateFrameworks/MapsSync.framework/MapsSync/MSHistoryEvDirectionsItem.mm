@interface MSHistoryEvDirectionsItem
+ (Class)managedClass;
- (MSHistoryEvDirectionsItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSHistoryEvDirectionsItem)initWithRequiredCharge:(double)a3 vehicleIdentifier:(id)a4;
- (MSHistoryEvDirectionsItem)initWithStore:(id)a3 requiredCharge:(double)a4 vehicleIdentifier:(id)a5;
- (NSString)vehicleIdentifier;
- (double)requiredCharge;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setRequiredCharge:(double)a3;
- (void)setVehicleIdentifier:(id)a3;
@end

@implementation MSHistoryEvDirectionsItem

- (MSHistoryEvDirectionsItem)initWithRequiredCharge:(double)a3 vehicleIdentifier:(id)a4
{
  if (a4)
  {
    sub_1B63BEBD4();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDB0F2A8;
  if (v7)
  {
    v9 = sub_1B63BEBC4();
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MSHistoryEvDirectionsItem *)self initWithStore:v8 requiredCharge:v9 vehicleIdentifier:a3];

  return v10;
}

- (MSHistoryEvDirectionsItem)initWithStore:(id)a3 requiredCharge:(double)a4 vehicleIdentifier:(id)a5
{
  if (a5)
  {
    v7 = sub_1B63BEBD4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return HistoryEvDirectionsItem.init(store:requiredCharge:vehicleIdentifier:)(a3, v7, v9, a4);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62EF4B4(v7, a4);
}

- (double)requiredCharge
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.super.super.isa + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge);
  [*(&self->super.super.super.super.isa + v3) unlock];

  return v6;
}

- (void)setRequiredCharge:(double)a3
{
  v4 = self;
  sub_1B62EE5C4(a3);
}

- (NSString)vehicleIdentifier
{
  v2 = self;
  sub_1B62EE904();
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
  sub_1B62EED10(v4, v6);
}

- (MSHistoryEvDirectionsItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge) = 0;
  v10 = (&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage) = xmmword_1B63C3E40;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData) = xmmword_1B63C3E40;
  v11 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

@end