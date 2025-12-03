@interface MSCachedCuratedCollection
+ (Class)managedClass;
- (BOOL)isTombstone;
- (MSCachedCuratedCollection)initWithCollectionDescription:(id)description curatedCollectionIdentifier:(unint64_t)identifier image:(id)image imageUrl:(id)url isTombstone:(BOOL)tombstone lastFetchedDate:(id)date lastSignificantChangeDate:(id)changeDate placesCount:(int)self0 positionIndex:(int64_t)self1 publisherAttribution:(id)self2 resultProviderIdentifier:(int)self3 title:(id)self4 titleLocale:(id)self5;
- (MSCachedCuratedCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSCachedCuratedCollection)initWithStore:(id)store collectionDescription:(id)description curatedCollectionIdentifier:(unint64_t)identifier image:(id)image imageUrl:(id)url isTombstone:(BOOL)tombstone lastFetchedDate:(id)date lastSignificantChangeDate:(id)self0 placesCount:(int)self1 positionIndex:(int64_t)self2 publisherAttribution:(id)self3 resultProviderIdentifier:(int)self4 title:(id)self5 titleLocale:(id)self6;
- (NSData)image;
- (void)setCuratedCollectionIdentifier:(unint64_t)identifier;
- (void)setImage:(id)image;
- (void)setIsTombstone:(BOOL)tombstone;
- (void)setPlacesCount:(int)count;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setResultProviderIdentifier:(int)identifier;
@end

@implementation MSCachedCuratedCollection

- (MSCachedCuratedCollection)initWithCollectionDescription:(id)description curatedCollectionIdentifier:(unint64_t)identifier image:(id)image imageUrl:(id)url isTombstone:(BOOL)tombstone lastFetchedDate:(id)date lastSignificantChangeDate:(id)changeDate placesCount:(int)self0 positionIndex:(int64_t)self1 publisherAttribution:(id)self2 resultProviderIdentifier:(int)self3 title:(id)self4 titleLocale:(id)self5
{
  tombstoneCopy = tombstone;
  identifierCopy = identifier;
  selfCopy = self;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - v24;
  if (description)
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

  if (image)
  {
    imageCopy = image;
    urlCopy = url;
    dateCopy = date;
    changeDateCopy = changeDate;
    attributionCopy = attribution;
    titleCopy = title;
    localeCopy = locale;
    v35 = sub_1B63BE924();
    v67 = v36;
    v68 = v35;

    if (url)
    {
      goto LABEL_6;
    }

LABEL_9:
    v65 = 0;
    v66 = 0;
    if (date)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  urlCopy2 = url;
  dateCopy2 = date;
  changeDateCopy2 = changeDate;
  attributionCopy2 = attribution;
  titleCopy2 = title;
  localeCopy2 = locale;
  v67 = 0xF000000000000000;
  v68 = 0;
  if (!url)
  {
    goto LABEL_9;
  }

LABEL_6:
  v37 = sub_1B63BEBD4();
  v65 = v38;
  v66 = v37;

  if (date)
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
  if (changeDate)
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
  if (attribution)
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
  if (title)
  {
    v52 = sub_1B63BEBD4();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  if (locale)
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
  v60 = sub_1B62C120C(v70, v69, identifierCopy, v68, v67, v66, v65, tombstoneCopy, v25, v51, count, index, v64, v63, providerIdentifier, v52, v54, v55, v57);
  sub_1B6284F64(v58, v59);
  return v60;
}

- (MSCachedCuratedCollection)initWithStore:(id)store collectionDescription:(id)description curatedCollectionIdentifier:(unint64_t)identifier image:(id)image imageUrl:(id)url isTombstone:(BOOL)tombstone lastFetchedDate:(id)date lastSignificantChangeDate:(id)self0 placesCount:(int)self1 positionIndex:(int64_t)self2 publisherAttribution:(id)self3 resultProviderIdentifier:(int)self4 title:(id)self5 titleLocale:(id)self6
{
  tombstoneCopy = tombstone;
  identifierCopy = identifier;
  selfCopy = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  if (description)
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

  storeCopy = store;
  if (image)
  {
    imageCopy = image;
    urlCopy = url;
    dateCopy = date;
    changeDateCopy = changeDate;
    attributionCopy = attribution;
    titleCopy = title;
    localeCopy = locale;
    v36 = sub_1B63BE924();
    v63 = v37;
    v64 = v36;

    if (url)
    {
      goto LABEL_6;
    }

LABEL_9:
    v61 = 0;
    v62 = 0;
    if (date)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  urlCopy2 = url;
  dateCopy2 = date;
  changeDateCopy2 = changeDate;
  attributionCopy2 = attribution;
  titleCopy2 = title;
  localeCopy2 = locale;
  v63 = 0xF000000000000000;
  v64 = 0;
  if (!url)
  {
    goto LABEL_9;
  }

LABEL_6:
  v38 = sub_1B63BEBD4();
  v61 = v39;
  v62 = v38;

  if (date)
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
  if (changeDate)
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
  if (attribution)
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

  if (title)
  {
    v52 = sub_1B63BEBD4();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  if (locale)
  {
    v55 = sub_1B63BEBD4();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  return CachedCuratedCollection.init(store:collectionDescription:curatedCollectionIdentifier:image:imageUrl:isTombstone:lastFetchedDate:lastSignificantChangeDate:placesCount:positionIndex:publisherAttribution:resultProviderIdentifier:title:titleLocale:)(storeCopy, v67, v66, identifierCopy, v64, v63, v62, v61, tombstoneCopy, v26, v24, count, index, v60, v59, providerIdentifier, v52, v54, v55, v57);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCachedCuratedCollection();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B62C0B98(objectCopy, load);
}

- (void)setCuratedCollectionIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  sub_1B62BB7E0(identifier);
}

- (NSData)image
{
  selfCopy = self;
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

- (void)setImage:(id)image
{
  imageCopy = image;
  if (image)
  {
    selfCopy = self;
    v5 = imageCopy;
    imageCopy = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B62C17A8(imageCopy, v7);
  sub_1B6284F64(imageCopy, v7);
}

- (BOOL)isTombstone
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSCachedCuratedCollection__isTombstone);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setIsTombstone:(BOOL)tombstone
{
  selfCopy = self;
  sub_1B62BC92C(tombstone);
}

- (void)setPlacesCount:(int)count
{
  selfCopy = self;
  sub_1B62BE508(count);
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62BE7BC(index);
}

- (void)setResultProviderIdentifier:(int)identifier
{
  selfCopy = self;
  sub_1B62BF188(identifier);
}

- (MSCachedCuratedCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62C0344(object, store, loadCopy, parentCopy);
}

@end