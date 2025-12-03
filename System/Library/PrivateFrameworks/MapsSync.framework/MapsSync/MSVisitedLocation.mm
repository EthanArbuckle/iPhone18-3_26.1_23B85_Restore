@interface MSVisitedLocation
+ (Class)managedClass;
+ (NSString)key;
+ (id)optionsWith:(id)with;
- (BOOL)hidden;
- (GEOMapItemStorage)mapItemStorage;
- (MSVisitedLocation)initWithEnclosingRegionMuid:(id)muid enclosingRegionProvider:(id)provider hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemCity:(id)self0 mapItemIdentifier:(id)self1 mapItemLastRefreshed:(id)self2 mapItemName:(id)self3 mapItemStorage:(id)self4 mapItemTopLevelCategory:(int)self5 muid:(id)self6;
- (MSVisitedLocation)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSVisitedLocation)initWithStore:(id)store enclosingRegionMuid:(id)muid enclosingRegionProvider:(id)provider hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)self0 mapItemCity:(id)self1 mapItemIdentifier:(id)self2 mapItemLastRefreshed:(id)self3 mapItemName:(id)self4 mapItemStorage:(id)self5 mapItemTopLevelCategory:(int)self6 muid:(id)self7;
- (NSNumber)enclosingRegionMuid;
- (NSNumber)enclosingRegionProvider;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (id)fetchVisits;
- (int)mapItemTopLevelCategory;
- (void)addVisit:(id)visit;
- (void)flushChanges;
- (void)noteWithCompletionHandler:(id)handler;
- (void)removeVisit:(id)visit;
- (void)setEnclosingRegionMuid:(id)muid;
- (void)setEnclosingRegionProvider:(id)provider;
- (void)setHidden:(BOOL)hidden;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemLastRefreshed:(id)refreshed;
- (void)setMapItemStorage:(id)storage;
- (void)setMapItemTopLevelCategory:(int)category;
- (void)setMuid:(id)muid;
- (void)setNote:(NSString *)note completionHandler:(id)handler;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
@end

@implementation MSVisitedLocation

