@interface MSCollectionPlaceItem
+ (Class)managedClass;
+ (id)optionsWith:(id)with;
+ (id)strippedMapItemWith:(id)with;
- (BOOL)isEqualToMapItem:(id)item name:(id)name;
- (GEOMapItemStorage)mapItemStorage;
- (MSCollectionPlaceItem)initWithCustomName:(id)name droppedPinCoordinate:(id)coordinate droppedPinFloorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)self0 mapItemName:(id)self1 muid:(id)self2 origin:(signed __int16)self3 originalIdentifier:(id)self4 placeItemNote:(id)self5 type:(signed __int16)self6;
- (MSCollectionPlaceItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSCollectionPlaceItem)initWithStore:(id)store customName:(id)name droppedPinCoordinate:(id)coordinate droppedPinFloorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)self0 mapItemLastRefreshed:(id)self1 mapItemName:(id)self2 muid:(id)self3 origin:(signed __int16)self4 originalIdentifier:(id)self5 placeItemNote:(id)self6 type:(signed __int16)self7;
- (NSData)droppedPinCoordinate;
- (NSDate)mapItemLastRefreshed;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSUUID)originalIdentifier;
- (int)droppedPinFloorOrdinal;
- (void)setDroppedPinCoordinate:(id)coordinate;
- (void)setDroppedPinFloorOrdinal:(int)ordinal;
- (void)setLatitude:(id)latitude;
- (void)setLongitude:(id)longitude;
- (void)setMapItemLastRefreshed:(id)refreshed;
- (void)setMapItemStorage:(id)storage;
- (void)setMuid:(id)muid;
- (void)setOrigin:(signed __int16)origin;
- (void)setOriginalIdentifier:(id)identifier;
- (void)setType:(signed __int16)type;
@end

@implementation MSCollectionPlaceItem

- (GEOMapItemStorage)mapItemStorage
{
  selfCopy = self;
  v3 = sub_1B6290B60();

  return v3;
}

