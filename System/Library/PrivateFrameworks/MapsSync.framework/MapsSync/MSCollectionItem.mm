@interface MSCollectionItem
+ (Class)managedClass;
- (MSCollectionItem)initWithCollection:(id)collection;
- (MSCollectionItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSCollectionItem)initWithPositionIndex:(int64_t)index;
- (id)fetchCollections;
- (int64_t)positionIndex;
- (void)addCollection:(id)collection;
- (void)flushChanges;
- (void)removeCollection:(id)collection;
- (void)setPositionIndex:(int64_t)index;
@end

@implementation MSCollectionItem

- (id)fetchCollections
{
  selfCopy = self;
  sub_1B6298400();

  type metadata accessor for Collection();
  v3 = sub_1B63BEC94();

  return v3;
}

- (MSCollectionItem)initWithPositionIndex:(int64_t)index
{
  if (qword_1EDB0F2A0 != -1)
  {
    selfCopy = self;
    swift_once();
    self = selfCopy;
  }

  v4 = qword_1EDB0F2A8;

  return [(MSCollectionItem *)self initWithStore:v4 positionIndex:index];
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  *(&self->super.super.isa + v3) = MEMORY[0x1E69E7CC0];
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCollectionItem();

  return swift_getObjCClassFromMetadata();
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSCollectionItem__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62CDC84(index);
}

- (void)addCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  sub_1B62CDF2C(collectionCopy);
}

- (void)removeCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  sub_1B62CE16C(collectionCopy);
}

- (MSCollectionItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B628F5D4(object, store, loadCopy, parentCopy);
}

- (MSCollectionItem)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(MapsSyncObject *)self init];
  sub_1B62CDF2C(collectionCopy);

  return v5;
}

@end