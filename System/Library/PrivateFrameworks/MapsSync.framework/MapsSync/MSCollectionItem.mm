@interface MSCollectionItem
+ (Class)managedClass;
- (MSCollectionItem)initWithCollection:(id)a3;
- (MSCollectionItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSCollectionItem)initWithPositionIndex:(int64_t)a3;
- (id)fetchCollections;
- (int64_t)positionIndex;
- (void)addCollection:(id)a3;
- (void)flushChanges;
- (void)removeCollection:(id)a3;
- (void)setPositionIndex:(int64_t)a3;
@end

@implementation MSCollectionItem

- (id)fetchCollections
{
  v2 = self;
  sub_1B6298400();

  type metadata accessor for Collection();
  v3 = sub_1B63BEC94();

  return v3;
}

- (MSCollectionItem)initWithPositionIndex:(int64_t)a3
{
  if (qword_1EDB0F2A0 != -1)
  {
    v6 = self;
    swift_once();
    self = v6;
  }

  v4 = qword_1EDB0F2A8;

  return [(MSCollectionItem *)self initWithStore:v4 positionIndex:a3];
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
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSCollectionItem__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B62CDC84(a3);
}

- (void)addCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62CDF2C(v4);
}

- (void)removeCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62CE16C(v4);
}

- (MSCollectionItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B628F5D4(a3, a4, v7, v6);
}

- (MSCollectionItem)initWithCollection:(id)a3
{
  v4 = a3;
  v5 = [(MapsSyncObject *)self init];
  sub_1B62CDF2C(v4);

  return v5;
}

@end