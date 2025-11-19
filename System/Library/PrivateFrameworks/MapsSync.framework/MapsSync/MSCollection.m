@interface MSCollection
+ (Class)managedClass;
- (MSCollection)initWithCollectionDescription:(id)a3 image:(id)a4 imageUrl:(id)a5 positionIndex:(int64_t)a6 title:(id)a7;
- (MSCollection)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSCollection)initWithStore:(id)a3 collectionDescription:(id)a4 image:(id)a5 imageUrl:(id)a6 positionIndex:(int64_t)a7 title:(id)a8;
- (NSData)image;
- (id)fetchPlaces;
- (int)placesCount;
- (int64_t)positionIndex;
- (void)addPlace:(id)a3;
- (void)beforeDeleteWithManaged:(id)a3;
- (void)flushChanges;
- (void)removePlace:(id)a3;
- (void)setImage:(id)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
@end

@implementation MSCollection

- (int)placesCount
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LODWORD(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSCollection__placesCount);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (NSData)image
{
  v2 = self;
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
  v2 = self;
  sub_1B62902D8();

  type metadata accessor for CollectionItem();
  v3 = sub_1B63BEC94();

  return v3;
}

- (MSCollection)initWithCollectionDescription:(id)a3 image:(id)a4 imageUrl:(id)a5 positionIndex:(int64_t)a6 title:(id)a7
{
  v9 = a4;
  if (a3)
  {
    v10 = sub_1B63BEBD4();
    v12 = v11;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v13 = v9;
      v14 = a5;
      v15 = a7;
      v9 = sub_1B63BE924();
      v17 = v16;

      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v18 = 0;
      v20 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

LABEL_9:
      v21 = 0;
      v23 = 0;
      return Collection.init(collectionDescription:image:imageUrl:positionIndex:title:)(v10, v12, v9, v17, v18, v20, a6, v21, v23);
    }
  }

  v24 = a5;
  v25 = a7;
  v17 = 0xF000000000000000;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v18 = sub_1B63BEBD4();
  v20 = v19;

  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v21 = sub_1B63BEBD4();
  v23 = v22;

  return Collection.init(collectionDescription:image:imageUrl:positionIndex:title:)(v10, v12, v9, v17, v18, v20, a6, v21, v23);
}

- (MSCollection)initWithStore:(id)a3 collectionDescription:(id)a4 image:(id)a5 imageUrl:(id)a6 positionIndex:(int64_t)a7 title:(id)a8
{
  if (a4)
  {
    v12 = sub_1B63BEBD4();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = a3;
  if (a5)
  {
    v16 = a5;
    v17 = a6;
    v18 = a8;
    v19 = sub_1B63BE924();
    v21 = v20;

    if (a6)
    {
      goto LABEL_6;
    }

LABEL_9:
    v22 = 0;
    v24 = 0;
    if (a8)
    {
      goto LABEL_7;
    }

LABEL_10:
    v25 = 0;
    v27 = 0;
    return Collection.init(store:collectionDescription:image:imageUrl:positionIndex:title:)(v15, v12, v14, v19, v21, v22, v24, a7, v25, v27);
  }

  v28 = a6;
  v29 = a8;
  v19 = 0;
  v21 = 0xF000000000000000;
  if (!a6)
  {
    goto LABEL_9;
  }

LABEL_6:
  v22 = sub_1B63BEBD4();
  v24 = v23;

  if (!a8)
  {
    goto LABEL_10;
  }

LABEL_7:
  v25 = sub_1B63BEBD4();
  v27 = v26;

  return Collection.init(store:collectionDescription:image:imageUrl:positionIndex:title:)(v15, v12, v14, v19, v21, v22, v24, a7, v25, v27);
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

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_1B628422C(v8, a4, a5);
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

  sub_1B62CCEE4(v3, v7);
  sub_1B6284F64(v3, v7);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  v6 = *(&v5->super.super.isa + OBJC_IVAR___MSCollection__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B62C96E4(a3);
}

- (void)addPlace:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62CA2D0(v4);
}

- (void)removePlace:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B62CA548(v4);
}

- (MSCollection)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B6283680(a3, a4, v7, v6);
}

- (void)beforeDeleteWithManaged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B6383EA4(v4);
}

@end