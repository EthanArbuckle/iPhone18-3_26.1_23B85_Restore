@interface MSUserRoute
+ (Class)managedClass;
- (MSUserRoute)initWithAddressObject:(id)a3 customName:(id)a4 customNote:(id)a5 eastLongitude:(id)a6 hikeType:(int64_t)a7 length:(id)a8 northLatitude:(id)a9 originLatitude:(id)a10 originLongitude:(id)a11 positionIndex:(int64_t)a12 routeGeometry:(id)a13 southLatitude:(id)a14 totalAscent:(id)a15 totalDescent:(id)a16 tourIdentifier:(int64_t)a17 transportType:(id)a18 westLongitude:(id)a19;
- (MSUserRoute)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6;
- (MSUserRoute)initWithStore:(id)a3 addressObject:(id)a4 customName:(id)a5 customNote:(id)a6 eastLongitude:(id)a7 hikeType:(int64_t)a8 length:(id)a9 northLatitude:(id)a10 originLatitude:(id)a11 originLongitude:(id)a12 positionIndex:(int64_t)a13 routeGeometry:(id)a14 southLatitude:(id)a15 totalAscent:(id)a16 totalDescent:(id)a17 tourIdentifier:(int64_t)a18 transportType:(id)a19 westLongitude:(id)a20;
- (NSNumber)eastLongitude;
- (NSNumber)length;
- (NSNumber)northLatitude;
- (NSNumber)originLatitude;
- (NSNumber)originLongitude;
- (NSNumber)southLatitude;
- (NSNumber)totalAscent;
- (NSNumber)totalDescent;
- (NSNumber)transportType;
- (NSNumber)westLongitude;
- (void)setEastLongitude:(id)a3;
- (void)setHikeType:(int64_t)a3;
- (void)setLength:(id)a3;
- (void)setNorthLatitude:(id)a3;
- (void)setOriginLatitude:(id)a3;
- (void)setOriginLongitude:(id)a3;
- (void)setPositionIndex:(int64_t)a3;
- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5;
- (void)setSouthLatitude:(id)a3;
- (void)setTotalAscent:(id)a3;
- (void)setTotalDescent:(id)a3;
- (void)setTourIdentifier:(int64_t)a3;
- (void)setTransportType:(id)a3;
- (void)setWestLongitude:(id)a3;
@end

@implementation MSUserRoute

