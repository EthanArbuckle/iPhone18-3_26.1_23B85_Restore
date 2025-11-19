@interface MSHistorySearchItem
+ (Class)managedClass;
- (MSHistorySearchItem)initWithGeoMapRegion:(id)a3 language:(id)a4 locationDisplay:(id)a5 query:(id)a6;
- (MSHistorySearchItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSHistorySearchItem)initWithStore:(id)a3 geoMapRegion:(id)a4 language:(id)a5 locationDisplay:(id)a6 query:(id)a7;
- (NSData)geoMapRegion;
- (void)setGeoMapRegion:(id)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
@end

@implementation MSHistorySearchItem

- (MSHistorySearchItem)initWithGeoMapRegion:(id)a3 language:(id)a4 locationDisplay:(id)a5 query:(id)a6
{
  v9 = a3;
  if (a3)
  {
    v10 = a4;
    v11 = a5;
    v12 = a6;
    v13 = v9;
    v9 = sub_1B63BE924();
    v15 = v14;

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = a4;
    v26 = a5;
    v27 = a6;
    v15 = 0xF000000000000000;
    if (a4)
    {
LABEL_3:
      v16 = sub_1B63BEBD4();
      v18 = v17;

      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v19 = 0;
      v21 = 0;
      if (a6)
      {
        goto LABEL_5;
      }

LABEL_9:
      v22 = 0;
      v24 = 0;
      return HistorySearchItem.init(geoMapRegion:language:locationDisplay:query:)(v9, v15, v16, v18, v19, v21, v22, v24);
    }
  }

  v16 = 0;
  v18 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v19 = sub_1B63BEBD4();
  v21 = v20;

  if (!a6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v22 = sub_1B63BEBD4();
  v24 = v23;

  return HistorySearchItem.init(geoMapRegion:language:locationDisplay:query:)(v9, v15, v16, v18, v19, v21, v22, v24);
}

- (MSHistorySearchItem)initWithStore:(id)a3 geoMapRegion:(id)a4 language:(id)a5 locationDisplay:(id)a6 query:(id)a7
{
  v10 = a4;
  if (a4)
  {
    v12 = a3;
    v13 = a5;
    v14 = a6;
    v15 = a7;
    v16 = v10;
    v10 = sub_1B63BE924();
    v18 = v17;

    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = a3;
    v29 = a5;
    v30 = a6;
    v31 = a7;
    v18 = 0xF000000000000000;
    if (a5)
    {
LABEL_3:
      v19 = sub_1B63BEBD4();
      v21 = v20;

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v22 = 0;
      v24 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

LABEL_9:
      v25 = 0;
      v27 = 0;
      return HistorySearchItem.init(store:geoMapRegion:language:locationDisplay:query:)(a3, v10, v18, v19, v21, v22, v24, v25, v27);
    }
  }

  v19 = 0;
  v21 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v22 = sub_1B63BEBD4();
  v24 = v23;

  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v25 = sub_1B63BEBD4();
  v27 = v26;

  return HistorySearchItem.init(store:geoMapRegion:language:locationDisplay:query:)(a3, v10, v18, v19, v21, v22, v24, v25, v27);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistorySearchItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B630586C(v7, a4);
}

- (NSData)geoMapRegion
{
  v2 = self;
  v3 = sub_1B6303940();
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

- (void)setGeoMapRegion:(id)a3
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

  sub_1B6305AF8(v3, v7);
  sub_1B6284F64(v3, v7);
}

- (MSHistorySearchItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  *(&self->super.super.super.isa + OBJC_IVAR___MSHistorySearchItem__geoMapRegion) = xmmword_1B63C3E40;
  v10 = (&self->super.super.super.isa + OBJC_IVAR___MSHistorySearchItem__language);
  *v10 = 0;
  v10[1] = 0;
  v11 = (&self->super.super.super.isa + OBJC_IVAR___MSHistorySearchItem__locationDisplay);
  *v11 = 0;
  v11[1] = 0;
  v12 = (&self->super.super.super.isa + OBJC_IVAR___MSHistorySearchItem__query);
  *v12 = 0;
  v12[1] = 0;
  v13 = a3;
  return sub_1B62F0450(a3, a4, v7, v6);
}

@end