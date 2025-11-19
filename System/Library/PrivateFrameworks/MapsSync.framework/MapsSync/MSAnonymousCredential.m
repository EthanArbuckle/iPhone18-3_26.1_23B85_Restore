@interface MSAnonymousCredential
+ (Class)managedClass;
- (MSAnonymousCredential)initWithAnonymousId:(id)a3 mapsToken:(id)a4 mapsTokenCreatedAt:(id)a5 mapsTokenTTL:(int64_t)a6 positionIndex:(int64_t)a7;
- (MSAnonymousCredential)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSAnonymousCredential)initWithStore:(id)a3 anonymousId:(id)a4 mapsToken:(id)a5 mapsTokenCreatedAt:(id)a6 mapsTokenTTL:(int64_t)a7 positionIndex:(int64_t)a8;
- (NSDate)mapsTokenCreatedAt;
- (id)fetchReviewedPlaces;
- (void)addReviewedPlace:(id)a3;
- (void)flushChanges;
- (void)removeReviewedPlace:(id)a3;
- (void)setMapsTokenCreatedAt:(id)a3;
- (void)setMapsTokenTTL:(int64_t)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
@end

@implementation MSAnonymousCredential

- (MSAnonymousCredential)initWithAnonymousId:(id)a3 mapsToken:(id)a4 mapsTokenCreatedAt:(id)a5 mapsTokenTTL:(int64_t)a6 positionIndex:(int64_t)a7
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v30 - v14;
  if (a3)
  {
    v16 = a4;
    v17 = a5;
    v18 = a3;
    a3 = sub_1B63BE924();
    v20 = v19;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = 0;
    v23 = 0xF000000000000000;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v27 = sub_1B63BE994();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    goto LABEL_8;
  }

  v25 = a4;
  v26 = a5;
  v20 = 0xF000000000000000;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v21 = sub_1B63BE924();
  v23 = v22;

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1B63BE974();

  v24 = sub_1B63BE994();
  (*(*(v24 - 8) + 56))(v15, 0, 1, v24);
LABEL_8:
  v28 = sub_1B62B7F34(a3, v20, v21, v23, v15, a6, a7);
  sub_1B6284F64(v21, v23);
  sub_1B6284F64(a3, v20);
  return v28;
}

- (MSAnonymousCredential)initWithStore:(id)a3 anonymousId:(id)a4 mapsToken:(id)a5 mapsTokenCreatedAt:(id)a6 mapsTokenTTL:(int64_t)a7 positionIndex:(int64_t)a8
{
  v34 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33 - v15;
  if (a4)
  {
    v17 = a3;
    v18 = a5;
    v19 = a6;
    v20 = a4;
    v21 = sub_1B63BE924();
    v23 = v22;

    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    v26 = 0xF000000000000000;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v31 = sub_1B63BE994();
    (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
    return AnonymousCredential.init(store:anonymousId:mapsToken:mapsTokenCreatedAt:mapsTokenTTL:positionIndex:)(a3, v21, v23, v24, v26, v16, a7, v34);
  }

  v28 = a3;
  v29 = a5;
  v30 = a6;
  v21 = 0;
  v23 = 0xF000000000000000;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v24 = sub_1B63BE924();
  v26 = v25;

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1B63BE974();

  v27 = sub_1B63BE994();
  (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
  return AnonymousCredential.init(store:anonymousId:mapsToken:mapsTokenCreatedAt:mapsTokenTTL:positionIndex:)(a3, v21, v23, v24, v26, v16, a7, v34);
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  v5 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + v3) = MEMORY[0x1E69E7CC0];
  v6 = self;

  v7 = OBJC_IVAR___MSAnonymousCredential__reviewedPlaceChanges;
  swift_beginAccess();
  v8 = *(&v6->super.super.isa + v7);
  *(&v6->super.super.isa + v7) = v5;
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedAnonymousCredential();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62B7BB8(v7, a4);
}

- (NSDate)mapsTokenCreatedAt
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
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

- (void)setMapsTokenCreatedAt:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
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

  v11 = self;
  sub_1B62B55A8(v8);
}

- (void)setMapsTokenTTL:(int64_t)a3
{
  v4 = self;
  sub_1B62B5E84(a3);
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B62B620C(a3);
}

- (id)fetchReviewedPlaces
{
  v2 = self;
  sub_1B62B64C0();

  type metadata accessor for ReviewedPlace();
  v3 = sub_1B63BEC94();

  return v3;
}

- (void)addReviewedPlace:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62B6D58(v4, 0, sub_1B62B6C10, 0);
}

- (void)removeReviewedPlace:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62B6D58(v4, 1, sub_1B62B6CC4, 0);
}

- (MSAnonymousCredential)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B62B7240(a3, a4, v7, v6);
}

@end