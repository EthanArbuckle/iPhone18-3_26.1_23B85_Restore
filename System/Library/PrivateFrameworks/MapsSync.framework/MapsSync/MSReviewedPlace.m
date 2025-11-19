@interface MSReviewedPlace
+ (Class)managedClass;
+ (id)strippedMapItemWith:(id)a3;
- (BOOL)hasUserReviewed;
- (MSAnonymousCredential)anonymousCredential;
- (MSCommunityID)communityID;
- (MSReviewedPlace)initWithHasUserReviewed:(BOOL)a3 lastSuggestedReviewDate:(id)a4 latitude:(id)a5 longitude:(id)a6 mapItemIdComparableRepresentation:(id)a7 mapItemLastRefreshed:(id)a8 mapItemStorage:(id)a9 muid:(unint64_t)a10 positionIndex:(int64_t)a11 rating:(id)a12 resultProviderIdentifier:(id)a13 uploadedPhotosCount:(int)a14 version:(signed __int16)a15;
- (MSReviewedPlace)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSReviewedPlace)initWithStore:(id)a3 hasUserReviewed:(BOOL)a4 lastSuggestedReviewDate:(id)a5 latitude:(id)a6 longitude:(id)a7 mapItemIdComparableRepresentation:(id)a8 mapItemLastRefreshed:(id)a9 mapItemStorage:(id)a10 muid:(unint64_t)a11 positionIndex:(int64_t)a12 rating:(id)a13 resultProviderIdentifier:(id)a14 uploadedPhotosCount:(int)a15 version:(signed __int16)a16;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)rating;
- (NSNumber)resultProviderIdentifier;
- (int)uploadedPhotosCount;
- (signed)version;
- (void)setAnonymousCredential:(id)a3;
- (void)setCommunityID:(id)a3;
- (void)setHasUserReviewed:(BOOL)a3;
- (void)setLatitude:(id)a3;
- (void)setLongitude:(id)a3;
- (void)setMuid:(unint64_t)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setRating:(id)a3;
- (void)setResultProviderIdentifier:(id)a3;
- (void)setUploadedPhotosCount:(int)a3;
- (void)setVersion:(signed __int16)a3;
@end

@implementation MSReviewedPlace

