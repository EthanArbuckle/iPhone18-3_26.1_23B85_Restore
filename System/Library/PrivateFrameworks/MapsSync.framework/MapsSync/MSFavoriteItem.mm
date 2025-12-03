@interface MSFavoriteItem
+ (Class)managedClass;
+ (id)findDuplicatesWithContext:(id)context;
+ (id)mergeWithDuplicates:(id)duplicates;
+ (id)optionsWith:(id)with;
+ (id)strippedMapItemWith:(id)with;
- (BOOL)hidden;
- (GEOMapItemStorage)mapItemStorage;
- (MSFavoriteItem)initWithCustomName:(id)name hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)refreshed mapItemName:(id)self0 muid:(id)self1 originatingAddressString:(id)self2 positionIndex:(int64_t)self3 shortcutIdentifier:(id)self4 source:(signed __int16)self5 type:(signed __int16)self6 version:(signed __int16)self7;
- (MSFavoriteItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSFavoriteItem)initWithStore:(id)store customName:(id)name hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)self0 mapItemName:(id)self1 muid:(id)self2 originatingAddressString:(id)self3 positionIndex:(int64_t)self4 shortcutIdentifier:(id)self5 source:(signed __int16)self6 type:(signed __int16)self7 version:(signed __int16)self8;
- (NSDate)mapItemLastRefreshed;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (id)fetchContactHandles;
- (int64_t)positionIndex;
- (signed)favoriteType;
- (signed)sourceType;
- (void)flushChanges;
- (void)onFirstSaveWithObject:(id)object context:(id)context;
- (void)placeItemNoteWithCompletionHandler:(id)handler;
- (void)setFavoriteType:(signed __int16)type;
- (void)setHidden:(BOOL)hidden;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemLastRefreshed:(id)refreshed;
- (void)setMapItemStorage:(id)storage;
- (void)setMuid:(id)muid;
- (void)setPlaceItemNote:(NSString *)note completionHandler:(id)handler;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setSource:(signed __int16)source;
- (void)setSourceType:(signed __int16)type;
- (void)setType:(signed __int16)type;
- (void)setVersion:(signed __int16)version;
@end

@implementation MSFavoriteItem

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LOBYTE(v4) = *(&selfCopy->super.super.isa + OBJC_IVAR___MSFavoriteItem__hidden);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (id)fetchContactHandles
{
  selfCopy = self;
  sub_1B6293444();

  v3 = sub_1B63BEC94();

  return v3;
}

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v3 = sub_1B6296250();

  return v3;
}

- (MSFavoriteItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B6292DB0(object, store, loadCopy, parentCopy);
}

- (void)setSourceType:(signed __int16)type
{
  selfCopy = self;
  _s8MapsSync12FavoriteItemC10sourceTypeAA0cd6SourceF0Ovs_0(type);
}

