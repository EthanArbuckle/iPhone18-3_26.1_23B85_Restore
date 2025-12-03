@interface MSAnalyticsIdentifier
+ (Class)managedClass;
- (MSAnalyticsIdentifier)initWithData:(id)data positionIndex:(int64_t)index;
- (MSAnalyticsIdentifier)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSAnalyticsIdentifier)initWithStore:(id)store data:(id)data positionIndex:(int64_t)index;
- (NSData)data;
- (int64_t)positionIndex;
- (void)setData:(id)data;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSAnalyticsIdentifier

- (MSAnalyticsIdentifier)initWithData:(id)data positionIndex:(int64_t)index
{
  if (data)
  {
    dataCopy = data;
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

  v12 = [(MSAnalyticsIdentifier *)self initWithStore:v10 data:v11 positionIndex:index];
  sub_1B6284F64(v7, v9);

  return v12;
}

- (MSAnalyticsIdentifier)initWithStore:(id)store data:(id)data positionIndex:(int64_t)index
{
  dataCopy = data;
  if (data)
  {
    storeCopy = store;
    v9 = dataCopy;
    dataCopy = sub_1B63BE924();
    v11 = v10;
  }

  else
  {
    storeCopy2 = store;
    v11 = 0xF000000000000000;
  }

  return AnalyticsIdentifier.init(store:data:positionIndex:)(store, dataCopy, v11, index);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedAnalyticsIdentifier();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62B2740(objectCopy, load);
}

- (NSData)data
{
  selfCopy = self;
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

- (void)setData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B62B2818(dataCopy, v7);
  sub_1B6284F64(dataCopy, v7);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSAnalyticsIdentifier__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62B1558(index);
}

- (MSAnalyticsIdentifier)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62B185C(object, store, loadCopy, parentCopy);
}

@end