@interface MSUserRoute
+ (Class)managedClass;
- (MSUserRoute)initWithAddressObject:(id)object customName:(id)name customNote:(id)note eastLongitude:(id)longitude hikeType:(int64_t)type length:(id)length northLatitude:(id)latitude originLatitude:(id)self0 originLongitude:(id)self1 positionIndex:(int64_t)self2 routeGeometry:(id)self3 southLatitude:(id)self4 totalAscent:(id)self5 totalDescent:(id)self6 tourIdentifier:(int64_t)self7 transportType:(id)self8 westLongitude:(id)self9;
- (MSUserRoute)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSUserRoute)initWithStore:(id)store addressObject:(id)object customName:(id)name customNote:(id)note eastLongitude:(id)longitude hikeType:(int64_t)type length:(id)length northLatitude:(id)self0 originLatitude:(id)self1 originLongitude:(id)self2 positionIndex:(int64_t)self3 routeGeometry:(id)self4 southLatitude:(id)self5 totalAscent:(id)self6 totalDescent:(id)self7 tourIdentifier:(int64_t)self8 transportType:(id)self9 westLongitude:(id)westLongitude;
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
- (void)setEastLongitude:(id)longitude;
- (void)setHikeType:(int64_t)type;
- (void)setLength:(id)length;
- (void)setNorthLatitude:(id)latitude;
- (void)setOriginLatitude:(id)latitude;
- (void)setOriginLongitude:(id)longitude;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setSouthLatitude:(id)latitude;
- (void)setTotalAscent:(id)ascent;
- (void)setTotalDescent:(id)descent;
- (void)setTourIdentifier:(int64_t)identifier;
- (void)setTransportType:(id)type;
- (void)setWestLongitude:(id)longitude;
@end

@implementation MSUserRoute

- (MSUserRoute)initWithAddressObject:(id)object customName:(id)name customNote:(id)note eastLongitude:(id)longitude hikeType:(int64_t)type length:(id)length northLatitude:(id)latitude originLatitude:(id)self0 originLongitude:(id)self1 positionIndex:(int64_t)self2 routeGeometry:(id)self3 southLatitude:(id)self4 totalAscent:(id)self5 totalDescent:(id)self6 tourIdentifier:(int64_t)self7 transportType:(id)self8 westLongitude:(id)self9
{
  if (object)
  {
    nameCopy = name;
    noteCopy = note;
    longitudeCopy = longitude;
    lengthCopy = length;
    latitudeCopy = latitude;
    originLatitudeCopy = originLatitude;
    originLongitudeCopy = originLongitude;
    geometryCopy = geometry;
    southLatitudeCopy3 = southLatitude;
    southLatitudeCopy2 = southLatitude;
    ascentCopy3 = ascent;
    ascentCopy2 = ascent;
    descentCopy = descent;
    transportTypeCopy3 = transportType;
    transportTypeCopy2 = transportType;
    westLongitudeCopy = westLongitude;
    objectCopy = object;
    v41 = sub_1B63BE924();
    v65 = v42;
    v66 = v41;

    westLongitudeCopy3 = westLongitude;
    originLongitudeCopy4 = originLongitude;
    if (name)
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
    nameCopy2 = name;
    noteCopy2 = note;
    longitudeCopy2 = longitude;
    lengthCopy2 = length;
    latitudeCopy2 = latitude;
    originLatitudeCopy2 = originLatitude;
    originLongitudeCopy3 = originLongitude;
    geometryCopy2 = geometry;
    southLatitudeCopy3 = southLatitude;
    southLatitudeCopy4 = southLatitude;
    ascentCopy3 = ascent;
    ascentCopy4 = ascent;
    descentCopy2 = descent;
    transportTypeCopy3 = transportType;
    transportTypeCopy4 = transportType;
    westLongitudeCopy3 = westLongitude;
    westLongitudeCopy4 = westLongitude;
    v65 = 0xF000000000000000;
    v66 = 0;
    originLongitudeCopy4 = originLongitude;
    if (name)
    {
      goto LABEL_3;
    }
  }

  v69 = 0;
  v70 = 0;
LABEL_6:
  if (note)
  {
    v68 = sub_1B63BEBD4();
    v60 = v59;
  }

  else
  {
    v68 = 0;
    v60 = 0;
  }

  if (geometry)
  {
    v61 = sub_1B63BE924();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0xF000000000000000;
  }

  return UserRoute.init(addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(v66, v65, v70, v69, v68, v60, longitude, type, length, latitude, originLatitude, originLongitudeCopy4, index, v61, v63, southLatitudeCopy3, ascentCopy3, descent, identifier, transportTypeCopy3, westLongitudeCopy3);
}

- (MSUserRoute)initWithStore:(id)store addressObject:(id)object customName:(id)name customNote:(id)note eastLongitude:(id)longitude hikeType:(int64_t)type length:(id)length northLatitude:(id)self0 originLatitude:(id)self1 originLongitude:(id)self2 positionIndex:(int64_t)self3 routeGeometry:(id)self4 southLatitude:(id)self5 totalAscent:(id)self6 totalDescent:(id)self7 tourIdentifier:(int64_t)self8 transportType:(id)self9 westLongitude:(id)westLongitude
{
  if (object)
  {
    storeCopy = store;
    nameCopy = name;
    noteCopy = note;
    longitudeCopy = longitude;
    lengthCopy = length;
    latitudeCopy = latitude;
    originLatitudeCopy3 = originLatitude;
    originLatitudeCopy2 = originLatitude;
    originLongitudeCopy = originLongitude;
    geometryCopy = geometry;
    southLatitudeCopy3 = southLatitude;
    southLatitudeCopy2 = southLatitude;
    ascentCopy = ascent;
    descentCopy = descent;
    transportTypeCopy3 = transportType;
    transportTypeCopy2 = transportType;
    westLongitudeCopy3 = westLongitude;
    westLongitudeCopy2 = westLongitude;
    objectCopy = object;
    v43 = sub_1B63BE924();
    v70 = v44;
    v71 = v43;

    ascentCopy3 = ascent;
    originLongitudeCopy4 = originLongitude;
    if (name)
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
    storeCopy2 = store;
    nameCopy2 = name;
    noteCopy2 = note;
    longitudeCopy2 = longitude;
    lengthCopy2 = length;
    latitudeCopy2 = latitude;
    originLatitudeCopy3 = originLatitude;
    originLatitudeCopy4 = originLatitude;
    originLongitudeCopy3 = originLongitude;
    geometryCopy2 = geometry;
    southLatitudeCopy3 = southLatitude;
    southLatitudeCopy4 = southLatitude;
    ascentCopy3 = ascent;
    ascentCopy4 = ascent;
    descentCopy2 = descent;
    transportTypeCopy3 = transportType;
    transportTypeCopy4 = transportType;
    westLongitudeCopy3 = westLongitude;
    westLongitudeCopy4 = westLongitude;
    v70 = 0xF000000000000000;
    v71 = 0;
    originLongitudeCopy4 = originLongitude;
    if (name)
    {
      goto LABEL_3;
    }
  }

  v74 = 0;
  v75 = 0;
LABEL_6:
  v62 = originLatitudeCopy3;
  v63 = ascentCopy3;
  if (note)
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

  if (geometry)
  {
    v66 = sub_1B63BE924();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0xF000000000000000;
  }

  return UserRoute.init(store:addressObject:customName:customNote:eastLongitude:hikeType:length:northLatitude:originLatitude:originLongitude:positionIndex:routeGeometry:southLatitude:totalAscent:totalDescent:tourIdentifier:transportType:westLongitude:)(store, v71, v70, v75, v74, v73, v72, longitude, type, length, latitude, v62, originLongitudeCopy4, index, v66, v68, southLatitudeCopy3, v63, descent, identifier, transportTypeCopy3, westLongitudeCopy3);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedUserRoute();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B6326C10(objectCopy, load);
}

- (NSNumber)eastLongitude
{
  selfCopy = self;
  v3 = sub_1B6322248();

  return v3;
}

- (void)setEastLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B6327398(longitude);
}