- (MSReviewedPlace)initWithHasUserReviewed:(BOOL)a3 lastSuggestedReviewDate:(id)a4 latitude:(id)a5 longitude:(id)a6 mapItemIdComparableRepresentation:(id)a7 mapItemLastRefreshed:(id)a8 mapItemStorage:(id)a9 muid:(unint64_t)a10 positionIndex:(int64_t)a11 rating:(id)a12 resultProviderIdentifier:(id)a13 uploadedPhotosCount:(int)a14 version:(signed __int16)a15
{
  v58 = a3;
  v59 = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v52 - v25;
  if (a4)
  {
    sub_1B63BE974();
    v27 = sub_1B63BE994();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  else
  {
    v28 = sub_1B63BE994();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
  }

  v56 = a5;
  v55 = a6;
  if (a7)
  {
    v29 = a7;
    v30 = a8;
    v31 = a9;
    v32 = a12;
    v33 = a13;
    v34 = sub_1B63BE924();
    v53 = v35;
    v54 = v34;
  }

  else
  {
    v36 = a8;
    v37 = a9;
    v38 = a12;
    v39 = a13;
    v53 = 0xF000000000000000;
    v54 = 0;
  }

  v57 = v26;
  if (a8)
  {
    sub_1B63BE974();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_1B63BE994();
  v42 = v24;
  (*(*(v41 - 8) + 56))(v24, v40, 1, v41);
  if (a9)
  {
    v43 = sub_1B63BE924();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xF000000000000000;
  }

  v46 = v56;
  v48 = v54;
  v47 = v55;
  v49 = v53;
  v50 = sub_1B6319B20(v58, v57, v56, v55, v54, v53, v42, v43, v45, a10, a11, a12, a13, a14, a15);

  sub_1B6284F64(v43, v45);
  sub_1B6284F64(v48, v49);

  return v50;
}

- (MSReviewedPlace)initWithStore:(id)a3 hasUserReviewed:(BOOL)a4 lastSuggestedReviewDate:(id)a5 latitude:(id)a6 longitude:(id)a7 mapItemIdComparableRepresentation:(id)a8 mapItemLastRefreshed:(id)a9 mapItemStorage:(id)a10 muid:(unint64_t)a11 positionIndex:(int64_t)a12 rating:(id)a13 resultProviderIdentifier:(id)a14 uploadedPhotosCount:(int)a15 version:(signed __int16)a16
{
  v53 = a4;
  v54 = self;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v47 - v26;
  if (a5)
  {
    sub_1B63BE974();
    v28 = sub_1B63BE994();
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  }

  else
  {
    v29 = sub_1B63BE994();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  }

  v51 = a3;
  v50 = a6;
  v49 = a7;
  v52 = a14;
  if (a8)
  {
    v30 = a8;
    v31 = a9;
    v32 = a10;
    v33 = a13;
    v34 = a14;
    v35 = sub_1B63BE924();
    v47 = v36;
    v48 = v35;

    if (a9)
    {
LABEL_6:
      sub_1B63BE974();

      v37 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v38 = a9;
    v39 = a10;
    v40 = a13;
    v41 = a14;
    v47 = 0xF000000000000000;
    v48 = 0;
    if (a9)
    {
      goto LABEL_6;
    }
  }

  v37 = 1;
LABEL_9:
  v42 = sub_1B63BE994();
  (*(*(v42 - 8) + 56))(v25, v37, 1, v42);
  if (a10)
  {
    v43 = sub_1B63BE924();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xF000000000000000;
  }

  return ReviewedPlace.init(store:hasUserReviewed:lastSuggestedReviewDate:latitude:longitude:mapItemIdComparableRepresentation:mapItemLastRefreshed:mapItemStorage:muid:positionIndex:rating:resultProviderIdentifier:uploadedPhotosCount:version:)(v51, v53, v27, v50, v49, v48, v47, v25, v43, v45, a11, a12, a13, v52, a15, a16);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedReviewedPlace();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B6319544(v7, a4);
}

- (BOOL)hasUserReviewed
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOBYTE(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSReviewedPlace__hasUserReviewed);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setHasUserReviewed:(BOOL)a3
{
  v4 = self;
  sub_1B63136AC(a3);
}

- (NSNumber)latitude
{
  v2 = self;
  v3 = sub_1B6314258();

  return v3;
}

- (void)setLatitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B631A028(a3);
}

- (NSNumber)longitude
{
  v2 = self;
  v3 = sub_1B63146F4();

  return v3;
}

- (void)setLongitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B631A200(a3);
}

- (void)setMuid:(unint64_t)a3
{
  v4 = self;
  sub_1B631696C(a3);
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B6316C1C(a3);
}

- (NSNumber)rating
{
  v2 = self;
  v3 = sub_1B6316F14();

  return v3;
}

- (void)setRating:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B631A8CC(a3);
}

- (NSNumber)resultProviderIdentifier
{
  v2 = self;
  v3 = sub_1B63173B0();

  return v3;
}

- (void)setResultProviderIdentifier:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B631AAA4(a3);
}

- (int)uploadedPhotosCount
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LODWORD(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSReviewedPlace__uploadedPhotosCount);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setUploadedPhotosCount:(int)a3
{
  v4 = self;
  sub_1B6317A38(a3);
}

- (signed)version
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOWORD(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSReviewedPlace__version);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setVersion:(signed __int16)a3
{
  v4 = self;
  sub_1B6317E00(a3);
}

- (MSAnonymousCredential)anonymousCredential
{
  v2 = self;
  v3 = sub_1B63180F0();

  return v3;
}

- (void)setAnonymousCredential:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B6318524(a3);
}

- (MSCommunityID)communityID
{
  v2 = self;
  v3 = sub_1B6318628();

  return v3;
}

- (void)setCommunityID:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B6318B00(a3);
}

- (MSReviewedPlace)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B6318D18(a3, a4, v7, v6);
}

+ (id)strippedMapItemWith:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  result = [v4 mapItemStorageForGEOMapItem:v5 forUseType:4];
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end