@interface MSIncidentReport
+ (Class)managedClass;
- (MSIncidentReport)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSIncidentReport)initWithStore:(id)store countryCode:(id)code positionIndex:(int64_t)index type:(signed __int16)type;
- (NSString)countryCode;
- (int64_t)positionIndex;
- (signed)type;
- (void)setCountryCode:(id)code;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setType:(signed __int16)type;
@end

@implementation MSIncidentReport

- (MSIncidentReport)initWithStore:(id)store countryCode:(id)code positionIndex:(int64_t)index type:(signed __int16)type
{
  if (code)
  {
    v9 = sub_1B63BEBD4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return IncidentReport.init(store:countryCode:positionIndex:type:)(store, v9, v11, index, type);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedIncidentReport();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B6309D0C(objectCopy, load);
}

- (NSString)countryCode
{
  selfCopy = self;
  sub_1B6308408();
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

- (void)setCountryCode:(id)code
{
  if (code)
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
  sub_1B6308814(v4, v6);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSIncidentReport__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B6308D80(index);
}

- (signed)type
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOWORD(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSIncidentReport__type);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setType:(signed __int16)type
{
  selfCopy = self;
  sub_1B6309144(type);
}

- (MSIncidentReport)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B630944C(object, store, loadCopy, parentCopy);
}

@end