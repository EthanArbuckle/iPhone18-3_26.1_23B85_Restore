@interface MSCollection
+ (Class)managedClass;
- (MSCollection)initWithCollectionDescription:(id)description image:(id)image imageUrl:(id)url positionIndex:(int64_t)index title:(id)title;
- (MSCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSCollection)initWithStore:(id)store collectionDescription:(id)description image:(id)image imageUrl:(id)url positionIndex:(int64_t)index title:(id)title;
- (NSData)image;
- (id)fetchPlaces;
- (int)placesCount;
- (int64_t)positionIndex;
- (void)addPlace:(id)place;
- (void)beforeDeleteWithManaged:(id)managed;
- (void)flushChanges;
- (void)removePlace:(id)place;
- (void)setImage:(id)image;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSCollection

- (int)placesCount
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSCollection__placesCount);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (NSData)image
{
  selfCopy = self;
  v3 = sub_1B6294B38();
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

- (id)fetchPlaces
{
  selfCopy = self;
  sub_1B62902D8();

  type metadata accessor for CollectionItem();
  v3 = sub_1B63BEC94();

  return v3;
}

- (MSCollection)initWithCollectionDescription:(id)description image:(id)image imageUrl:(id)url positionIndex:(int64_t)index title:(id)title
{
  imageCopy = image;
  if (description)
  {
    v10 = sub_1B63BEBD4();
    v12 = v11;
    if (imageCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (image)
    {
LABEL_3:
      v13 = imageCopy;
      urlCopy = url;
      titleCopy = title;
      imageCopy = sub_1B63BE924();
      v17 = v16;

      if (url)
      {
        goto LABEL_4;
      }

LABEL_8:
      v18 = 0;
      v20 = 0;
      if (title)
      {
        goto LABEL_5;
      }

LABEL_9:
      v21 = 0;
      v23 = 0;
      return Collection.init(collectionDescription:image:imageUrl:positionIndex:title:)(v10, v12, imageCopy, v17, v18, v20, index, v21, v23);
    }
  }

  urlCopy2 = url;
  titleCopy2 = title;
  v17 = 0xF000000000000000;
  if (!url)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = sub_1B63BEBD4();
  v20 = v19;

  if (!title)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = sub_1B63BEBD4();
  v23 = v22;

  return Collection.init(collectionDescription:image:imageUrl:positionIndex:title:)(v10, v12, imageCopy, v17, v18, v20, index, v21, v23);
}

- (MSCollection)initWithStore:(id)store collectionDescription:(id)description image:(id)image imageUrl:(id)url positionIndex:(int64_t)index title:(id)title
{
  if (description)
  {
    v12 = sub_1B63BEBD4();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  storeCopy = store;
  if (image)
  {
    imageCopy = image;
    urlCopy = url;
    titleCopy = title;
    v19 = sub_1B63BE924();
    v21 = v20;

    if (url)
    {
      goto LABEL_6;
    }

LABEL_9:
    v22 = 0;
    v24 = 0;
    if (title)
    {
      goto LABEL_7;
    }

LABEL_10:
    v25 = 0;
    v27 = 0;
    return Collection.init(store:collectionDescription:image:imageUrl:positionIndex:title:)(storeCopy, v12, v14, v19, v21, v22, v24, index, v25, v27);
  }

  urlCopy2 = url;
  titleCopy2 = title;
  v19 = 0;
  v21 = 0xF000000000000000;
  if (!url)
  {
    goto LABEL_9;
  }

LABEL_6:
  v22 = sub_1B63BEBD4();
  v24 = v23;

  if (!title)
  {
    goto LABEL_10;
  }

LABEL_7:
  v25 = sub_1B63BEBD4();
  v27 = v26;

  return Collection.init(store:collectionDescription:image:imageUrl:positionIndex:title:)(storeCopy, v12, v14, v19, v21, v22, v24, index, v25, v27);
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
  type metadata accessor for MapsSyncManagedCollection();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B628422C(objectCopy, load, parent);
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

  sub_1B62CCEE4(imageCopy, v7);
  sub_1B6284F64(imageCopy, v7);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSCollection__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62C96E4(index);
}

- (void)addPlace:(id)place
{
  placeCopy = place;
  selfCopy = self;
  sub_1B62CA2D0(placeCopy);
}

- (void)removePlace:(id)place
{
  placeCopy = place;
  selfCopy = self;
  sub_1B62CA548(placeCopy);
}

- (MSCollection)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B6283680(object, store, loadCopy, parentCopy);
}

- (void)beforeDeleteWithManaged:(id)managed
{
  managedCopy = managed;
  selfCopy = self;
  sub_1B6383EA4(managedCopy);
}

@end