- (MSCollectionPlaceItem)initWithCustomName:(id)name droppedPinCoordinate:(id)coordinate droppedPinFloorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)category mapItemLastRefreshed:(id)self0 mapItemName:(id)self1 muid:(id)self2 origin:(signed __int16)self3 originalIdentifier:(id)self4 placeItemNote:(id)self5 type:(signed __int16)self6
{
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  ordinalCopy = ordinal;
  selfCopy = self;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v74 - v25;
  if (name)
  {
    v27 = sub_1B63BEBD4();
    v78 = v28;
    v79 = v27;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v80 = v22;
  muidCopy = muid;
  if (coordinate)
  {
    coordinateCopy = coordinate;
    v30 = latitudeCopy;
    v31 = longitudeCopy;
    addressCopy = address;
    categoryCopy = category;
    refreshedCopy = refreshed;
    itemNameCopy = itemName;
    muidCopy2 = muid;
    identifierCopy = identifier;
    noteCopy = note;
    v77 = sub_1B63BE924();
    v40 = v39;

    if (address)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v46 = latitudeCopy;
    v47 = longitudeCopy;
    addressCopy2 = address;
    categoryCopy2 = category;
    refreshedCopy2 = refreshed;
    itemNameCopy2 = itemName;
    muidCopy3 = muid;
    identifierCopy2 = identifier;
    noteCopy2 = note;
    v77 = 0;
    v40 = 0xF000000000000000;
    if (address)
    {
LABEL_6:
      v41 = sub_1B63BEBD4();
      v75 = v42;
      v76 = v41;

      v43 = v80;
      if (category)
      {
        goto LABEL_7;
      }

LABEL_11:
      v80 = 0;
      v74 = 0;
      if (refreshed)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v75 = 0;
  v76 = 0;
  v43 = v80;
  if (!category)
  {
    goto LABEL_11;
  }

LABEL_7:
  v80 = sub_1B63BEBD4();
  v74 = v44;

  if (refreshed)
  {
LABEL_8:
    sub_1B63BE974();

    v45 = sub_1B63BE994();
    (*(*(v45 - 8) + 56))(v26, 0, 1, v45);
    goto LABEL_13;
  }

LABEL_12:
  v55 = sub_1B63BE994();
  (*(*(v55 - 8) + 56))(v26, 1, 1, v55);
LABEL_13:
  if (itemName)
  {
    v56 = sub_1B63BEBD4();
    v58 = v57;

    if (identifier)
    {
LABEL_15:
      sub_1B63BE9E4();

      v59 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v56 = 0;
    v58 = 0;
    if (identifier)
    {
      goto LABEL_15;
    }
  }

  v59 = 1;
LABEL_18:
  v60 = sub_1B63BEA04();
  (*(*(v60 - 8) + 56))(v43, v59, 1, v60);
  if (note)
  {
    v61 = sub_1B63BEBD4();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v73 = v63;
  v72 = v43;
  v64 = muidCopy;
  v71 = v58;
  v70 = v26;
  v65 = v77;
  v67 = latitudeCopy;
  v66 = longitudeCopy;
  v68 = sub_1B62D78C4(v79, v78, v77, v40, ordinalCopy, latitudeCopy, longitudeCopy, v76, v75, v80, v74, v70, v56, v71, muidCopy, origin, v72, v61, v73, type);

  sub_1B6284F64(v65, v40);
  return v68;
}

- (MSCollectionPlaceItem)initWithStore:(id)store customName:(id)name droppedPinCoordinate:(id)coordinate droppedPinFloorOrdinal:(int)ordinal latitude:(id)latitude longitude:(id)longitude mapItemAddress:(id)address mapItemCategory:(id)self0 mapItemLastRefreshed:(id)self1 mapItemName:(id)self2 muid:(id)self3 origin:(signed __int16)self4 originalIdentifier:(id)self5 placeItemNote:(id)self6 type:(signed __int16)self7
{
  latitudeCopy = latitude;
  longitudeCopy = longitude;
  ordinalCopy = ordinal;
  selfCopy = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v67 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v72 = &v67 - v26;
  if (name)
  {
    v27 = sub_1B63BEBD4();
    v74 = v28;
    v75 = v27;
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  storeCopy = store;
  muidCopy = muid;
  if (coordinate)
  {
    coordinateCopy = coordinate;
    v30 = latitudeCopy;
    v31 = longitudeCopy;
    addressCopy = address;
    categoryCopy = category;
    refreshedCopy = refreshed;
    itemNameCopy = itemName;
    muidCopy2 = muid;
    identifierCopy = identifier;
    noteCopy = note;
    v39 = sub_1B63BE924();
    v69 = v40;
    v70 = v39;

    v41 = v23;
    if (address)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v48 = latitudeCopy;
    v49 = longitudeCopy;
    addressCopy2 = address;
    categoryCopy2 = category;
    refreshedCopy2 = refreshed;
    itemNameCopy2 = itemName;
    muidCopy3 = muid;
    identifierCopy2 = identifier;
    noteCopy2 = note;
    v69 = 0xF000000000000000;
    v70 = 0;
    v41 = v23;
    if (address)
    {
LABEL_6:
      v42 = sub_1B63BEBD4();
      v67 = v43;
      v68 = v42;

      v44 = v72;
      if (category)
      {
        goto LABEL_7;
      }

LABEL_11:
      v72 = 0;
      v46 = 0;
      if (refreshed)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v67 = 0;
  v68 = 0;
  v44 = v72;
  if (!category)
  {
    goto LABEL_11;
  }

LABEL_7:
  v72 = sub_1B63BEBD4();
  v46 = v45;

  if (refreshed)
  {
LABEL_8:
    sub_1B63BE974();

    v47 = sub_1B63BE994();
    (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
    goto LABEL_13;
  }

LABEL_12:
  v57 = sub_1B63BE994();
  (*(*(v57 - 8) + 56))(v44, 1, 1, v57);
LABEL_13:
  if (itemName)
  {
    v58 = sub_1B63BEBD4();
    v60 = v59;

    if (identifier)
    {
LABEL_15:
      sub_1B63BE9E4();

      v61 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v58 = 0;
    v60 = 0;
    if (identifier)
    {
      goto LABEL_15;
    }
  }

  v61 = 1;
LABEL_18:
  v62 = sub_1B63BEA04();
  (*(*(v62 - 8) + 56))(v41, v61, 1, v62);
  if (note)
  {
    v63 = sub_1B63BEBD4();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  return CollectionPlaceItem.init(store:customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(storeCopy, v75, v74, v70, v69, ordinalCopy, latitudeCopy, longitudeCopy, v68, v67, v72, v46, v44, v58, v60, muidCopy, origin, v41, v63, v65, type);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();

  return swift_getObjCClassFromMetadata();
}

- (NSData)droppedPinCoordinate
{
  selfCopy = self;
  v3 = sub_1B62D0BD0();
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

- (void)setDroppedPinCoordinate:(id)coordinate
{
  coordinateCopy = coordinate;
  if (coordinate)
  {
    selfCopy = self;
    v5 = coordinateCopy;
    coordinateCopy = sub_1B63BE924();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B62D7EEC(coordinateCopy, v7);
  sub_1B6284F64(coordinateCopy, v7);
}

- (int)droppedPinFloorOrdinal
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  LODWORD(v4) = *(&selfCopy->super.super.super.isa + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setDroppedPinFloorOrdinal:(int)ordinal
{
  selfCopy = self;
  sub_1B62D1480(ordinal);
}

- (NSNumber)latitude
{
  selfCopy = self;
  v3 = sub_1B62D1770();

  return v3;
}

- (void)setLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B62D80EC(latitude);
}

- (NSNumber)longitude
{
  selfCopy = self;
  v3 = sub_1B62D1C0C();

  return v3;
}

- (void)setLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B62D82C4(longitude);
}

- (NSDate)mapItemLastRefreshed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_1B62D2DB4(v6);

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
  sub_1B62D33B4(v8);
}

- (NSNumber)muid
{
  selfCopy = self;
  v3 = sub_1B62D411C();

  return v3;
}

- (void)setMuid:(id)muid
{
  muidCopy = muid;
  selfCopy = self;
  sub_1B62D85B4(muid);
}

- (void)setOrigin:(signed __int16)origin
{
  selfCopy = self;
  sub_1B62D4764(origin);
}

- (NSUUID)originalIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  sub_1B62D4AD4(v6);

  v8 = sub_1B63BEA04();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1B63BE9C4();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setOriginalIdentifier:(id)identifier
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (identifier)
  {
    sub_1B63BE9E4();
    v9 = sub_1B63BEA04();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1B63BEA04();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  sub_1B62D50D4(v8);
}

- (void)setType:(signed __int16)type
{
  selfCopy = self;
  sub_1B62D6290(type);
}

- (void)setMapItemStorage:(id)storage
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  storageCopy = storage;
  selfCopy = self;
  [v6 lock];
  sub_1B62D67AC(*(&self->super.super.super.isa + v5), storage, selfCopy);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (MSCollectionPlaceItem)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B62D755C(object, store, loadCopy, parentCopy);
}

+ (id)optionsWith:(id)with
{
  withCopy = with;
  v5 = sub_1B628E52C(0x206D65744970616DLL, 0xEE006C696E203D21, MEMORY[0x1E69E7CC0]);
  v6 = sub_1B628EC4C(with, v5, 0);

  return v6;
}

+ (id)strippedMapItemWith:(id)with
{
  v4 = objc_opt_self();
  withCopy = with;
  result = [v4 mapItemStorageForGEOMapItem:withCopy forUseType:6];
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

- (BOOL)isEqualToMapItem:(id)item name:(id)name
{
  if (name)
  {
    v6 = sub_1B63BEBD4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = CollectionPlaceItem.isEqualTo(mapItem:name:)(item, v6, v8);
  swift_unknownObjectRelease();

  return v10 & 1;
}

@end