@interface MSAnalyticsIdentifier
+ (Class)managedClass;
- (MSAnalyticsIdentifier)initWithData:(id)a3 positionIndex:(int64_t)a4;
- (MSAnalyticsIdentifier)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSAnalyticsIdentifier)initWithStore:(id)a3 data:(id)a4 positionIndex:(int64_t)a5;
- (NSData)data;
- (int64_t)positionIndex;
- (void)setData:(id)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
@end

@implementation MSAnalyticsIdentifier

- (MSAnalyticsIdentifier)initWithData:(id)a3 positionIndex:(int64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = sub_1B63BE924();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDB0F2A8;
  if (v9 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    sub_1B629119C(v7, v9);
    v11 = sub_1B63BE904();
    sub_1B6284F64(v7, v9);
  }

  v12 = [(MSAnalyticsIdentifier *)self initWithStore:v10 data:v11 positionIndex:a4];
  sub_1B6284F64(v7, v9);

  return v12;
}

- (MSAnalyticsIdentifier)initWithStore:(id)a3 data:(id)a4 positionIndex:(int64_t)a5
{
  v6 = a4;
  if (a4)
  {
    v8 = a3;
    v9 = v6;
    v6 = sub_1B63BE924();
    v11 = v10;
  }

  else
  {
    v12 = a3;
    v11 = 0xF000000000000000;
  }

  return AnalyticsIdentifier.init(store:data:positionIndex:)(a3, v6, v11, a5);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62B2740(v7, a4);
}

- (NSData)data
{
  v2 = self;
  v3 = sub_1B62B0C58();
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

- (void)setData:(id)a3
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

  sub_1B62B2818(v3, v7);
  sub_1B6284F64(v3, v7);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSAnalyticsIdentifier__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B62B1558(a3);
}

- (MSAnalyticsIdentifier)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B62B185C(a3, a4, v7, v6);
}

@end