@interface MSCollectionPlaceItem
+ (Class)managedClass;
+ (id)optionsWith:(id)a3;
+ (id)strippedMapItemWith:(id)a3;
- (BOOL)isEqualToMapItem:(id)a3 name:(id)a4;
- (GEOMapItemStorage)mapItemStorage;
- (MSCollectionPlaceItem)initWithCustomName:(id)a3 droppedPinCoordinate:(id)a4 droppedPinFloorOrdinal:(int)a5 latitude:(id)a6 longitude:(id)a7 mapItemAddress:(id)a8 mapItemCategory:(id)a9 mapItemLastRefreshed:(id)a10 mapItemName:(id)a11 muid:(id)a12 origin:(signed __int16)a13 originalIdentifier:(id)a14 placeItemNote:(id)a15 type:(signed __int16)a16;
- (MSCollectionPlaceItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSCollectionPlaceItem)initWithStore:(id)a3 customName:(id)a4 droppedPinCoordinate:(id)a5 droppedPinFloorOrdinal:(int)a6 latitude:(id)a7 longitude:(id)a8 mapItemAddress:(id)a9 mapItemCategory:(id)a10 mapItemLastRefreshed:(id)a11 mapItemName:(id)a12 muid:(id)a13 origin:(signed __int16)a14 originalIdentifier:(id)a15 placeItemNote:(id)a16 type:(signed __int16)a17;
- (NSData)droppedPinCoordinate;
- (NSDate)mapItemLastRefreshed;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (NSUUID)originalIdentifier;
- (int)droppedPinFloorOrdinal;
- (void)setDroppedPinCoordinate:(id)a3;
- (void)setDroppedPinFloorOrdinal:(int)a3;
- (void)setLatitude:(id)a3;
- (void)setLongitude:(id)a3;
- (void)setMapItemLastRefreshed:(id)a3;
- (void)setMapItemStorage:(id)a3;
- (void)setMuid:(id)a3;
- (void)setOrigin:(signed __int16)a3;
- (void)setOriginalIdentifier:(id)a3;
- (void)setType:(signed __int16)a3;
@end

@implementation MSCollectionPlaceItem

- (GEOMapItemStorage)mapItemStorage
{
  v2 = self;
  v3 = sub_1B6290B60();

  return v3;
}

