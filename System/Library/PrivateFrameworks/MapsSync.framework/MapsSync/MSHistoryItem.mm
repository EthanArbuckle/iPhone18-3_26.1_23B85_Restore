@interface MSHistoryItem
+ (BOOL)beforeFetchWithStore:(id)store context:(id)context error:(id *)error;
+ (Class)managedClass;
+ (id)optionsWith:(id)with;
+ (void)pruneHistoryItemsWithContext:(id)context;
- (MSHistoryItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistoryItem)initWithPosition:(double)position positionIndex:(int64_t)index;
- (double)position;
- (int64_t)positionIndex;
- (void)setPosition:(double)position;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSHistoryItem

- (MSHistoryItem)initWithPosition:(double)position positionIndex:(int64_t)index
{
  if (qword_1EDB0F2A0 != -1)
  {
    selfCopy = self;
    swift_once();
    self = selfCopy;
  }

  v5 = qword_1EDB0F2A8;

  return [(MSHistoryItem *)self initWithStore:v5 position:index positionIndex:?];
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B6283D00(objectCopy);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = objectCopy;
    [v8 position];
    *(&selfCopy->super.super.isa + OBJC_IVAR___MSHistoryItem__position) = v10;
    positionIndex = [v8 positionIndex];

    *(&selfCopy->super.super.isa + OBJC_IVAR___MSHistoryItem__positionIndex) = positionIndex;
  }
}

- (double)position
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSHistoryItem__position);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPosition:(double)position
{
  selfCopy = self;
  sub_1B62EF6A0(position);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSHistoryItem__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62EF950(index);
}

- (MSHistoryItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

+ (BOOL)beforeFetchWithStore:(id)store context:(id)context error:(id *)error
{
  storeCopy = store;
  contextCopy = context;
  sub_1B628D31C(contextCopy);

  return 1;
}

+ (id)optionsWith:(id)with
{
  swift_getObjCClassMetadata();
  withCopy = with;
  v5 = sub_1B628D9E4(with);

  return v5;
}

+ (void)pruneHistoryItemsWithContext:(id)context
{
  contextCopy = context;
  sub_1B628D31C(contextCopy);
}

@end