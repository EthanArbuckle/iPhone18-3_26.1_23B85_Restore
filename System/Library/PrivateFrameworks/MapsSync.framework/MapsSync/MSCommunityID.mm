@interface MSCommunityID
+ (Class)managedClass;
- (BOOL)expired;
- (MSCommunityID)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSCommunityID)initWithStore:(id)store communityIdentifier:(id)identifier expired:(BOOL)expired positionIndex:(int64_t)index usedCount:(int64_t)count;
- (NSString)communityIdentifier;
- (void)addRapRecord:(id)record;
- (void)addReviewedPlace:(id)place;
- (void)flushChanges;
- (void)removeRapRecord:(id)record;
- (void)removeReviewedPlace:(id)place;
- (void)setCommunityIdentifier:(id)identifier;
- (void)setExpired:(BOOL)expired;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setUsedCount:(int64_t)count;
@end

@implementation MSCommunityID

- (MSCommunityID)initWithStore:(id)store communityIdentifier:(id)identifier expired:(BOOL)expired positionIndex:(int64_t)index usedCount:(int64_t)count
{
  if (identifier)
  {
    v11 = sub_1B63BEBD4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return CommunityID.init(store:communityIdentifier:expired:positionIndex:usedCount:)(store, v11, v13, expired, index, count);
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  v5 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + v3) = MEMORY[0x1E69E7CC0];
  selfCopy = self;

  v7 = OBJC_IVAR___MSCommunityID__rapRecordChanges;
  swift_beginAccess();
  v8 = *(&selfCopy->super.super.isa + v7);
  *(&selfCopy->super.super.isa + v7) = v5;

  v9 = OBJC_IVAR___MSCommunityID__reviewedPlaceChanges;
  swift_beginAccess();
  v10 = *(&selfCopy->super.super.isa + v9);
  *(&selfCopy->super.super.isa + v9) = v5;
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCommunityID();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62DEAF8(objectCopy, load);
}

- (NSString)communityIdentifier
{
  selfCopy = self;
  sub_1B62DBEC0();
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

- (void)setCommunityIdentifier:(id)identifier
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
  sub_1B62DC2CC(v4, v6);
}

- (BOOL)expired
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSCommunityID__expired);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setExpired:(BOOL)expired
{
  selfCopy = self;
  sub_1B62DC838(expired);
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62DCB50(index);
}

- (void)setUsedCount:(int64_t)count
{
  selfCopy = self;
  sub_1B62DCE00(count);
}

- (void)addRapRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  sub_1B62DD7A8(recordCopy, 0, sub_1B62DD660, 0);
}

- (void)removeRapRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  sub_1B62DD7A8(recordCopy, 1, sub_1B62DD714, 0);
}

- (void)addReviewedPlace:(id)place
{
  placeCopy = place;
  selfCopy = self;
  sub_1B62DDF10(placeCopy, 0, sub_1B62B6C10, 0);
}

- (void)removeReviewedPlace:(id)place
{
  placeCopy = place;
  selfCopy = self;
  sub_1B62DDF10(placeCopy, 1, sub_1B62B6CC4, 0);
}

- (MSCommunityID)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62DE420(object, store, loadCopy, parentCopy);
}

@end