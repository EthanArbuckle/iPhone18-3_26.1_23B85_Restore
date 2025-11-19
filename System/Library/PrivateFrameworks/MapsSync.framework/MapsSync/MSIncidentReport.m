@interface MSIncidentReport
+ (Class)managedClass;
- (MSIncidentReport)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSIncidentReport)initWithStore:(id)a3 countryCode:(id)a4 positionIndex:(int64_t)a5 type:(signed __int16)a6;
- (NSString)countryCode;
- (int64_t)positionIndex;
- (signed)type;
- (void)setCountryCode:(id)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setType:(signed __int16)a3;
@end

@implementation MSIncidentReport

- (MSIncidentReport)initWithStore:(id)a3 countryCode:(id)a4 positionIndex:(int64_t)a5 type:(signed __int16)a6
{
  if (a4)
  {
    v9 = sub_1B63BEBD4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  return IncidentReport.init(store:countryCode:positionIndex:type:)(a3, v9, v11, a5, a6);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedIncidentReport();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B6309D0C(v7, a4);
}

- (NSString)countryCode
{
  v2 = self;
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

- (void)setCountryCode:(id)a3
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
  sub_1B6308814(v4, v6);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSIncidentReport__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B6308D80(a3);
}

- (signed)type
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOWORD(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSIncidentReport__type);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setType:(signed __int16)a3
{
  v4 = self;
  sub_1B6309144(a3);
}

- (MSIncidentReport)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B630944C(a3, a4, v7, v6);
}

@end