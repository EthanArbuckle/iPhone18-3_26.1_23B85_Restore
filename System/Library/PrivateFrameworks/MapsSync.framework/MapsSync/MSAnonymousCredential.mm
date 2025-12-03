@interface MSAnonymousCredential
+ (Class)managedClass;
- (MSAnonymousCredential)initWithAnonymousId:(id)id mapsToken:(id)token mapsTokenCreatedAt:(id)at mapsTokenTTL:(int64_t)l positionIndex:(int64_t)index;
- (MSAnonymousCredential)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSAnonymousCredential)initWithStore:(id)store anonymousId:(id)id mapsToken:(id)token mapsTokenCreatedAt:(id)at mapsTokenTTL:(int64_t)l positionIndex:(int64_t)index;
- (NSDate)mapsTokenCreatedAt;
- (id)fetchReviewedPlaces;
- (void)addReviewedPlace:(id)place;
- (void)flushChanges;
- (void)removeReviewedPlace:(id)place;
- (void)setMapsTokenCreatedAt:(id)at;
- (void)setMapsTokenTTL:(int64_t)l;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSAnonymousCredential

- (MSAnonymousCredential)initWithAnonymousId:(id)id mapsToken:(id)token mapsTokenCreatedAt:(id)at mapsTokenTTL:(int64_t)l positionIndex:(int64_t)index
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v30 - v14;
  if (id)
  {
    tokenCopy = token;
    atCopy = at;
    idCopy = id;
    id = sub_1B63BE924();
    v20 = v19;

    if (token)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    v23 = 0xF000000000000000;
    if (at)
    {
      goto LABEL_4;
    }

LABEL_7:
    v27 = sub_1B63BE994();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    goto LABEL_8;
  }

  tokenCopy2 = token;
  atCopy2 = at;
  v20 = 0xF000000000000000;
  if (!token)
  {
    goto LABEL_6;
  }

LABEL_3:
  v21 = sub_1B63BE924();
  v23 = v22;

  if (!at)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1B63BE974();

  v24 = sub_1B63BE994();
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
LABEL_8:
  v28 = sub_1B62B7F34(id, v20, v21, v23, v15, l, index);
  sub_1B6284F64(v21, v23);
  sub_1B6284F64(id, v20);
  return v28;
}

- (MSAnonymousCredential)initWithStore:(id)store anonymousId:(id)id mapsToken:(id)token mapsTokenCreatedAt:(id)at mapsTokenTTL:(int64_t)l positionIndex:(int64_t)index
{
  indexCopy = index;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33 - v15;
  if (id)
  {
    storeCopy = store;
    tokenCopy = token;
    atCopy = at;
    idCopy = id;
    v21 = sub_1B63BE924();
    v23 = v22;

    if (token)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    v26 = 0xF000000000000000;
    if (at)
    {
      goto LABEL_4;
    }

LABEL_7:
    v31 = sub_1B63BE994();
    (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
    return AnonymousCredential.init(store:anonymousId:mapsToken:mapsTokenCreatedAt:mapsTokenTTL:positionIndex:)(store, v21, v23, v24, v26, v16, l, indexCopy);
  }

  storeCopy2 = store;
  tokenCopy2 = token;
  atCopy2 = at;
  v21 = 0;
  v23 = 0xF000000000000000;
  if (!token)
  {
    goto LABEL_6;
  }

LABEL_3:
  v24 = sub_1B63BE924();
  v26 = v25;

  if (!at)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1B63BE974();

  v27 = sub_1B63BE994();
  (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
  return AnonymousCredential.init(store:anonymousId:mapsToken:mapsTokenCreatedAt:mapsTokenTTL:positionIndex:)(store, v21, v23, v24, v26, v16, l, indexCopy);
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  v5 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + v3) = MEMORY[0x1E69E7CC0];
  selfCopy = self;

  v7 = OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges;
  swift_beginAccess();
  v8 = *(&selfCopy->super.super.isa + v7);
  *(&selfCopy->super.super.isa + v7) = v5;
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedAnonymousCredential();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62B7BB8(objectCopy, load);
}

- (NSDate)mapsTokenCreatedAt
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_1B62B4FA8(v6);

  v8 = sub_1B63BE994();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1B63BE954();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setMapsTokenCreatedAt:(id)at
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (at)
  {
    sub_1B63BE974();
    v9 = sub_1B63BE994();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B63BE994();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  sub_1B62B55A8(v8);
}

- (void)setMapsTokenTTL:(int64_t)l
{
  selfCopy = self;
  sub_1B62B5E84(l);
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62B620C(index);
}

- (id)fetchReviewedPlaces
{
  selfCopy = self;
  sub_1B62B64C0();

  type metadata accessor for ReviewedPlace();
  v3 = sub_1B63BEC94();

  return v3;
}

- (void)addReviewedPlace:(id)place
{
  placeCopy = place;
  selfCopy = self;
  sub_1B62B6D58(placeCopy, 0, sub_1B62B6C10, 0);
}

- (void)removeReviewedPlace:(id)place
{
  placeCopy = place;
  selfCopy = self;
  sub_1B62B6D58(placeCopy, 1, sub_1B62B6CC4, 0);
}

- (MSAnonymousCredential)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62B7240(object, store, loadCopy, parentCopy);
}

@end