@interface CalLocation
+ (id)coordinatesFromGeoURLString:(id)string;
+ (id)displayStringForAddress:(id)address withoutTitle:(id)title;
+ (id)fullDisplayStringWithTitle:(id)title address:(id)address;
+ (id)geoURLStringFromCoordinates:(id)coordinates;
+ (id)routeTypeStringForCalLocationRoutingMode:(int64_t)mode;
+ (int64_t)routingModeEnumForCalRouteType:(id)type;
- (BOOL)isEqual:(id)equal;
- (CLLocation)location;
- (CalLocation)initWithCoder:(id)coder;
- (double)distanceFromLocation:(id)location;
- (double)radius;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayString;
- (id)fullTitleAndAddressString;
- (id)geoURLString;
- (id)typeString;
- (void)encodeWithCoder:(id)coder;
- (void)setLocation:(id)location;
@end

@implementation CalLocation

- (CLLocation)location
{
  location = self->_location;
  if (location)
  {
    location2 = location;
  }

  else
  {
    placemark = [(CalLocation *)self placemark];
    if (!placemark)
    {
      goto LABEL_6;
    }

    v6 = placemark;
    placemark2 = [(CalLocation *)self placemark];
    location = [placemark2 location];

    if (location)
    {
      placemark3 = [(CalLocation *)self placemark];
      location2 = [placemark3 location];
    }

    else
    {
LABEL_6:
      location2 = 0;
    }
  }

  return location2;
}

- (double)radius
{
  radius = self->_radius;
  v3 = radius;
  if (fabsf(v3) < 0.00000011921)
  {
    placemark = [(CalLocation *)self placemark];
    region = [placemark region];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && region)
    {
      [region radius];
      radius = v6;
    }
  }

  return radius;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  displayName = [(CalLocation *)self displayName];
  [v6 appendFormat:@"\n\tdisplayName: %@", displayName];

  title = [(CalLocation *)self title];
  [v6 appendFormat:@"\n\ttitle: %@", title];

  address = [(CalLocation *)self address];
  [v6 appendFormat:@"\n\taddress: %@", address];

  location = [(CalLocation *)self location];
  [v6 appendFormat:@"\n\tlocation: %@", location];

  typeString = [(CalLocation *)self typeString];
  [v6 appendFormat:@"\n\ttype: %@", typeString];

  geoURLString = [(CalLocation *)self geoURLString];
  [v6 appendFormat:@"\n\tgeoURLString: %@", geoURLString];

  abURLString = [(CalLocation *)self abURLString];
  [v6 appendFormat:@"\n\tabURLString: %@", abURLString];

  [v6 appendFormat:@"\n\tisCurrentLocation: %d", -[CalLocation isCurrentLocation](self, "isCurrentLocation")];
  [(CalLocation *)self radius];
  [v6 appendFormat:@"\n\tradius: %f", v14];

  return v6;
}

- (id)typeString
{
  type = [(CalLocation *)self type];
  if (type > 8)
  {
    return &stru_1F379FFA8;
  }

  else
  {
    return off_1E7EC7940[type];
  }
}

- (id)geoURLString
{
  location = [(CalLocation *)self location];

  if (location)
  {
    location = [(CalLocation *)self location];
  }

  placemark = [(CalLocation *)self placemark];
  if (placemark)
  {
    v5 = placemark;
    placemark2 = [(CalLocation *)self placemark];
    location2 = [placemark2 location];

    if (location2)
    {
      placemark3 = [(CalLocation *)self placemark];
      location3 = [placemark3 location];

      location = location3;
    }
  }

  v10 = [objc_opt_class() geoURLStringFromCoordinates:location];

  return v10;
}

- (id)displayString
{
  displayName = [(CalLocation *)self displayName];

  if (displayName)
  {
    displayName2 = [(CalLocation *)self displayName];
  }

  else
  {
    title = [(CalLocation *)self title];

    if (title)
    {
      displayName2 = [(CalLocation *)self title];
    }

    else
    {
      displayName2 = 0;
    }
  }

  return displayName2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CalLocation);
  location = [(CalLocation *)self location];
  [(CalLocation *)v4 setLocation:location];

  address = [(CalLocation *)self address];
  [(CalLocation *)v4 setAddress:address];

  title = [(CalLocation *)self title];
  [(CalLocation *)v4 setTitle:title];

  displayName = [(CalLocation *)self displayName];
  [(CalLocation *)v4 setDisplayName:displayName];

  abURLString = [(CalLocation *)self abURLString];
  [(CalLocation *)v4 setAbURLString:abURLString];

  [(CalLocation *)v4 setType:[(CalLocation *)self type]];
  [(CalLocation *)self radius];
  [(CalLocation *)v4 setRadius:?];
  routeType = [(CalLocation *)self routeType];
  [(CalLocation *)v4 setRouteType:routeType];

  mapKitHandle = [(CalLocation *)self mapKitHandle];
  [(CalLocation *)v4 setMapKitHandle:mapKitHandle];

  return v4;
}

