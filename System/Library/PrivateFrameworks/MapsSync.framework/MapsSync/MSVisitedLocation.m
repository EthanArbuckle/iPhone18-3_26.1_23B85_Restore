@interface MSVisitedLocation
+ (Class)managedClass;
+ (NSString)key;
+ (id)optionsWith:(id)a3;
- (BOOL)hidden;
- (GEOMapItemStorage)mapItemStorage;
- (MSVisitedLocation)initWithEnclosingRegionMuid:(id)a3 enclosingRegionProvider:(id)a4 hidden:(BOOL)a5 latitude:(id)a6 longitude:(id)a7 mapItemAddress:(id)a8 mapItemCategory:(id)a9 mapItemCity:(id)a10 mapItemIdentifier:(id)a11 mapItemLastRefreshed:(id)a12 mapItemName:(id)a13 mapItemStorage:(id)a14 mapItemTopLevelCategory:(int)a15 muid:(id)a16;
- (MSVisitedLocation)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSVisitedLocation)initWithStore:(id)a3 enclosingRegionMuid:(id)a4 enclosingRegionProvider:(id)a5 hidden:(BOOL)a6 latitude:(id)a7 longitude:(id)a8 mapItemAddress:(id)a9 mapItemCategory:(id)a10 mapItemCity:(id)a11 mapItemIdentifier:(id)a12 mapItemLastRefreshed:(id)a13 mapItemName:(id)a14 mapItemStorage:(id)a15 mapItemTopLevelCategory:(int)a16 muid:(id)a17;
- (NSNumber)enclosingRegionMuid;
- (NSNumber)enclosingRegionProvider;
- (NSNumber)latitude;
- (NSNumber)longitude;
- (NSNumber)muid;
- (id)fetchVisits;
- (int)mapItemTopLevelCategory;
- (void)addVisit:(id)a3;
- (void)flushChanges;
- (void)noteWithCompletionHandler:(id)a3;
- (void)removeVisit:(id)a3;
- (void)setEnclosingRegionMuid:(id)a3;
- (void)setEnclosingRegionProvider:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setLatitude:(id)a3;
- (void)setLongitude:(id)a3;
- (void)setMapItemLastRefreshed:(id)a3;
- (void)setMapItemStorage:(id)a3;
- (void)setMapItemTopLevelCategory:(int)a3;
- (void)setMuid:(id)a3;
- (void)setNote:(NSString *)a3 completionHandler:(id)a4;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
@end

@implementation MSVisitedLocation

- (MSVisitedLocation)initWithEnclosingRegionMuid:(id)a3 enclosingRegionProvider:(id)a4 hidden:(BOOL)a5 latitude:(id)a6 longitude:(id)a7 mapItemAddress:(id)a8 mapItemCategory:(id)a9 mapItemCity:(id)a10 mapItemIdentifier:(id)a11 mapItemLastRefreshed:(id)a12 mapItemName:(id)a13 mapItemStorage:(id)a14 mapItemTopLevelCategory:(int)a15 muid:(id)a16
{
  v51 = a7;
  v60 = a5;
  v61 = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v50 - v22;
  if (a8)
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

  v62 = a13;
  if (a9)
  {
    v26 = sub_1B63BEBD4();
    v56 = v27;
    v57 = v26;
    if (a10)
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
    if (a10)
    {
      goto LABEL_6;
    }
  }

  v54 = 0;
  v50 = 0;
LABEL_9:
  v55 = a3;
  v53 = a4;
  v52 = a6;
  v51 = v51;
  v29 = a11;
  v30 = a12;
  v31 = v62;
  v32 = a14;
  v33 = a16;
  if (v29)
  {
    v34 = sub_1B63BEBD4();
    v36 = v35;

    if (v30)
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
    if (v30)
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
  v42 = v55;
  v44 = v52;
  v43 = v53;
  v45 = v51;
  v46 = sub_1B6347EF8(v55, v53, v60, v52, v51, v59, v58, v57, v56, v54, v50, v48, v36, v49, v39, v41, v32, a15, v33);

  return v46;
}

- (MSVisitedLocation)initWithStore:(id)a3 enclosingRegionMuid:(id)a4 enclosingRegionProvider:(id)a5 hidden:(BOOL)a6 latitude:(id)a7 longitude:(id)a8 mapItemAddress:(id)a9 mapItemCategory:(id)a10 mapItemCity:(id)a11 mapItemIdentifier:(id)a12 mapItemLastRefreshed:(id)a13 mapItemName:(id)a14 mapItemStorage:(id)a15 mapItemTopLevelCategory:(int)a16 muid:(id)a17
{
  v46 = a8;
  v47 = a7;
  v57 = a6;
  v58 = self;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v44 - v22;
  if (a9)
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
  if (a10)
  {
    v26 = sub_1B63BEBD4();
    v53 = v27;
    v54 = v26;
    if (a11)
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
    if (a11)
    {
      goto LABEL_6;
    }
  }

  v51 = 0;
  v52 = 0;
LABEL_9:
  v50 = a3;
  v49 = a4;
  v48 = a5;
  v47 = v47;
  v46 = v46;
  v30 = a12;
  v31 = a13;
  v32 = a14;
  v33 = a15;
  v34 = v45;
  if (v30)
  {
    v35 = sub_1B63BEBD4();
    v37 = v36;

    if (v31)
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
    if (v31)
    {
      goto LABEL_11;
    }
  }

  v39 = sub_1B63BE994();
  (*(*(v39 - 8) + 56))(v23, 1, 1, v39);
LABEL_14:
  if (v32)
  {
    v40 = sub_1B63BEBD4();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  return VisitedLocation.init(store:enclosingRegionMuid:enclosingRegionProvider:hidden:latitude:longitude:mapItemAddress:mapItemCategory:mapItemCity:mapItemIdentifier:mapItemLastRefreshed:mapItemName:mapItemStorage:mapItemTopLevelCategory:muid:)(v50, v49, v48, v57, v47, v46, v56, v55, v54, v53, v52, v51, v35, v37, v23, v40, v42, v33, a16, v34);
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

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = self;
  sub_1B633F278(v8, v6, v5);
}

- (NSNumber)enclosingRegionMuid
{
  v2 = self;
  v3 = sub_1B633FF80();

  return v3;
}

- (void)setEnclosingRegionMuid:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6348318(a3);
}

- (NSNumber)enclosingRegionProvider
{
  v2 = self;
  v3 = sub_1B634041C();

  return v3;
}

- (void)setEnclosingRegionProvider:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6348500(a3);
}

