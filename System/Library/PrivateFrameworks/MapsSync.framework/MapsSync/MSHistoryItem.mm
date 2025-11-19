@interface MSHistoryItem
+ (BOOL)beforeFetchWithStore:(id)a3 context:(id)a4 error:(id *)a5;
+ (Class)managedClass;
+ (id)optionsWith:(id)a3;
+ (void)pruneHistoryItemsWithContext:(id)a3;
- (MSHistoryItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSHistoryItem)initWithPosition:(double)a3 positionIndex:(int64_t)a4;
- (double)position;
- (int64_t)positionIndex;
- (void)setPosition:(double)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
@end

@implementation MSHistoryItem

- (MSHistoryItem)initWithPosition:(double)a3 positionIndex:(int64_t)a4
{
  if (qword_1EDB0F2A0 != -1)
  {
    v7 = self;
    swift_once();
    self = v7;
  }

  v5 = qword_1EDB0F2A8;

  return [(MSHistoryItem *)self initWithStore:v5 position:a4 positionIndex:?];
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistoryItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v6 = a3;
  v12 = self;
  sub_1B6283D00(v6);
  type metadata accessor for MapsSyncManagedHistoryItem();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    [v8 position];
    *(&v12->super.super.isa + OBJC_IVAR___MSHistoryItem__position) = v10;
    v11 = [v8 positionIndex];

    *(&v12->super.super.isa + OBJC_IVAR___MSHistoryItem__positionIndex) = v11;
  }
}

- (double)position
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSHistoryItem__position);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPosition:(double)a3
{
  v4 = self;
  sub_1B62EF6A0(a3);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSHistoryItem__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B62EF950(a3);
}

- (MSHistoryItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

+ (BOOL)beforeFetchWithStore:(id)a3 context:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_1B628D31C(v7);

  return 1;
}

+ (id)optionsWith:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_1B628D9E4(a3);

  return v5;
}

+ (void)pruneHistoryItemsWithContext:(id)a3
{
  v3 = a3;
  sub_1B628D31C(v3);
}

@end