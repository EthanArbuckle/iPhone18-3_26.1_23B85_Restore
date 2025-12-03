@interface MSHistoryEvDirectionsItem
+ (Class)managedClass;
- (MSHistoryEvDirectionsItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryEvDirectionsItem)initWithRequiredCharge:(double)charge vehicleIdentifier:(id)identifier;
- (MSHistoryEvDirectionsItem)initWithStore:(id)store requiredCharge:(double)charge vehicleIdentifier:(id)identifier;
- (NSString)vehicleIdentifier;
- (double)requiredCharge;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setRequiredCharge:(double)charge;
- (void)setVehicleIdentifier:(id)identifier;
@end

@implementation MSHistoryEvDirectionsItem

- (MSHistoryEvDirectionsItem)initWithRequiredCharge:(double)charge vehicleIdentifier:(id)identifier
{
  if (identifier)
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

  v10 = [(MSHistoryEvDirectionsItem *)self initWithStore:v8 requiredCharge:v9 vehicleIdentifier:charge];

  return v10;
}

- (MSHistoryEvDirectionsItem)initWithStore:(id)store requiredCharge:(double)charge vehicleIdentifier:(id)identifier
{
  if (identifier)
  {
    v7 = sub_1B63BEBD4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return HistoryEvDirectionsItem.init(store:requiredCharge:vehicleIdentifier:)(store, v7, v9, charge);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryEvDirectionsItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62EF4B4(objectCopy, load);
}

- (double)requiredCharge
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge);
  [*(&self->super.super.super.super.isa + v3) unlock];

  return v6;
}

- (void)setRequiredCharge:(double)charge
{
  selfCopy = self;
  sub_1B62EE5C4(charge);
}

- (NSString)vehicleIdentifier
{
  selfCopy = self;
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

- (void)setVehicleIdentifier:(id)identifier
{
  if (identifier)
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
  sub_1B62EED10(v4, v6);
}

- (MSHistoryEvDirectionsItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryEvDirectionsItem__requiredCharge) = 0;
  v10 = (&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryEvDirectionsItem__vehicleIdentifier);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__navigationInterrupted) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__routeRequestStorage) = xmmword_1B63C3E40;
  *(&self->super.super.super.super.isa + OBJC_IVAR___MSHistoryDirectionsItem__sharedETAData) = xmmword_1B63C3E40;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

@end