- (MSUserRoute)initWithAddressObject:(id)a3 customName:(id)a4 customNote:(id)a5 eastLongitude:(id)a6 hikeType:(int64_t)a7 length:(id)a8 northLatitude:(id)a9 originLatitude:(id)a10 originLongitude:(id)a11 positionIndex:(int64_t)a12 routeGeometry:(id)a13 southLatitude:(id)a14 totalAscent:(id)a15 totalDescent:(id)a16 tourIdentifier:(int64_t)a17 transportType:(id)a18 westLongitude:(id)a19
{
  if (a3)
  {
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a8;
    v28 = a9;
    v29 = a10;
    v30 = a11;
    v31 = a13;
    v32 = a14;
    v33 = a14;
    v34 = a15;
    v35 = a15;
    v36 = a16;
    v37 = a18;
    v38 = a18;
    v39 = a19;
    v40 = a3;
    v41 = sub_1B63BE924();
    v65 = v42;
    v66 = v41;

    v43 = a19;
    v72 = a11;
    if (a4)
    {
LABEL_3:
      v44 = sub_1B63BEBD4();
      v69 = v45;
      v70 = v44;

      goto LABEL_6;
    }
  }

  else
  {
    v46 = a4;
    v47 = a5;
    v48 = a6;
    v49 = a8;
    v50 = a9;
    v51 = a10;
    v52 = a11;
    v53 = a13;
    v32 = a14;
    v54 = a14;
    v34 = a15;
    v55 = a15;
    v56 = a16;
    v37 = a18;
    v57 = a18;
    v43 = a19;
    v58 = a19;
    v65 = 0xF000000000000000;
    v66 = 0;
    v72 = a11;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v69 = 0;
  v70 = 0;
LABEL_6:
  if (a5)
  {
    v68 = sub_1B63BEBD4();
    v60 = v59;
  }

  else
  {
    v68 = 0;
    v60 = 0;
  }

  if (a13)
  {
    v61 = sub_1B63BE924();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0xF000000000000000;
  }

  return UserRoute.init(addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(v66, v65, v70, v69, v68, v60, a6, a7, a8, a9, a10, v72, a12, v61, v63, v32, v34, a16, a17, v37, v43);
}

- (MSUserRoute)initWithStore:(id)a3 addressObject:(id)a4 customName:(id)a5 customNote:(id)a6 eastLongitude:(id)a7 hikeType:(int64_t)a8 length:(id)a9 northLatitude:(id)a10 originLatitude:(id)a11 originLongitude:(id)a12 positionIndex:(int64_t)a13 routeGeometry:(id)a14 southLatitude:(id)a15 totalAscent:(id)a16 totalDescent:(id)a17 tourIdentifier:(int64_t)a18 transportType:(id)a19 westLongitude:(id)a20
{
  if (a4)
  {
    v24 = a3;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a9;
    v29 = a10;
    v30 = a11;
    v31 = a11;
    v32 = a12;
    v33 = a14;
    v34 = a15;
    v35 = a15;
    v36 = a16;
    v37 = a17;
    v38 = a19;
    v39 = a19;
    v40 = a20;
    v41 = a20;
    v42 = a4;
    v43 = sub_1B63BE924();
    v70 = v44;
    v71 = v43;

    v45 = a16;
    v77 = a12;
    if (a5)
    {
LABEL_3:
      v46 = sub_1B63BEBD4();
      v74 = v47;
      v75 = v46;

      goto LABEL_6;
    }
  }

  else
  {
    v48 = a3;
    v49 = a5;
    v50 = a6;
    v51 = a7;
    v52 = a9;
    v53 = a10;
    v30 = a11;
    v54 = a11;
    v55 = a12;
    v56 = a14;
    v34 = a15;
    v57 = a15;
    v45 = a16;
    v58 = a16;
    v59 = a17;
    v38 = a19;
    v60 = a19;
    v40 = a20;
    v61 = a20;
    v70 = 0xF000000000000000;
    v71 = 0;
    v77 = a12;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v74 = 0;
  v75 = 0;
LABEL_6:
  v62 = v30;
  v63 = v45;
  if (a6)
  {
    v64 = sub_1B63BEBD4();
    v72 = v65;
    v73 = v64;
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  if (a14)
  {
    v66 = sub_1B63BE924();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0xF000000000000000;
  }

  return UserRoute.init(store:addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(a3, v71, v70, v75, v74, v73, v72, a7, a8, a9, a10, v62, v77, a13, v66, v68, v34, v63, a17, a18, v38, v40);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedUserRoute();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)a3 lazyLoad:(BOOL)a4 parent:(BOOL)a5
{
  v7 = a3;
  v8 = self;
  sub_1B6326C10(v7, a4);
}

- (NSNumber)eastLongitude
{
  v2 = self;
  v3 = sub_1B6322248();

  return v3;
}

- (void)setEastLongitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6327398(a3);
}

- (void)setHikeType:(int64_t)a3
{
  v4 = self;
  sub_1B632270C(a3);
}

- (NSNumber)length
{
  v2 = self;
  v3 = sub_1B6322994();

  return v3;
}

- (void)setLength:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6327594(a3);
}

- (NSNumber)northLatitude
{
  v2 = self;
  v3 = sub_1B6322EB0();

  return v3;
}

- (void)setNorthLatitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B632776C(a3);
}

- (NSNumber)originLatitude
{
  v2 = self;
  v3 = sub_1B632334C();

  return v3;
}

- (void)setOriginLatitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6327944(a3);
}

- (NSNumber)originLongitude
{
  v2 = self;
  v3 = sub_1B63237E8();

  return v3;
}

- (void)setOriginLongitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6327B1C(a3);
}

- (void)setPositionIndex:(int64_t)a3
{
  v4 = self;
  sub_1B6323CAC(a3);
}

- (NSNumber)southLatitude
{
  v2 = self;
  v3 = sub_1B63247D0();

  return v3;
}

- (void)setSouthLatitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6327F10(a3);
}

- (NSNumber)totalAscent
{
  v2 = self;
  v3 = sub_1B6324C6C();

  return v3;
}

- (void)setTotalAscent:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B63280E8(a3);
}

- (NSNumber)totalDescent
{
  v2 = self;
  v3 = sub_1B6325108();

  return v3;
}

- (void)setTotalDescent:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B63282C0(a3);
}

- (void)setTourIdentifier:(int64_t)a3
{
  v4 = self;
  sub_1B63255CC(a3);
}

- (NSNumber)transportType
{
  v2 = self;
  v3 = sub_1B63258C4();

  return v3;
}

- (void)setTransportType:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B63284BC(a3);
}

- (NSNumber)westLongitude
{
  v2 = self;
  v3 = sub_1B6325D60();

  return v3;
}

- (void)setWestLongitude:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1B6328694(a3);
}

- (MSUserRoute)initWithObject:(id)a3 store:(id)a4 lazyLoad:(BOOL)a5 parent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  return sub_1B6326328(a3, a4, v7, v6);
}

@end