- (CalLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = CalLocation;
  v5 = [(CalLocation *)&v31 init];
  if (v5)
  {
    if ([coderCopy decodeBoolForKey:@"hasValidLocation"])
    {
      [coderCopy decodeDoubleForKey:@"longitude"];
      v7 = v6;
      [coderCopy decodeDoubleForKey:@"latitude"];
      v9 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v8 longitude:v7];
      location = v5->_location;
      v5->_location = v9;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    v12 = [v11 copy];
    address = v5->_address;
    v5->_address = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v15 = [v14 copy];
    title = v5->_title;
    v5->_title = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abURLString"];
    v18 = [v17 copy];
    abURLString = v5->_abURLString;
    v5->_abURLString = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    v21 = [v20 copy];
    displayName = v5->_displayName;
    v5->_displayName = v21;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    [coderCopy decodeDoubleForKey:@"radius"];
    v5->_radius = v23;
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeType"];
    v25 = [v24 copy];
    routeType = v5->_routeType;
    v5->_routeType = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mapKitHandle"];
    v28 = [v27 copy];
    mapKitHandle = v5->_mapKitHandle;
    v5->_mapKitHandle = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(CalLocation *)self location];

  if (location)
  {
    [coderCopy encodeBool:1 forKey:@"hasValidLocation"];
    location2 = [(CalLocation *)self location];
    [location2 coordinate];
    [coderCopy encodeDouble:@"latitude" forKey:?];

    location3 = [(CalLocation *)self location];
    [location3 coordinate];
    [coderCopy encodeDouble:@"longitude" forKey:v7];
  }

  [coderCopy encodeInteger:-[CalLocation type](self forKey:{"type"), @"type"}];
  address = [(CalLocation *)self address];
  [coderCopy encodeObject:address forKey:@"address"];

  title = [(CalLocation *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  abURLString = [(CalLocation *)self abURLString];
  [coderCopy encodeObject:abURLString forKey:@"abURLString"];

  displayName = [(CalLocation *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  [(CalLocation *)self radius];
  [coderCopy encodeDouble:@"radius" forKey:?];
  routeType = [(CalLocation *)self routeType];
  [coderCopy encodeObject:routeType forKey:@"routeType"];

  mapKitHandle = [(CalLocation *)self mapKitHandle];
  [coderCopy encodeObject:mapKitHandle forKey:@"mapKitHandle"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
    goto LABEL_51;
  }

  v6 = objc_opt_class();
  if (v6 != objc_opt_class())
  {
    LOBYTE(v7) = 0;
    goto LABEL_51;
  }

  address = [(CalLocation *)self address];
  if (!address)
  {
    address2 = [(CalLocation *)equalCopy address];
    if (!address2)
    {
      v11 = 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  address3 = [(CalLocation *)self address];
  address4 = [(CalLocation *)equalCopy address];
  v11 = [address3 isEqual:address4];

  if (!address)
  {
    goto LABEL_10;
  }

LABEL_11:

  title = [(CalLocation *)self title];
  if (!title)
  {
    address2 = [(CalLocation *)equalCopy title];
    if (!address2)
    {
      goto LABEL_16;
    }
  }

  title2 = [(CalLocation *)self title];
  title3 = [(CalLocation *)equalCopy title];
  if (![title2 isEqual:title3])
  {
    v11 = 0;
  }

  if (!title)
  {
LABEL_16:
  }

  displayName = [(CalLocation *)self displayName];
  if (!displayName)
  {
    address2 = [(CalLocation *)equalCopy displayName];
    if (!address2)
    {
      goto LABEL_22;
    }
  }

  displayName2 = [(CalLocation *)self displayName];
  displayName3 = [(CalLocation *)equalCopy displayName];
  if (![displayName2 isEqual:displayName3])
  {
    v11 = 0;
  }

  if (!displayName)
  {
LABEL_22:
  }

  abURLString = [(CalLocation *)self abURLString];
  if (!abURLString)
  {
    address2 = [(CalLocation *)equalCopy abURLString];
    if (!address2)
    {
      goto LABEL_28;
    }
  }

  abURLString2 = [(CalLocation *)self abURLString];
  abURLString3 = [(CalLocation *)equalCopy abURLString];
  if (![abURLString2 isEqual:abURLString3])
  {
    v11 = 0;
  }

  if (!abURLString)
  {
LABEL_28:
  }

  placemark = [(CalLocation *)self placemark];
  if (!placemark)
  {
    address2 = [(CalLocation *)equalCopy placemark];
    if (!address2)
    {
      goto LABEL_34;
    }
  }

  placemark2 = [(CalLocation *)self placemark];
  placemark3 = [(CalLocation *)equalCopy placemark];
  if (![placemark2 isEqual:placemark3])
  {
    v11 = 0;
  }

  if (!placemark)
  {
LABEL_34:
  }

  type = [(CalLocation *)self type];
  v26 = type == [(CalLocation *)equalCopy type]&& v11 != 0;
  [(CalLocation *)self radius];
  v28 = v27;
  [(CalLocation *)equalCopy radius];
  v30 = vabdd_f64(v28, v29) < 2.22044605e-16 && v26;
  routeType = [(CalLocation *)self routeType];
  routeType2 = [(CalLocation *)equalCopy routeType];
  if (routeType != routeType2)
  {
    v30 = 0;
  }

  isCurrentLocation = [(CalLocation *)self isCurrentLocation];
  v7 = v30 & (isCurrentLocation ^ [(CalLocation *)equalCopy isCurrentLocation]^ 1);
  mapKitHandle = [(CalLocation *)self mapKitHandle];
  if (!mapKitHandle)
  {
    address2 = [(CalLocation *)equalCopy mapKitHandle];
    if (!address2)
    {
      goto LABEL_49;
    }
  }

  mapKitHandle2 = [(CalLocation *)self mapKitHandle];
  mapKitHandle3 = [(CalLocation *)equalCopy mapKitHandle];
  v7 &= [mapKitHandle2 isEqual:mapKitHandle3];

  if (!mapKitHandle)
  {
LABEL_49:
  }

LABEL_51:
  return v7;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  location = self->_location;
  p_location = &self->_location;
  if (location != locationCopy)
  {
    v8 = locationCopy;
    objc_storeStrong(p_location, location);
    locationCopy = v8;
  }
}

- (double)distanceFromLocation:(id)location
{
  locationCopy = location;
  location = [(CalLocation *)self location];
  location2 = [locationCopy location];

  [location distanceFromLocation:location2];
  v8 = v7;

  return v8;
}

- (id)fullTitleAndAddressString
{
  v3 = objc_opt_class();
  title = [(CalLocation *)self title];
  address = [(CalLocation *)self address];
  v6 = [v3 fullDisplayStringWithTitle:title address:address];

  return v6;
}

+ (id)geoURLStringFromCoordinates:(id)coordinates
{
  if (coordinates)
  {
    v4 = MEMORY[0x1E696AEC0];
    coordinatesCopy = coordinates;
    [coordinatesCopy coordinate];
    v7 = v6;
    [coordinatesCopy coordinate];
    v9 = v8;

    v10 = [v4 stringWithFormat:@"geo:%f, %f", v7, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)coordinatesFromGeoURLString:(id)string
{
  if (string)
  {
    v13 = 0.0;
    v14 = 0.0;
    v3 = [MEMORY[0x1E696AE88] scannerWithString:?];
    v4 = [v3 scanString:@"geo:" intoString:0];
    v5 = [v3 scanDouble:&v14];
    v6 = [v3 scanString:@" intoString:{", 0}];
    v7 = 0;
    if ([v3 scanDouble:&v13])
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8 && v5 != 0 && v4 != 0)
    {
      v11 = objc_alloc(MEMORY[0x1E6985C40]);
      v7 = [v11 initWithLatitude:v14 longitude:v13];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fullDisplayStringWithTitle:(id)title address:(id)address
{
  titleCopy = title;
  addressCopy = address;
  string = [titleCopy mutableCopy];
  if (!string)
  {
    string = [MEMORY[0x1E696AD60] string];
  }

  if ([addressCopy length])
  {
    if (![titleCopy length])
    {
      v9 = addressCopy;
      goto LABEL_8;
    }

    v9 = [self displayStringForAddress:addressCopy withoutTitle:titleCopy];

    if ([v9 length])
    {
      [string appendString:@"\n"];
      addressCopy = v9;
LABEL_8:
      [string appendString:v9];
      goto LABEL_10;
    }

    addressCopy = v9;
  }

LABEL_10:

  return string;
}

+ (id)displayStringForAddress:(id)address withoutTitle:(id)title
{
  addressCopy = address;
  titleCopy = title;
  if ([addressCopy hasPrefix:titleCopy])
  {
    v7 = [addressCopy stringByReplacingOccurrencesOfString:titleCopy withString:&stru_1F379FFA8];

    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:punctuationCharacterSet];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    addressCopy = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  return addressCopy;
}

+ (id)routeTypeStringForCalLocationRoutingMode:(int64_t)mode
{
  v4 = mode + 1;
  if (mode + 1) <= 5 && ((0x3Du >> v4))
  {
    v5 = *off_1E7EC7988[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)routingModeEnumForCalRouteType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy && [typeCopy length])
  {
    if ([v4 isEqualToString:CalRouteType_Driving])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:CalRouteType_Walking])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:CalRouteType_Transit])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:CalRouteType_Bicycle])
    {
      v5 = 4;
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end