- (MSVisitedLocation)initWithEnclosingRegionMuid:(id)muid enclosingRegionProvider:(id)provider hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemCity:(id)self0 mapItemIdentifier:(id)self1 mapItemLastRefreshed:(id)self2 mapItemName:(id)self3 mapItemStorage:(id)self4 mapItemTopLevelCategory:(int)self5 muid:(id)self6
{
  longitudeCopy = longitude;
  hiddenCopy = hidden;
  selfCopy = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v50 - v22;
  if (address)
  {
    v24 = sub_1B63BEBD4();
    v58 = v25;
    v59 = v24;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  nameCopy = name;
  if (category)
  {
    v26 = sub_1B63BEBD4();
    v56 = v27;
    v57 = v26;
    if (city)
    {
LABEL_6:
      v54 = sub_1B63BEBD4();
      v50 = v28;
      goto LABEL_9;
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
    if (city)
    {
      goto LABEL_6;
    }
  }

  v54 = 0;
  v50 = 0;
LABEL_9:
  muidCopy = muid;
  providerCopy = provider;
  latitudeCopy = latitude;
  longitudeCopy = longitudeCopy;
  identifierCopy = identifier;
  refreshedCopy = refreshed;
  v31 = nameCopy;
  storageCopy = storage;
  v33 = a16;
  if (identifierCopy)
  {
    v34 = sub_1B63BEBD4();
    v36 = v35;

    if (refreshedCopy)
    {
LABEL_11:
      sub_1B63BE974();

      v37 = sub_1B63BE994();
      (*(*(v37 - 8) + 56))(v23, 0, 1, v37);
      goto LABEL_14;
    }
  }

  else
  {
    v34 = 0;
    v36 = 0;
    if (refreshedCopy)
    {
      goto LABEL_11;
    }
  }

  v38 = sub_1B63BE994();
  (*(*(v38 - 8) + 56))(v23, 1, 1, v38);
LABEL_14:
  if (v31)
  {
    v39 = sub_1B63BEBD4();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v49 = v23;
  v48 = v34;
  v42 = muidCopy;
  v44 = latitudeCopy;
  v43 = providerCopy;
  v45 = longitudeCopy;
  v46 = sub_1B6347EF8(muidCopy, providerCopy, hiddenCopy, latitudeCopy, longitudeCopy, v59, v58, v57, v56, v54, v50, v48, v36, v49, v39, v41, storageCopy, levelCategory, v33);

  return v46;
}

- (MSVisitedLocation)initWithStore:(id)store enclosingRegionMuid:(id)muid enclosingRegionProvider:(id)provider hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)self0 mapItemCity:(id)self1 mapItemIdentifier:(id)self2 mapItemLastRefreshed:(id)self3 mapItemName:(id)self4 mapItemStorage:(id)self5 mapItemTopLevelCategory:(int)self6 muid:(id)self7
{
  longitudeCopy = longitude;
  latitudeCopy = latitude;
  hiddenCopy = hidden;
  selfCopy = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v44 - v22;
  if (address)
  {
    v24 = sub_1B63BEBD4();
    v55 = v25;
    v56 = v24;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v45 = a17;
  if (category)
  {
    v26 = sub_1B63BEBD4();
    v53 = v27;
    v54 = v26;
    if (city)
    {
LABEL_6:
      v28 = sub_1B63BEBD4();
      v51 = v29;
      v52 = v28;
      goto LABEL_9;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
    if (city)
    {
      goto LABEL_6;
    }
  }

  v51 = 0;
  v52 = 0;
LABEL_9:
  storeCopy = store;
  muidCopy = muid;
  providerCopy = provider;
  latitudeCopy = latitudeCopy;
  longitudeCopy = longitudeCopy;
  identifierCopy = identifier;
  refreshedCopy = refreshed;
  nameCopy = name;
  storageCopy = storage;
  v34 = v45;
  if (identifierCopy)
  {
    v35 = sub_1B63BEBD4();
    v37 = v36;

    if (refreshedCopy)
    {
LABEL_11:
      sub_1B63BE974();

      v38 = sub_1B63BE994();
      (*(*(v38 - 8) + 56))(v23, 0, 1, v38);
      goto LABEL_14;
    }
  }

  else
  {
    v35 = 0;
    v37 = 0;
    if (refreshedCopy)
    {
      goto LABEL_11;
    }
  }

  v39 = sub_1B63BE994();
  (*(*(v39 - 8) + 56))(v23, 1, 1, v39);
LABEL_14:
  if (nameCopy)
  {
    v40 = sub_1B63BEBD4();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  return VisitedLocation.init(store:enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(storeCopy, muidCopy, providerCopy, hiddenCopy, latitudeCopy, longitudeCopy, v56, v55, v54, v53, v52, v51, v35, v37, v23, v40, v42, storageCopy, levelCategory, v34);
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
  type metadata accessor for MapsSyncManagedVisitedLocation();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  selfCopy = self;
  sub_1B633F278(objectCopy, loadCopy, parentCopy);
}

- (NSNumber)enclosingRegionMuid
{
  selfCopy = self;
  v3 = sub_1B633FF80();

  return v3;
}

- (void)setEnclosingRegionMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B6348318(muid);
}

- (NSNumber)enclosingRegionProvider
{
  selfCopy = self;
  v3 = sub_1B634041C();

  return v3;
}

- (void)setEnclosingRegionProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  sub_1B6348500(provider);
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSVisitedLocation__hidden);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_1B6340990(hidden);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v3 = sub_1B6341190();

  return v3;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B6348718(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v3 = sub_1B634162C();

  return v3;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B6348900(longitude);
}

- (void)setMapItemLastRefreshed:(id)refreshed
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (refreshed)
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
  sub_1B6343A64(v8);
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v3 = sub_1B6344B7C();

  return v3;
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B634520C(*(&self->super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.isa + v5) unlock];
}

- (int)mapItemTopLevelCategory
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setMapItemTopLevelCategory:(int)category
{
  selfCopy = self;
  sub_1B6346194(category);
}

- (NSNumber)muid
{
  selfCopy = self;
  v3 = sub_1B6346494();

  return v3;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B6348D2C(muid);
}

- (id)fetchVisits
{
  selfCopy = self;
  sub_1B6346AF0();

  type metadata accessor for Visit();
  v3 = sub_1B63BEC94();

  return v3;
}

- (void)addVisit:(id)visit
{
  visitCopy = visit;
  selfCopy = self;
  sub_1B6346C30(visitCopy);
}

- (void)removeVisit:(id)visit
{
  visitCopy = visit;
  selfCopy = self;
  sub_1B6346E80(visitCopy);
}

- (MSVisitedLocation)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B63471D0(object, store, loadCopy, parentCopy);
}

+ (NSString)key
{
  v2 = sub_1B63BEBC4();

  return v2;
}

- (void)noteWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B63BED34();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B63C5130;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C5138;
  v13[5] = v12;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v8, &unk_1B63C5140, v13);
}

- (void)setNote:(NSString *)note completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = note;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1B63BED34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C5110;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C5510;
  v15[5] = v14;
  noteCopy = note;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v10, &unk_1B63C5120, v15);
}

+ (id)optionsWith:(id)with
{
  withCopy = with;
  v5 = sub_1B628E52C(0xD000000000000011, 0x80000001B63CAA90, MEMORY[0x1E69E7CC0]);
  v6 = sub_1B628EC4C(with, v5, 0);

  return v6;
}

@end