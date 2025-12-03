@interface MSHistorySearchItem
+ (Class)managedClass;
- (MSHistorySearchItem)initWithGeoMapRegion:(id)region language:(id)language locationDisplay:(id)display query:(id)query;
- (MSHistorySearchItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSHistorySearchItem)initWithStore:(id)store geoMapRegion:(id)region language:(id)language locationDisplay:(id)display query:(id)query;
- (NSData)geoMapRegion;
- (void)setGeoMapRegion:(id)region;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSHistorySearchItem

- (MSHistorySearchItem)initWithGeoMapRegion:(id)region language:(id)language locationDisplay:(id)display query:(id)query
{
  regionCopy = region;
  if (region)
  {
    languageCopy = language;
    displayCopy = display;
    queryCopy = query;
    v13 = regionCopy;
    regionCopy = sub_1B63BE924();
    v15 = v14;

    if (language)
    {
      goto LABEL_3;
    }
  }

  else
  {
    languageCopy2 = language;
    displayCopy2 = display;
    queryCopy2 = query;
    v15 = 0xF000000000000000;
    if (language)
    {
LABEL_3:
      v16 = sub_1B63BEBD4();
      v18 = v17;

      if (display)
      {
        goto LABEL_4;
      }

LABEL_8:
      v19 = 0;
      v21 = 0;
      if (query)
      {
        goto LABEL_5;
      }

LABEL_9:
      v22 = 0;
      v24 = 0;
      return HistorySearchItem.init(geoMapRegion:language:locationDisplay:query:)(regionCopy, v15, v16, v18, v19, v21, v22, v24);
    }
  }

  v16 = 0;
  v18 = 0;
  if (!display)
  {
    goto LABEL_8;
  }

LABEL_4:
  v19 = sub_1B63BEBD4();
  v21 = v20;

  if (!query)
  {
    goto LABEL_9;
  }

LABEL_5:
  v22 = sub_1B63BEBD4();
  v24 = v23;

  return HistorySearchItem.init(geoMapRegion:language:locationDisplay:query:)(regionCopy, v15, v16, v18, v19, v21, v22, v24);
}

- (MSHistorySearchItem)initWithStore:(id)store geoMapRegion:(id)region language:(id)language locationDisplay:(id)display query:(id)query
{
  regionCopy = region;
  if (region)
  {
    storeCopy = store;
    languageCopy = language;
    displayCopy = display;
    queryCopy = query;
    v16 = regionCopy;
    regionCopy = sub_1B63BE924();
    v18 = v17;

    if (language)
    {
      goto LABEL_3;
    }
  }

  else
  {
    storeCopy2 = store;
    languageCopy2 = language;
    displayCopy2 = display;
    queryCopy2 = query;
    v18 = 0xF000000000000000;
    if (language)
    {
LABEL_3:
      v19 = sub_1B63BEBD4();
      v21 = v20;

      if (display)
      {
        goto LABEL_4;
      }

LABEL_8:
      v22 = 0;
      v24 = 0;
      if (query)
      {
        goto LABEL_5;
      }

LABEL_9:
      v25 = 0;
      v27 = 0;
      return HistorySearchItem.init(store:geoMapRegion:language:locationDisplay:query:)(store, regionCopy, v18, v19, v21, v22, v24, v25, v27);
    }
  }

  v19 = 0;
  v21 = 0;
  if (!display)
  {
    goto LABEL_8;
  }

LABEL_4:
  v22 = sub_1B63BEBD4();
  v24 = v23;

  if (!query)
  {
    goto LABEL_9;
  }

LABEL_5:
  v25 = sub_1B63BEBD4();
  v27 = v26;

  return HistorySearchItem.init(store:geoMapRegion:language:locationDisplay:query:)(store, regionCopy, v18, v19, v21, v22, v24, v25, v27);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedHistorySearchItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B630586C(objectCopy, load);
}

- (NSData)geoMapRegion
{
  selfCopy = self;
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

- (void)setGeoMapRegion:(id)region
{
  regionCopy = region;
  if (region)
  {
    selfCopy = self;
    v5 = regionCopy;
    regionCopy = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B6305AF8(regionCopy, v7);
  sub_1B6284F64(regionCopy, v7);
}

- (MSHistorySearchItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
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
  objectCopy = object;
  return sub_1B62F0450(object, store, loadCopy, parentCopy);
}

@end