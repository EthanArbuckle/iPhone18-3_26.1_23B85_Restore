@interface MSCachedCuratedCollection
+ (Class)managedClass;
- (BOOL)isTombstone;
- (MSCachedCuratedCollection)initWithCollectionDescription:(id)a3 curatedCollectionIdentifier:(unint64_t)a4 image:(id)a5 imageUrl:(id)a6 isTombstone:(BOOL)a7 lastFetchedDate:(id)a8 lastSignificantChangeDate:(id)a9 placesCount:(int)a10 positionIndex:(int64_t)a11 publisherAttribution:(id)a12 resultProviderIdentifier:(int)a13 title:(id)a14 titleLocale:(id)a15;
- (MSCachedCuratedCollection)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSCachedCuratedCollection)initWithStore:(id)a3 collectionDescription:(id)a4 curatedCollectionIdentifier:(unint64_t)a5 image:(id)a6 imageUrl:(id)a7 isTombstone:(BOOL)a8 lastFetchedDate:(id)a9 lastSignificantChangeDate:(id)a10 placesCount:(int)a11 positionIndex:(int64_t)a12 publisherAttribution:(id)a13 resultProviderIdentifier:(int)a14 title:(id)a15 titleLocale:(id)a16;
- (NSData)image;
- (void)setCuratedCollectionIdentifier:(unint64_t)a3;
- (void)setImage:(id)a3;
- (void)setIsTombstone:(BOOL)a3;
- (void)setPlacesCount:(int)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setResultProviderIdentifier:(int)a3;
@end

@implementation MSCachedCuratedCollection

- (MSCachedCuratedCollection)initWithCollectionDescription:(id)a3 curatedCollectionIdentifier:(unint64_t)a4 image:(id)a5 imageUrl:(id)a6 isTombstone:(BOOL)a7 lastFetchedDate:(id)a8 lastSignificantChangeDate:(id)a9 placesCount:(int)a10 positionIndex:(int64_t)a11 publisherAttribution:(id)a12 resultProviderIdentifier:(int)a13 title:(id)a14 titleLocale:(id)a15
{
  v73 = a7;
  v71 = a4;
  v72 = self;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - v24;
  if (a3)
  {
    v26 = sub_1B63BEBD4();
    v69 = v27;
    v70 = v26;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  if (a5)
  {
    v28 = a5;
    v29 = a6;
    v30 = a8;
    v31 = a9;
    v32 = a12;
    v33 = a14;
    v34 = a15;
    v35 = sub_1B63BE924();
    v67 = v36;
    v68 = v35;

    if (a6)
    {
      goto LABEL_6;
    }

LABEL_9:
    v65 = 0;
    v66 = 0;
    if (a8)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v40 = a6;
  v41 = a8;
  v42 = a9;
  v43 = a12;
  v44 = a14;
  v45 = a15;
  v67 = 0xF000000000000000;
  v68 = 0;
  if (!a6)
  {
    goto LABEL_9;
  }

LABEL_6:
  v37 = sub_1B63BEBD4();
  v65 = v38;
  v66 = v37;

  if (a8)
  {
LABEL_7:
    sub_1B63BE974();

    v39 = sub_1B63BE994();
    (*(*(v39 - 8) + 56))(v25, 0, 1, v39);
    goto LABEL_11;
  }

LABEL_10:
  v46 = sub_1B63BE994();
  (*(*(v46 - 8) + 56))(v25, 1, 1, v46);
LABEL_11:
  if (a9)
  {
    sub_1B63BE974();

    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = sub_1B63BE994();
  (*(*(v48 - 8) + 56))(v23, v47, 1, v48);
  if (a12)
  {
    v49 = sub_1B63BEBD4();
    v63 = v50;
    v64 = v49;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v51 = v23;
  if (a14)
  {
    v52 = sub_1B63BEBD4();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  if (a15)
  {
    v55 = sub_1B63BEBD4();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v59 = v67;
  v58 = v68;
  v60 = sub_1B62C120C(v70, v69, v71, v68, v67, v66, v65, v73, v25, v51, a10, a11, v64, v63, a13, v52, v54, v55, v57);
  sub_1B6284F64(v58, v59);
  return v60;
}

- (MSCachedCuratedCollection)initWithStore:(id)a3 collectionDescription:(id)a4 curatedCollectionIdentifier:(unint64_t)a5 image:(id)a6 imageUrl:(id)a7 isTombstone:(BOOL)a8 lastFetchedDate:(id)a9 lastSignificantChangeDate:(id)a10 placesCount:(int)a11 positionIndex:(int64_t)a12 publisherAttribution:(id)a13 resultProviderIdentifier:(int)a14 title:(id)a15 titleLocale:(id)a16
{
  v68 = a8;
  v69 = a5;
  v70 = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  if (a4)
  {
    v27 = sub_1B63BEBD4();
    v66 = v28;
    v67 = v27;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v65 = a3;
  if (a6)
  {
    v29 = a6;
    v30 = a7;
    v31 = a9;
    v32 = a10;
    v33 = a13;
    v34 = a15;
    v35 = a16;
    v36 = sub_1B63BE924();
    v63 = v37;
    v64 = v36;

    if (a7)
    {
      goto LABEL_6;
    }

LABEL_9:
    v61 = 0;
    v62 = 0;
    if (a9)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v41 = a7;
  v42 = a9;
  v43 = a10;
  v44 = a13;
  v45 = a15;
  v46 = a16;
  v63 = 0xF000000000000000;
  v64 = 0;
  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_6:
  v38 = sub_1B63BEBD4();
  v61 = v39;
  v62 = v38;

  if (a9)
  {
LABEL_7:
    sub_1B63BE974();

    v40 = sub_1B63BE994();
    (*(*(v40 - 8) + 56))(v26, 0, 1, v40);
    goto LABEL_11;
  }

LABEL_10:
  v47 = sub_1B63BE994();
  (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
LABEL_11:
  if (a10)
  {
    sub_1B63BE974();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = sub_1B63BE994();
  (*(*(v49 - 8) + 56))(v24, v48, 1, v49);
  if (a13)
  {
    v50 = sub_1B63BEBD4();
    v59 = v51;
    v60 = v50;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  if (a15)
  {
    v52 = sub_1B63BEBD4();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  if (a16)
  {
    v55 = sub_1B63BEBD4();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  return CachedCuratedCollection.init(store:collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(v65, v67, v66, v69, v64, v63, v62, v61, v68, v26, v24, a11, a12, v60, v59, a14, v52, v54, v55, v57);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B62C0B98(v7, a4);
}

- (void)setCuratedCollectionIdentifier:(unint64_t)a3
{
  v4 = self;
  sub_1B62BB7E0(a3);
}

- (NSData)image
{
  v2 = self;
  v3 = sub_1B62BBAA8();
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

- (void)setImage:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B62C17A8(v3, v7);
  sub_1B6284F64(v3, v7);
}

- (BOOL)isTombstone
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOBYTE(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSCachedCuratedCollection__isTombstone);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setIsTombstone:(BOOL)a3
{
  v4 = self;
  sub_1B62BC92C(a3);
}

- (void)setPlacesCount:(int)a3
{
  v4 = self;
  sub_1B62BE508(a3);
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B62BE7BC(a3);
}

- (void)setResultProviderIdentifier:(int)a3
{
  v4 = self;
  sub_1B62BF188(a3);
}

- (MSCachedCuratedCollection)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B62C0344(a3, a4, v7, v6);
}

@end