- (void)setHikeType:(int64_t)type
{
  selfCopy = self;
  sub_1B632270C(type);
}

- (NSNumber)length
{
  selfCopy = self;
  v3 = sub_1B6322994();

  return v3;
}

- (void)setLength:(id)length
{
  lengthCopy = length;
  selfCopy = self;
  sub_1B6327594(length);
}

- (NSNumber)northLatitude
{
  selfCopy = self;
  v3 = sub_1B6322EB0();

  return v3;
}

- (void)setNorthLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B632776C(latitude);
}

- (NSNumber)originLatitude
{
  selfCopy = self;
  v3 = sub_1B632334C();

  return v3;
}

- (void)setOriginLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B6327944(latitude);
}

- (NSNumber)originLongitude
{
  selfCopy = self;
  v3 = sub_1B63237E8();

  return v3;
}

- (void)setOriginLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B6327B1C(longitude);
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B6323CAC(index);
}

- (NSNumber)southLatitude
{
  selfCopy = self;
  v3 = sub_1B63247D0();

  return v3;
}

- (void)setSouthLatitude:(id)latitude
{
  latitudeCopy = latitude;
  selfCopy = self;
  sub_1B6327F10(latitude);
}

- (NSNumber)totalAscent
{
  selfCopy = self;
  v3 = sub_1B6324C6C();

  return v3;
}

- (void)setTotalAscent:(id)ascent
{
  ascentCopy = ascent;
  selfCopy = self;
  sub_1B63280E8(ascent);
}

- (NSNumber)totalDescent
{
  selfCopy = self;
  v3 = sub_1B6325108();

  return v3;
}

- (void)setTotalDescent:(id)descent
{
  descentCopy = descent;
  selfCopy = self;
  sub_1B63282C0(descent);
}

- (void)setTourIdentifier:(int64_t)identifier
{
  selfCopy = self;
  sub_1B63255CC(identifier);
}

- (NSNumber)transportType
{
  selfCopy = self;
  v3 = sub_1B63258C4();

  return v3;
}

- (void)setTransportType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  sub_1B63284BC(type);
}

- (NSNumber)westLongitude
{
  selfCopy = self;
  v3 = sub_1B6325D60();

  return v3;
}

- (void)setWestLongitude:(id)longitude
{
  longitudeCopy = longitude;
  selfCopy = self;
  sub_1B6328694(longitude);
}

- (MSUserRoute)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B6326328(object, store, loadCopy, parentCopy);
}

@end