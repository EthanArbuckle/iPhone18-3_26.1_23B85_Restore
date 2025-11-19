@interface CalLocation
+ (id)coordinatesFromGeoURLString:(id)a3;
+ (id)displayStringForAddress:(id)a3 withoutTitle:(id)a4;
+ (id)fullDisplayStringWithTitle:(id)a3 address:(id)a4;
+ (id)geoURLStringFromCoordinates:(id)a3;
+ (id)routeTypeStringForCalLocationRoutingMode:(int64_t)a3;
+ (int64_t)routingModeEnumForCalRouteType:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CLLocation)location;
- (CalLocation)initWithCoder:(id)a3;
- (double)distanceFromLocation:(id)a3;
- (double)radius;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)displayString;
- (id)fullTitleAndAddressString;
- (id)geoURLString;
- (id)typeString;
- (void)encodeWithCoder:(id)a3;
- (void)setLocation:(id)a3;
@end

@implementation CalLocation

- (CLLocation)location
{
  location = self->_location;
  if (location)
  {
    v3 = location;
  }

  else
  {
    v5 = [(CalLocation *)self placemark];
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = v5;
    v7 = [(CalLocation *)self placemark];
    v8 = [v7 location];

    if (v8)
    {
      v9 = [(CalLocation *)self placemark];
      v3 = [v9 location];
    }

    else
    {
LABEL_6:
      v3 = 0;
    }
  }

  return v3;
}