- (MSCollectionPlaceItem)initWithCustomName:(id)a3 droppedPinCoordinate:(id)a4 droppedPinFloorOrdinal:(int)a5 latitude:(id)a6 longitude:(id)a7 mapItemAddress:(id)a8 mapItemCategory:(id)a9 mapItemLastRefreshed:(id)a10 mapItemName:(id)a11 muid:(id)a12 origin:(signed __int16)a13 originalIdentifier:(id)a14 placeItemNote:(id)a15 type:(signed __int16)a16
{
  v84 = a6;
  v85 = a7;
  v82 = a5;
  v83 = self;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v74 - v25;
  if (a3)
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
  v81 = a12;
  if (a4)
  {
    v29 = a4;
    v30 = v84;
    v31 = v85;
    v32 = a8;
    v33 = a9;
    v34 = a10;
    v35 = a11;
    v36 = a12;
    v37 = a14;
    v38 = a15;
    v77 = sub_1B63BE924();
    v40 = v39;

    if (a8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v46 = v84;
    v47 = v85;
    v48 = a8;
    v49 = a9;
    v50 = a10;
    v51 = a11;
    v52 = a12;
    v53 = a14;
    v54 = a15;
    v77 = 0;
    v40 = 0xF000000000000000;
    if (a8)
    {
LABEL_6:
      v41 = sub_1B63BEBD4();
      v75 = v42;
      v76 = v41;

      v43 = v80;
      if (a9)
      {
        goto LABEL_7;
      }

LABEL_11:
      v80 = 0;
      v74 = 0;
      if (a10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v75 = 0;
  v76 = 0;
  v43 = v80;
  if (!a9)
  {
    goto LABEL_11;
  }

LABEL_7:
  v80 = sub_1B63BEBD4();
  v74 = v44;

  if (a10)
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
  if (a11)
  {
    v56 = sub_1B63BEBD4();
    v58 = v57;

    if (a14)
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
    if (a14)
    {
      goto LABEL_15;
    }
  }

  v59 = 1;
LABEL_18:
  v60 = sub_1B63BEA04();
  (*(*(v60 - 8) + 56))(v43, v59, 1, v60);
  if (a15)
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
  v64 = v81;
  v71 = v58;
  v70 = v26;
  v65 = v77;
  v67 = v84;
  v66 = v85;
  v68 = sub_1B62D78C4(v79, v78, v77, v40, v82, v84, v85, v76, v75, v80, v74, v70, v56, v71, v81, a13, v72, v61, v73, a16);

  sub_1B6284F64(v65, v40);
  return v68;
}

- (MSCollectionPlaceItem)initWithStore:(id)a3 customName:(id)a4 droppedPinCoordinate:(id)a5 droppedPinFloorOrdinal:(int)a6 latitude:(id)a7 longitude:(id)a8 mapItemAddress:(id)a9 mapItemCategory:(id)a10 mapItemLastRefreshed:(id)a11 mapItemName:(id)a12 muid:(id)a13 origin:(signed __int16)a14 originalIdentifier:(id)a15 placeItemNote:(id)a16 type:(signed __int16)a17
{
  v78 = a7;
  v79 = a8;
  v77 = a6;
  v76 = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v67 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v72 = &v67 - v26;
  if (a4)
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

  v71 = a3;
  v73 = a13;
  if (a5)
  {
    v29 = a5;
    v30 = v78;
    v31 = v79;
    v32 = a9;
    v33 = a10;
    v34 = a11;
    v35 = a12;
    v36 = a13;
    v37 = a15;
    v38 = a16;
    v39 = sub_1B63BE924();
    v69 = v40;
    v70 = v39;

    v41 = v23;
    if (a9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v48 = v78;
    v49 = v79;
    v50 = a9;
    v51 = a10;
    v52 = a11;
    v53 = a12;
    v54 = a13;
    v55 = a15;
    v56 = a16;
    v69 = 0xF000000000000000;
    v70 = 0;
    v41 = v23;
    if (a9)
    {
LABEL_6:
      v42 = sub_1B63BEBD4();
      v67 = v43;
      v68 = v42;

      v44 = v72;
      if (a10)
      {
        goto LABEL_7;
      }

LABEL_11:
      v72 = 0;
      v46 = 0;
      if (a11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  v67 = 0;
  v68 = 0;
  v44 = v72;
  if (!a10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v72 = sub_1B63BEBD4();
  v46 = v45;

  if (a11)
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
  if (a12)
  {
    v58 = sub_1B63BEBD4();
    v60 = v59;

    if (a15)
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
    if (a15)
    {
      goto LABEL_15;
    }
  }

  v61 = 1;
LABEL_18:
  v62 = sub_1B63BEA04();
  (*(*(v62 - 8) + 56))(v41, v61, 1, v62);
  if (a16)
  {
    v63 = sub_1B63BEBD4();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  return CollectionPlaceItem.init(store:customName:droppedPinCoordinate:droppedPinFloorOrdinal:latitude:longitude:mapItemAddress:mapItemCategory:mapItemLastRefreshed:mapItemName:muid:origin:originalIdentifier:placeItemNote:type:)(v71, v75, v74, v70, v69, v77, v78, v79, v68, v67, v72, v46, v44, v58, v60, v73, a14, v41, v63, v65, a17);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedCollectionPlaceItem();

  return swift_getObjCClassFromMetadata();
}

- (NSData)droppedPinCoordinate
{
  v2 = self;
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

- (void)setDroppedPinCoordinate:(id)a3
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

  sub_1B62D7EEC(v3, v7);
  sub_1B6284F64(v3, v7);
}

- (int)droppedPinFloorOrdinal
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LODWORD(v4) = *(&v5->super.super.super.isa + OBJC_IVAR___MSCollectionPlaceItem__droppedPinFloorOrdinal);
  [*(&self->super.super.super.isa + v3) unlock];

  return v4;
}

- (void)setDroppedPinFloorOrdinal:(int)a3
{
  v4 = self;
  sub_1B62D1480(a3);
}

- (NSNumber)latitude
{
  v2 = self;
  v3 = sub_1B62D1770();

  return v3;
}

- (void)setLatitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62D80EC(a3);
}

- (NSNumber)longitude
{
  v2 = self;
  v3 = sub_1B62D1C0C();

  return v3;
}

- (void)setLongitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62D82C4(a3);
}

- (NSDate)mapItemLastRefreshed
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
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

- (void)setMapItemLastRefreshed:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
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

  v11 = self;
  sub_1B62D33B4(v8);
}

- (NSNumber)muid
{
  v2 = self;
  v3 = sub_1B62D411C();

  return v3;
}

- (void)setMuid:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B62D85B4(a3);
}

- (void)setOrigin:(signed __int16)a3
{
  v4 = self;
  sub_1B62D4764(a3);
}

- (NSUUID)originalIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = self;
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

- (void)setOriginalIdentifier:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943680, qword_1B63C4070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  if (a3)
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

  v11 = self;
  sub_1B62D50D4(v8);
}

- (void)setType:(signed __int16)a3
{
  v4 = self;
  sub_1B62D6290(a3);
}

- (void)setMapItemStorage:(id)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v7 = a3;
  v8 = self;
  [v6 lock];
  sub_1B62D67AC(*(&self->super.super.super.isa + v5), a3, v8);
  [*(&self->super.super.super.isa + v5) unlock];
}

- (MSCollectionPlaceItem)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B62D755C(a3, a4, v7, v6);
}

+ (id)optionsWith:(id)a3
{
  v4 = a3;
  v5 = sub_1B628E52C(0x206D65744970616DLL, 0xEE006C696E203D21, MEMORY[0x1E69E7CC0]);
  v6 = sub_1B628EC4C(a3, v5, 0);

  return v6;
}

+ (id)strippedMapItemWith:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  result = [v4 mapItemStorageForGEOMapItem:v5 forUseType:6];
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

- (BOOL)isEqualToMapItem:(id)a3 name:(id)a4
{
  if (a4)
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
  v9 = self;
  v10 = CollectionPlaceItem.isEqualTo(mapItem:name:)(a3, v6, v8);
  swift_unknownObjectRelease();

  return v10 & 1;
}

@end