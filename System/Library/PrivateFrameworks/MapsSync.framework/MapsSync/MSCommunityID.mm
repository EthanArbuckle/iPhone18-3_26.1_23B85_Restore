@interface MSCommunityID
+ (Class)managedClass;
- (BOOL)expired;
- (MSCommunityID)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSCommunityID)initWithStore:(id)a3 communityIdentifier:(id)a4 expired:(BOOL)a5 positionIndex:(int64_t)a6 usedCount:(int64_t)a7;
- (NSString)communityIdentifier;
- (void)addRapRecord:(id)a3;
- (void)addReviewedPlace:(id)a3;
- (void)flushChanges;
- (void)removeRapRecord:(id)a3;
- (void)removeReviewedPlace:(id)a3;
- (void)setCommunityIdentifier:(id)a3;
- (void)setExpired:(BOOL)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setUsedCount:(int64_t)a3;
@end

@implementation MSCommunityID

- (MSCommunityID)initWithStore:(id)a3 communityIdentifier:(id)a4 expired:(BOOL)a5 positionIndex:(int64_t)a6 usedCount:(int64_t)a7
{
  if (a4)
  {
    v11 = sub_1B63BEBD4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return CommunityID.init(store:communityIdentifier:expired:positionIndex:usedCount:)(a3, v11, v13, a5, a6, a7);
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  v5 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + v3) = MEMORY[0x1E69E7CC0];
  v6 = self;

  v7 = OBJC_IVAR___MSCommunityID__rapRecordChanges;
  swift_beginAccess();
  v8 = *(&v6->super.super.isa + v7);
  *(&v6->super.super.isa + v7) = v5;

  v9 = OBJC_IVAR___MSCommunityID__reviewedPlaceChanges;
  swift_beginAccess();
  v10 = *(&v6->super.super.isa + v9);
  *(&v6->super.super.isa + v9) = v5;
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCommunityID();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62DEAF8(v7, a4);
}

- (NSString)communityIdentifier
{
  v2 = self;
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

- (void)setCommunityIdentifier:(id)a3
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
  sub_1B62DC2CC(v4, v6);
}

- (BOOL)expired
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOBYTE(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSCommunityID__expired);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setExpired:(BOOL)a3
{
  v4 = self;
  sub_1B62DC838(a3);
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B62DCB50(a3);
}

- (void)setUsedCount:(int64_t)a3
{
  v4 = self;
  sub_1B62DCE00(a3);
}

- (void)addRapRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62DD7A8(v4, 0, sub_1B62DD660, 0);
}

- (void)removeRapRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62DD7A8(v4, 1, sub_1B62DD714, 0);
}

- (void)addReviewedPlace:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62DDF10(v4, 0, sub_1B62B6C10, 0);
}

- (void)removeReviewedPlace:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62DDF10(v4, 1, sub_1B62B6CC4, 0);
}

- (MSCommunityID)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B62DE420(a3, a4, v7, v6);
}

@end