- (BOOL)hidden
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LOBYTE(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSVisitedLocation__hidden);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setHidden:(BOOL)a3
{
  v4 = self;
  sub_1B6340990(a3);
}

- (NSNumber)latitude
{
  v2 = self;
  v3 = sub_1B6341190();

  return v3;
}

- (void)setLatitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6348718(a3);
}

- (NSNumber)longitude
{
  v2 = self;
  v3 = sub_1B634162C();

  return v3;
}

- (void)setLongitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6348900(a3);
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
  sub_1B6343A64(v8);
}

- (GEOMapItemStorage)mapItemStorage
{
  v2 = self;
  v3 = sub_1B6344B7C();

  return v3;
}

- (void)setMapItemStorage:(id)a3
{
  v5 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v6 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v7 = a3;
  v8 = self;
  [v6 lock];
  sub_1B634520C(*(&self->super.super.isa + v5), a3, v8);
  [*(&self->super.super.isa + v5) unlock];
}

- (int)mapItemTopLevelCategory
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  v5 = self;
  [v4 lock];
  LODWORD(v4) = *(&v5->super.super.isa + OBJC_IVAR___MSVisitedLocation__mapItemTopLevelCategory);
  [*(&self->super.super.isa + v3) unlock];

  return v4;
}

- (void)setMapItemTopLevelCategory:(int)a3
{
  v4 = self;
  sub_1B6346194(a3);
}

- (NSNumber)muid
{
  v2 = self;
  v3 = sub_1B6346494();

  return v3;
}

- (void)setMuid:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6348D2C(a3);
}

- (id)fetchVisits
{
  v2 = self;
  sub_1B6346AF0();

  type metadata accessor for Visit();
  v3 = sub_1B63BEC94();

  return v3;
}

- (void)addVisit:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B6346C30(v4);
}

- (void)removeVisit:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B6346E80(v4);
}

- (MSVisitedLocation)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B63471D0(a3, a4, v7, v6);
}

+ (NSString)key
{
  v2 = sub_1B63BEBC4();

  return v2;
}

- (void)noteWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_1B63BBE9C(0, 0, v8, &unk_1B63C5140, v13);
}

- (void)setNote:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_1B63BBE9C(0, 0, v10, &unk_1B63C5120, v15);
}

+ (id)optionsWith:(id)a3
{
  v4 = a3;
  v5 = sub_1B628E52C(0xD000000000000011, 0x80000001B63CAA90, MEMORY[0x1E69E7CC0]);
  v6 = sub_1B628EC4C(a3, v5, 0);

  return v6;
}

@end