- (signed)favoriteType
{
  selfCopy = self;
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy2 = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + v3);
  LOWORD(selfCopy) = *(&selfCopy2->super.super.isa + OBJC_IVAR___MSFavoriteItem__type);
  [v6 unlock];

  v7 = sub_1B6296B88(selfCopy);
  if ((v7 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (MSFavoriteItem)initWithCustomName:(id)name hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)refreshed mapItemName:(id)self0 muid:(id)self1 originatingAddressString:(id)self2 positionIndex:(int64_t)self3 shortcutIdentifier:(id)self4 source:(signed __int16)self5 type:(signed __int16)self6 version:(signed __int16)self7
{
  hiddenCopy = hidden;
  selfCopy = self;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v56 - v24;
  if (name)
  {
    v26 = sub_1B63BEBD4();
    v67 = v27;
    v68 = v26;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  if (address)
  {
    v28 = sub_1B63BEBD4();
    v65 = v29;
    v66 = v28;
    if (category)
    {
LABEL_6:
      v64 = sub_1B63BEBD4();
      v62 = v30;
      goto LABEL_9;
    }
  }

  else
  {
    v65 = 0;
    v66 = 0;
    if (category)
    {
      goto LABEL_6;
    }
  }

  v64 = 0;
  v62 = 0;
LABEL_9:
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  refreshedCopy = refreshed;
  itemNameCopy = itemName;
  muidCopy = muid;
  stringCopy = string;
  identifierCopy = identifier;
  if (refreshedCopy)
  {
    sub_1B63BE974();

    v34 = sub_1B63BE994();
    (*(*(v34 - 8) + 56))(v25, 0, 1, v34);
  }

  else
  {
    v35 = sub_1B63BE994();
    (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  }

  if (itemNameCopy)
  {
    v36 = sub_1B63BEBD4();
    v38 = v37;

    v58 = v25;
    if (stringCopy)
    {
LABEL_14:
      v39 = sub_1B63BEBD4();
      v41 = v40;

      goto LABEL_17;
    }
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v58 = v25;
    if (stringCopy)
    {
      goto LABEL_14;
    }
  }

  v39 = 0;
  v41 = 0;
LABEL_17:
  sourceCopy2 = source;
  if (identifierCopy)
  {
    v57 = v41;
    v43 = v39;
    v44 = v38;
    v45 = v36;
    v46 = identifierCopy;
    v47 = sub_1B63BEBD4();
    v49 = v48;

    sourceCopy2 = source;
    v36 = v45;
    v38 = v44;
    v39 = v43;
    v41 = v57;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  HIWORD(v55) = type;
  LOWORD(v55) = sourceCopy2;
  v50 = muidCopy;
  v51 = latitudeCopy;
  v52 = longitudeCopy;
  v53 = sub_1B62E88B0(v68, v67, hiddenCopy, latitudeCopy, longitudeCopy, v66, v65, v64, v62, v58, v36, v38, muidCopy, v39, v41, index, v47, v49, v55, version);

  return v53;
}

- (MSFavoriteItem)initWithStore:(id)store customName:(id)name hidden:(BOOL)hidden latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)self0 mapItemName:(id)self1 muid:(id)self2 originatingAddressString:(id)self3 positionIndex:(int64_t)self4 shortcutIdentifier:(id)self5 source:(signed __int16)self6 type:(signed __int16)self7 version:(signed __int16)self8
{
  longitudeCopy = longitude;
  hiddenCopy = hidden;
  selfCopy = self;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v51 - v24;
  if (name)
  {
    v26 = sub_1B63BEBD4();
    v62 = v27;
    v63 = v26;
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  if (address)
  {
    v28 = sub_1B63BEBD4();
    v60 = v29;
    v61 = v28;
    if (category)
    {
LABEL_6:
      v30 = sub_1B63BEBD4();
      v58 = v31;
      v59 = v30;
      goto LABEL_9;
    }
  }

  else
  {
    v60 = 0;
    v61 = 0;
    if (category)
    {
      goto LABEL_6;
    }
  }

  v58 = 0;
  v59 = 0;
LABEL_9:
  storeCopy = store;
  latitudeCopy = latitude;
  longitudeCopy = longitudeCopy;
  refreshedCopy = refreshed;
  itemNameCopy = itemName;
  muidCopy = muid;
  stringCopy = string;
  identifierCopy = identifier;
  if (refreshedCopy)
  {
    sub_1B63BE974();

    v35 = sub_1B63BE994();
    (*(*(v35 - 8) + 56))(v25, 0, 1, v35);
  }

  else
  {
    v36 = sub_1B63BE994();
    (*(*(v36 - 8) + 56))(v25, 1, 1, v36);
  }

  if (itemNameCopy)
  {
    v37 = sub_1B63BEBD4();
    v39 = v38;

    v52 = v25;
    if (stringCopy)
    {
LABEL_14:
      v40 = sub_1B63BEBD4();
      v42 = v41;

      goto LABEL_17;
    }
  }

  else
  {
    v37 = 0;
    v39 = 0;
    v52 = v25;
    if (stringCopy)
    {
      goto LABEL_14;
    }
  }

  v40 = 0;
  v42 = 0;
LABEL_17:
  sourceCopy2 = source;
  if (identifierCopy)
  {
    v51 = v40;
    v44 = v39;
    v45 = v37;
    v46 = identifierCopy;
    v47 = sub_1B63BEBD4();
    v49 = v48;

    sourceCopy2 = source;
    v37 = v45;
    v39 = v44;
    v40 = v51;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  return FavoriteItem.init(store:customName:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:originatingAddressString:positionIndex:shortcutIdentifier:source:type:version:)(storeCopy, v63, v62, hiddenCopy, latitudeCopy, longitudeCopy, v61, v60, v59, v58, v52, v37, v39, muidCopy, v40, v42, index, v47, v49, sourceCopy2, type, version);
}

- (void)flushChanges
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__editBlocks;
  swift_beginAccess();
  v4 = *(&self->super.super.isa + v3);
  v5 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.isa + v3) = MEMORY[0x1E69E7CC0];
  selfCopy = self;

  v7 = OBJC_IVAR___MSFavoriteItem__handleChanges;
  swift_beginAccess();
  v8 = *(&selfCopy->super.super.isa + v7);
  *(&selfCopy->super.super.isa + v7) = v5;
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedFavoriteItem();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B6293904(objectCopy, load);
}

- (void)setHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_1B62E2D38(hidden);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v3 = sub_1B62A00E0();

  return v3;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B62E8D90(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v3 = sub_1B62A0488();

  return v3;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B62E8F78(longitude);
}

- (NSDate)mapItemLastRefreshed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_1B62E405C(v6);

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
  sub_1B62E465C(v8);
}

- (NSNumber)muid
{
  selfCopy = self;
  v3 = sub_1B62E5504();

  return v3;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B62E92DC(muid);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSFavoriteItem__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B62E5EBC(index);
}

- (void)setSource:(signed __int16)source
{
  selfCopy = self;
  _s8MapsSync12FavoriteItemC10sourceTypeAA0cd6SourceF0Ovs_0(source);
}

- (void)setType:(signed __int16)type
{
  selfCopy = self;
  _s8MapsSync12FavoriteItemC12favoriteTypeAA0cdF0Ovs_0(type);
}

- (void)setVersion:(signed __int16)version
{
  selfCopy = self;
  sub_1B62E664C(version);
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62E6B74(*(&self->super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.isa + v5) unlock];
}

- (void)setFavoriteType:(signed __int16)type
{
  selfCopy = self;
  _s8MapsSync12FavoriteItemC12favoriteTypeAA0cdF0Ovs_0(type);
}

- (signed)sourceType
{
  selfCopy = self;
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy2 = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + v3);
  LOWORD(selfCopy) = *(&selfCopy2->super.super.isa + OBJC_IVAR___MSFavoriteItem__source);
  [v6 unlock];

  v7 = sub_1B634BAA0(selfCopy);
  if ((v7 & 0x10000) != 0)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

- (void)onFirstSaveWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  selfCopy = self;
  sub_1B63B7B48(objectCopy, contextCopy);
}

+ (id)optionsWith:(id)with
{
  withCopy = with;
  v5 = sub_1B6292014(with);

  return v5;
}

+ (id)strippedMapItemWith:(id)with
{
  v4 = objc_opt_self();
  withCopy = with;
  result = [v4 mapItemStorageForGEOMapItem:withCopy forUseType:5];
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

+ (id)mergeWithDuplicates:(id)duplicates
{
  sub_1B6281C60(0, &qword_1EDB0ECB0, 0x1E695D620);
  v3 = sub_1B63BECA4();
  v4 = sub_1B63BD3E4(v3);

  return v4;
}

+ (id)findDuplicatesWithContext:(id)context
{
  swift_getObjCClassMetadata();
  contextCopy = context;
  sub_1B63B83B0(contextCopy);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943710, &qword_1B63C3EB8);
  v5 = sub_1B63BEC94();

  return v5;
}

- (void)placeItemNoteWithCompletionHandler:(id)handler
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
  v12[4] = &unk_1B63C7740;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C6420;
  v13[5] = v12;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v8, &unk_1B63C6428, v13);
}

- (void)setPlaceItemNote:(NSString *)note completionHandler:(id)handler
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
  v14[4] = &unk_1B63C7708;
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

@end