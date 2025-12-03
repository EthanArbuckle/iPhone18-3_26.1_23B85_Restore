@interface CLSLocationOfInterest
- (BOOL)isEqual:(id)equal;
- (CLSLocationOfInterest)initWithCoder:(id)coder;
- (CLSLocationOfInterest)initWithIdentifier:(id)identifier locationOfInterestType:(int64_t)type location:(id)location placemarkRegion:(id)region businessItemMuid:(unint64_t)muid radius:(double)radius;
- (double)placemarkLocationDistanceFromLocation:(id)location locationCache:(id)cache;
- (id)description;
- (id)placemarkWithLocationCache:(id)cache;
- (void)addVisit:(id)visit;
- (void)encodeWithCoder:(id)coder;
- (void)removeVisit:(id)visit;
@end

@implementation CLSLocationOfInterest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(CLSLocationOfInterest *)equalCopy identifier];
      v7 = [(NSUUID *)identifier isEqual:identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  placemark = self->_placemark;
  if (placemark)
  {
    location = [(CLSLitePlacemark *)placemark location];
    [location coordinate];
    v6 = v5;
    v8 = v7;

    v9 = @"placemark";
  }

  else
  {
    [(CLCircularRegion *)self->_placemarkRegion center];
    v6 = v10;
    v8 = v11;
    v9 = @"region";
  }

  v12 = MEMORY[0x277CCACA8];
  v20.receiver = self;
  v20.super_class = CLSLocationOfInterest;
  v13 = [(CLSLocationOfInterest *)&v20 description];
  v14 = v13;
  type = self->_type;
  v16 = @"Unknown";
  if (type == 1)
  {
    v16 = @"Work";
  }

  if (type)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"Home";
  }

  v18 = [v12 stringWithFormat:@"%@ - {%f, %f} (%@) - %@", v13, v6, v8, v9, v17];

  return v18;
}

- (double)placemarkLocationDistanceFromLocation:(id)location locationCache:(id)cache
{
  cacheCopy = cache;
  v7 = *MEMORY[0x277CE41E0];
  [location coordinate];
  if (CLLocationCoordinate2DIsValid(v19))
  {
    placemarkRegion = self->_placemarkRegion;
    if (placemarkRegion)
    {
      [(CLCircularRegion *)placemarkRegion center];
      if (CLLocationCoordinate2DIsValid(v20))
      {
        CLLocationCoordinate2DGetDistanceFrom();
        v7 = v9;
      }

      v10 = [(CLSLocationOfInterest *)self placemarkWithLocationCache:cacheCopy];
      v11 = v10;
      if (v10)
      {
        location = [v10 location];
        [location coordinate];
        v14 = v13;
        v16 = v15;

        v21.latitude = v14;
        v21.longitude = v16;
        if (CLLocationCoordinate2DIsValid(v21))
        {
          CLLocationCoordinate2DGetDistanceFrom();
          if (v17 < v7)
          {
            v7 = v17;
          }
        }
      }
    }
  }

  return v7;
}

- (void)removeVisit:(id)visit
{
  visits = self->_visits;
  visitCopy = visit;
  [(NSMutableArray *)visits removeObject:visitCopy];
  [visitCopy setLocationOfInterest:0];
}

- (void)addVisit:(id)visit
{
  visitCopy = visit;
  if (([(NSMutableArray *)self->_visits containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_visits addObject:visitCopy];
    [visitCopy setLocationOfInterest:self];
  }
}

- (id)placemarkWithLocationCache:(id)cache
{
  v28 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = cacheCopy;
  if (!self->_placemarkRegion)
  {
    v14 = 0;
    goto LABEL_14;
  }

  placemark = self->_placemark;
  if (!placemark)
  {
    v7 = [cacheCopy placemarksForLocation:?];
    if ([v7 count])
    {
      if ([v7 count] < 2)
      {
LABEL_12:
        firstObject = [v7 firstObject];
        v22 = self->_placemark;
        self->_placemark = firstObject;

        placemark = self->_placemark;
        goto LABEL_13;
      }

      [(CLCircularRegion *)self->_placemarkRegion center];
      v9 = v8;
      v11 = v10;
      v12 = +[CLSLogging sharedLogging];
      p_super = [v12 loggingConnection];

      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        v24 = 134283777;
        v25 = v9;
        v26 = 2049;
        v27 = v11;
        _os_log_error_impl(&dword_22F907000, p_super, OS_LOG_TYPE_ERROR, "More than one placemark found for location {%{private}f, %{private}f}", &v24, 0x16u);
      }
    }

    else
    {
      [(CLCircularRegion *)self->_placemarkRegion center];
      v16 = v15;
      v18 = v17;
      v19 = +[CLSLogging sharedLogging];
      loggingConnection = [v19 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134283777;
        v25 = v16;
        v26 = 2049;
        v27 = v18;
        _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_DEFAULT, "No placemark found for location {%{private}f, %{private}f}", &v24, 0x16u);
      }

      p_super = &self->_placemarkRegion->super.super;
      self->_placemarkRegion = 0;
    }

    goto LABEL_12;
  }

LABEL_13:
  v14 = placemark;
LABEL_14:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  [coderCopy encodeObject:v5 forKey:@"type"];

  [coderCopy encodeDouble:@"radius" forKey:self->_radius];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_businessItemMuid];
  [coderCopy encodeObject:v6 forKey:@"businessItemMuid"];

  [coderCopy encodeObject:self->_placemark forKey:@"placemark"];
  [coderCopy encodeObject:self->_placemarkRegion forKey:@"placemarkRegion"];
}

- (CLSLocationOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  [coderCopy decodeDoubleForKey:@"radius"];
  v9 = v8;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"businessItemMuid"];
  unsignedIntegerValue2 = [v11 unsignedIntegerValue];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];
  region = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placemarkRegion"];

  if (v13 && !region)
  {
    region = [v13 region];
  }

  v15 = [(CLSLocationOfInterest *)self initWithIdentifier:v5 locationOfInterestType:unsignedIntegerValue location:v10 placemarkRegion:region businessItemMuid:unsignedIntegerValue2 radius:v9];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_placemark, v13);
  }

  return v16;
}

- (CLSLocationOfInterest)initWithIdentifier:(id)identifier locationOfInterestType:(int64_t)type location:(id)location placemarkRegion:(id)region businessItemMuid:(unint64_t)muid radius:(double)radius
{
  identifierCopy = identifier;
  locationCopy = location;
  regionCopy = region;
  v23.receiver = self;
  v23.super_class = CLSLocationOfInterest;
  v18 = [(CLSLocationOfInterest *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    v19->_type = type;
    v19->_radius = radius;
    array = [MEMORY[0x277CBEB18] array];
    visits = v19->_visits;
    v19->_visits = array;

    objc_storeStrong(&v19->_location, location);
    v19->_businessItemMuid = muid;
    objc_storeStrong(&v19->_placemarkRegion, region);
  }

  return v19;
}

@end