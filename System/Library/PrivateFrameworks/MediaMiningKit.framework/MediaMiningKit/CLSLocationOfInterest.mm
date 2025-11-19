@interface CLSLocationOfInterest
- (BOOL)isEqual:(id)a3;
- (CLSLocationOfInterest)initWithCoder:(id)a3;
- (CLSLocationOfInterest)initWithIdentifier:(id)a3 locationOfInterestType:(int64_t)a4 location:(id)a5 placemarkRegion:(id)a6 businessItemMuid:(unint64_t)a7 radius:(double)a8;
- (double)placemarkLocationDistanceFromLocation:(id)a3 locationCache:(id)a4;
- (id)description;
- (id)placemarkWithLocationCache:(id)a3;
- (void)addVisit:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeVisit:(id)a3;
@end

@implementation CLSLocationOfInterest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = [(CLSLocationOfInterest *)v4 identifier];
      v7 = [(NSUUID *)identifier isEqual:v6];
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
    v4 = [(CLSLitePlacemark *)placemark location];
    [v4 coordinate];
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

- (double)placemarkLocationDistanceFromLocation:(id)a3 locationCache:(id)a4
{
  v6 = a4;
  v7 = *MEMORY[0x277CE41E0];
  [a3 coordinate];
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

      v10 = [(CLSLocationOfInterest *)self placemarkWithLocationCache:v6];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 location];
        [v12 coordinate];
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

- (void)removeVisit:(id)a3
{
  visits = self->_visits;
  v4 = a3;
  [(NSMutableArray *)visits removeObject:v4];
  [v4 setLocationOfInterest:0];
}

- (void)addVisit:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_visits containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_visits addObject:v4];
    [v4 setLocationOfInterest:self];
  }
}

- (id)placemarkWithLocationCache:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self->_placemarkRegion)
  {
    v14 = 0;
    goto LABEL_14;
  }

  placemark = self->_placemark;
  if (!placemark)
  {
    v7 = [v4 placemarksForLocation:?];
    if ([v7 count])
    {
      if ([v7 count] < 2)
      {
LABEL_12:
        v21 = [v7 firstObject];
        v22 = self->_placemark;
        self->_placemark = v21;

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
      v20 = [v19 loggingConnection];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 134283777;
        v25 = v16;
        v26 = 2049;
        v27 = v18;
        _os_log_impl(&dword_22F907000, v20, OS_LOG_TYPE_DEFAULT, "No placemark found for location {%{private}f, %{private}f}", &v24, 0x16u);
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v7 = a3;
  [v7 encodeObject:identifier forKey:@"identifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_type];
  [v7 encodeObject:v5 forKey:@"type"];

  [v7 encodeDouble:@"radius" forKey:self->_radius];
  [v7 encodeObject:self->_location forKey:@"location"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_businessItemMuid];
  [v7 encodeObject:v6 forKey:@"businessItemMuid"];

  [v7 encodeObject:self->_placemark forKey:@"placemark"];
  [v7 encodeObject:self->_placemarkRegion forKey:@"placemarkRegion"];
}

- (CLSLocationOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = [v6 unsignedIntegerValue];

  [v4 decodeDoubleForKey:@"radius"];
  v9 = v8;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"businessItemMuid"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placemark"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placemarkRegion"];

  if (v13 && !v14)
  {
    v14 = [v13 region];
  }

  v15 = [(CLSLocationOfInterest *)self initWithIdentifier:v5 locationOfInterestType:v7 location:v10 placemarkRegion:v14 businessItemMuid:v12 radius:v9];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_placemark, v13);
  }

  return v16;
}

- (CLSLocationOfInterest)initWithIdentifier:(id)a3 locationOfInterestType:(int64_t)a4 location:(id)a5 placemarkRegion:(id)a6 businessItemMuid:(unint64_t)a7 radius:(double)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v23.receiver = self;
  v23.super_class = CLSLocationOfInterest;
  v18 = [(CLSLocationOfInterest *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    v19->_type = a4;
    v19->_radius = a8;
    v20 = [MEMORY[0x277CBEB18] array];
    visits = v19->_visits;
    v19->_visits = v20;

    objc_storeStrong(&v19->_location, a5);
    v19->_businessItemMuid = a7;
    objc_storeStrong(&v19->_placemarkRegion, a6);
  }

  return v19;
}

@end