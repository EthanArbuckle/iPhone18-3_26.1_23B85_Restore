@interface RTPointOfInterest
- (BOOL)isEqual:(id)equal;
- (RTPointOfInterest)initWithCoder:(id)coder;
- (RTPointOfInterest)initWithIdentifier:(id)identifier applePaySupport:(BOOL)support filtered:(BOOL)filtered fullyCoversTile:(BOOL)tile location:(id)location muid:(unint64_t)muid polygon:(id)polygon;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPointOfInterest

- (RTPointOfInterest)initWithIdentifier:(id)identifier applePaySupport:(BOOL)support filtered:(BOOL)filtered fullyCoversTile:(BOOL)tile location:(id)location muid:(unint64_t)muid polygon:(id)polygon
{
  identifierCopy = identifier;
  locationCopy = location;
  polygonCopy = polygon;
  if (!identifierCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: identifier";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_9;
  }

  if (!muid)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: muid > 0";
    goto LABEL_12;
  }

  v25.receiver = self;
  v25.super_class = RTPointOfInterest;
  v18 = [(RTPointOfInterest *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    v19->_applePaySupport = support;
    v19->_filtered = filtered;
    v19->_fullyCoversTile = tile;
    objc_storeStrong(&v19->_location, location);
    v19->_muid = muid;
    objc_storeStrong(&v19->_polygon, polygon);
  }

  self = v19;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)description
{
  v2 = @"NO";
  if (self->_applePaySupport)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_filtered)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_fullyCoversTile)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier, %@, muid, %lu, location, %@, applyPaySupport, %@, filtered, %@, fullyCoversTile, %@", self->_identifier, self->_muid, self->_location, v3, v4, v2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPointOfInterest alloc];
  identifier = [(RTPointOfInterest *)self identifier];
  applePaySupport = [(RTPointOfInterest *)self applePaySupport];
  filtered = [(RTPointOfInterest *)self filtered];
  fullyCoversTile = [(RTPointOfInterest *)self fullyCoversTile];
  location = [(RTPointOfInterest *)self location];
  muid = [(RTPointOfInterest *)self muid];
  polygon = [(RTPointOfInterest *)self polygon];
  v12 = [(RTPointOfInterest *)v4 initWithIdentifier:identifier applePaySupport:applePaySupport filtered:filtered fullyCoversTile:fullyCoversTile location:location muid:muid polygon:polygon];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_applePaySupport];
  [coderCopy encodeObject:v5 forKey:@"applePaySupport"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_filtered];
  [coderCopy encodeObject:v6 forKey:@"filtered"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_fullyCoversTile];
  [coderCopy encodeObject:v7 forKey:@"fullyCoversTile"];

  [coderCopy encodeObject:self->_location forKey:@"location"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_muid];
  [coderCopy encodeObject:v8 forKey:@"muid"];

  [coderCopy encodeObject:self->_polygon forKey:@"polygon"];
}

- (RTPointOfInterest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applePaySupport"];
  bOOLValue = [v6 BOOLValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filtered"];
  bOOLValue2 = [v8 BOOLValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullyCoversTile"];
  bOOLValue3 = [v10 BOOLValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"muid"];
  unsignedLongLongValue = [v13 unsignedLongLongValue];

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"polygon"];

  v16 = [(RTPointOfInterest *)self initWithIdentifier:v5 applePaySupport:bOOLValue filtered:bOOLValue2 fullyCoversTile:bOOLValue3 location:v12 muid:unsignedLongLongValue polygon:v15];
  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(RTPointOfInterest *)self identifier];
      identifier2 = [(RTPointOfInterest *)v5 identifier];

      v8 = [identifier isEqual:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end