- (double)radius
{
  radius = self->_radius;
  v3 = radius;
  if (fabsf(v3) < 0.00000011921)
  {
    v4 = [(CalLocation *)self placemark];
    v5 = [v4 region];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v5)
    {
      [v5 radius];
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

  v7 = [(CalLocation *)self displayName];
  [v6 appendFormat:@"\n\tdisplayName: %@", v7];

  v8 = [(CalLocation *)self title];
  [v6 appendFormat:@"\n\ttitle: %@", v8];

  v9 = [(CalLocation *)self address];
  [v6 appendFormat:@"\n\taddress: %@", v9];

  v10 = [(CalLocation *)self location];
  [v6 appendFormat:@"\n\tlocation: %@", v10];

  v11 = [(CalLocation *)self typeString];
  [v6 appendFormat:@"\n\ttype: %@", v11];

  v12 = [(CalLocation *)self geoURLString];
  [v6 appendFormat:@"\n\tgeoURLString: %@", v12];

  v13 = [(CalLocation *)self abURLString];
  [v6 appendFormat:@"\n\tabURLString: %@", v13];

  [v6 appendFormat:@"\n\tisCurrentLocation: %d", -[CalLocation isCurrentLocation](self, "isCurrentLocation")];
  [(CalLocation *)self radius];
  [v6 appendFormat:@"\n\tradius: %f", v14];

  return v6;
}

- (id)typeString
{
  v2 = [(CalLocation *)self type];
  if (v2 > 8)
  {
    return &stru_1F379FFA8;
  }

  else
  {
    return off_1E7EC7940[v2];
  }
}

- (id)geoURLString
{
  v3 = [(CalLocation *)self location];

  if (v3)
  {
    v3 = [(CalLocation *)self location];
  }

  v4 = [(CalLocation *)self placemark];
  if (v4)
  {
    v5 = v4;
    v6 = [(CalLocation *)self placemark];
    v7 = [v6 location];

    if (v7)
    {
      v8 = [(CalLocation *)self placemark];
      v9 = [v8 location];

      v3 = v9;
    }
  }

  v10 = [objc_opt_class() geoURLStringFromCoordinates:v3];

  return v10;
}

- (id)displayString
{
  v3 = [(CalLocation *)self displayName];

  if (v3)
  {
    v4 = [(CalLocation *)self displayName];
  }

  else
  {
    v5 = [(CalLocation *)self title];

    if (v5)
    {
      v4 = [(CalLocation *)self title];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CalLocation);
  v5 = [(CalLocation *)self location];
  [(CalLocation *)v4 setLocation:v5];

  v6 = [(CalLocation *)self address];
  [(CalLocation *)v4 setAddress:v6];

  v7 = [(CalLocation *)self title];
  [(CalLocation *)v4 setTitle:v7];

  v8 = [(CalLocation *)self displayName];
  [(CalLocation *)v4 setDisplayName:v8];

  v9 = [(CalLocation *)self abURLString];
  [(CalLocation *)v4 setAbURLString:v9];

  [(CalLocation *)v4 setType:[(CalLocation *)self type]];
  [(CalLocation *)self radius];
  [(CalLocation *)v4 setRadius:?];
  v10 = [(CalLocation *)self routeType];
  [(CalLocation *)v4 setRouteType:v10];

  v11 = [(CalLocation *)self mapKitHandle];
  [(CalLocation *)v4 setMapKitHandle:v11];

  return v4;
}

- (CalLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CalLocation;
  v5 = [(CalLocation *)&v31 init];
  if (v5)
  {
    if ([v4 decodeBoolForKey:@"hasValidLocation"])
    {
      [v4 decodeDoubleForKey:@"longitude"];
      v7 = v6;
      [v4 decodeDoubleForKey:@"latitude"];
      v9 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v8 longitude:v7];
      location = v5->_location;
      v5->_location = v9;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    v12 = [v11 copy];
    address = v5->_address;
    v5->_address = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v15 = [v14 copy];
    title = v5->_title;
    v5->_title = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abURLString"];
    v18 = [v17 copy];
    abURLString = v5->_abURLString;
    v5->_abURLString = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    v21 = [v20 copy];
    displayName = v5->_displayName;
    v5->_displayName = v21;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    [v4 decodeDoubleForKey:@"radius"];
    v5->_radius = v23;
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeType"];
    v25 = [v24 copy];
    routeType = v5->_routeType;
    v5->_routeType = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mapKitHandle"];
    v28 = [v27 copy];
    mapKitHandle = v5->_mapKitHandle;
    v5->_mapKitHandle = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(CalLocation *)self location];

  if (v4)
  {
    [v14 encodeBool:1 forKey:@"hasValidLocation"];
    v5 = [(CalLocation *)self location];
    [v5 coordinate];
    [v14 encodeDouble:@"latitude" forKey:?];

    v6 = [(CalLocation *)self location];
    [v6 coordinate];
    [v14 encodeDouble:@"longitude" forKey:v7];
  }

  [v14 encodeInteger:-[CalLocation type](self forKey:{"type"), @"type"}];
  v8 = [(CalLocation *)self address];
  [v14 encodeObject:v8 forKey:@"address"];

  v9 = [(CalLocation *)self title];
  [v14 encodeObject:v9 forKey:@"title"];

  v10 = [(CalLocation *)self abURLString];
  [v14 encodeObject:v10 forKey:@"abURLString"];

  v11 = [(CalLocation *)self displayName];
  [v14 encodeObject:v11 forKey:@"displayName"];

  [(CalLocation *)self radius];
  [v14 encodeDouble:@"radius" forKey:?];
  v12 = [(CalLocation *)self routeType];
  [v14 encodeObject:v12 forKey:@"routeType"];

  v13 = [(CalLocation *)self mapKitHandle];
  [v14 encodeObject:v13 forKey:@"mapKitHandle"];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
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

  v8 = [(CalLocation *)self address];
  if (!v8)
  {
    v3 = [(CalLocation *)v5 address];
    if (!v3)
    {
      v11 = 1;
LABEL_10:

      goto LABEL_11;
    }
  }

  v9 = [(CalLocation *)self address];
  v10 = [(CalLocation *)v5 address];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_11:

  v12 = [(CalLocation *)self title];
  if (!v12)
  {
    v3 = [(CalLocation *)v5 title];
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  v13 = [(CalLocation *)self title];
  v14 = [(CalLocation *)v5 title];
  if (![v13 isEqual:v14])
  {
    v11 = 0;
  }

  if (!v12)
  {
LABEL_16:
  }

  v15 = [(CalLocation *)self displayName];
  if (!v15)
  {
    v3 = [(CalLocation *)v5 displayName];
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v16 = [(CalLocation *)self displayName];
  v17 = [(CalLocation *)v5 displayName];
  if (![v16 isEqual:v17])
  {
    v11 = 0;
  }

  if (!v15)
  {
LABEL_22:
  }

  v18 = [(CalLocation *)self abURLString];
  if (!v18)
  {
    v3 = [(CalLocation *)v5 abURLString];
    if (!v3)
    {
      goto LABEL_28;
    }
  }

  v19 = [(CalLocation *)self abURLString];
  v20 = [(CalLocation *)v5 abURLString];
  if (![v19 isEqual:v20])
  {
    v11 = 0;
  }

  if (!v18)
  {
LABEL_28:
  }

  v21 = [(CalLocation *)self placemark];
  if (!v21)
  {
    v3 = [(CalLocation *)v5 placemark];
    if (!v3)
    {
      goto LABEL_34;
    }
  }

  v22 = [(CalLocation *)self placemark];
  v23 = [(CalLocation *)v5 placemark];
  if (![v22 isEqual:v23])
  {
    v11 = 0;
  }

  if (!v21)
  {
LABEL_34:
  }

  v24 = [(CalLocation *)self type];
  v26 = v24 == [(CalLocation *)v5 type]&& v11 != 0;
  [(CalLocation *)self radius];
  v28 = v27;
  [(CalLocation *)v5 radius];
  v30 = vabdd_f64(v28, v29) < 2.22044605e-16 && v26;
  v31 = [(CalLocation *)self routeType];
  v32 = [(CalLocation *)v5 routeType];
  if (v31 != v32)
  {
    v30 = 0;
  }

  v33 = [(CalLocation *)self isCurrentLocation];
  v7 = v30 & (v33 ^ [(CalLocation *)v5 isCurrentLocation]^ 1);
  v34 = [(CalLocation *)self mapKitHandle];
  if (!v34)
  {
    v3 = [(CalLocation *)v5 mapKitHandle];
    if (!v3)
    {
      goto LABEL_49;
    }
  }

  v35 = [(CalLocation *)self mapKitHandle];
  v36 = [(CalLocation *)v5 mapKitHandle];
  v7 &= [v35 isEqual:v36];

  if (!v34)
  {
LABEL_49:
  }

LABEL_51:
  return v7;
}

- (void)setLocation:(id)a3
{
  v5 = a3;
  location = self->_location;
  p_location = &self->_location;
  if (location != v5)
  {
    v8 = v5;
    objc_storeStrong(p_location, a3);
    v5 = v8;
  }
}

- (double)distanceFromLocation:(id)a3
{
  v4 = a3;
  v5 = [(CalLocation *)self location];
  v6 = [v4 location];

  [v5 distanceFromLocation:v6];
  v8 = v7;

  return v8;
}

- (id)fullTitleAndAddressString
{
  v3 = objc_opt_class();
  v4 = [(CalLocation *)self title];
  v5 = [(CalLocation *)self address];
  v6 = [v3 fullDisplayStringWithTitle:v4 address:v5];

  return v6;
}

+ (id)geoURLStringFromCoordinates:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = a3;
    [v5 coordinate];
    v7 = v6;
    [v5 coordinate];
    v9 = v8;

    v10 = [v4 stringWithFormat:@"geo:%f, %f", v7, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)coordinatesFromGeoURLString:(id)a3
{
  if (a3)
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

+ (id)fullDisplayStringWithTitle:(id)a3 address:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  if (!v8)
  {
    v8 = [MEMORY[0x1E696AD60] string];
  }

  if ([v7 length])
  {
    if (![v6 length])
    {
      v9 = v7;
      goto LABEL_8;
    }

    v9 = [a1 displayStringForAddress:v7 withoutTitle:v6];

    if ([v9 length])
    {
      [v8 appendString:@"\n"];
      v7 = v9;
LABEL_8:
      [v8 appendString:v9];
      goto LABEL_10;
    }

    v7 = v9;
  }

LABEL_10:

  return v8;
}

+ (id)displayStringForAddress:(id)a3 withoutTitle:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasPrefix:v6])
  {
    v7 = [v5 stringByReplacingOccurrencesOfString:v6 withString:&stru_1F379FFA8];

    v8 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];

    v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v5 = [v9 stringByTrimmingCharactersInSet:v10];
  }

  return v5;
}

+ (id)routeTypeStringForCalLocationRoutingMode:(int64_t)a3
{
  v4 = a3 + 1;
  if (a3 + 1) <= 5 && ((0x3Du >> v4))
  {
    v5 = *off_1E7EC7988[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)routingModeEnumForCalRouteType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
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