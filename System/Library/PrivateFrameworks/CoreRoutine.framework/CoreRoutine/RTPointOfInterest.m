@interface RTPointOfInterest
- (BOOL)isEqual:(id)a3;
- (RTPointOfInterest)initWithCoder:(id)a3;
- (RTPointOfInterest)initWithIdentifier:(id)a3 applePaySupport:(BOOL)a4 filtered:(BOOL)a5 fullyCoversTile:(BOOL)a6 location:(id)a7 muid:(unint64_t)a8 polygon:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPointOfInterest

- (RTPointOfInterest)initWithIdentifier:(id)a3 applePaySupport:(BOOL)a4 filtered:(BOOL)a5 fullyCoversTile:(BOOL)a6 location:(id)a7 muid:(unint64_t)a8 polygon:(id)a9
{
  v16 = a3;
  v24 = a7;
  v17 = a9;
  if (!v16)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v20 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: identifier";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_9;
  }

  if (!a8)
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
    objc_storeStrong(&v18->_identifier, a3);
    v19->_applePaySupport = a4;
    v19->_filtered = a5;
    v19->_fullyCoversTile = a6;
    objc_storeStrong(&v19->_location, a7);
    v19->_muid = a8;
    objc_storeStrong(&v19->_polygon, a9);
  }

  self = v19;
  v20 = self;
LABEL_10:

  return v20;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPointOfInterest alloc];
  v5 = [(RTPointOfInterest *)self identifier];
  v6 = [(RTPointOfInterest *)self applePaySupport];
  v7 = [(RTPointOfInterest *)self filtered];
  v8 = [(RTPointOfInterest *)self fullyCoversTile];
  v9 = [(RTPointOfInterest *)self location];
  v10 = [(RTPointOfInterest *)self muid];
  v11 = [(RTPointOfInterest *)self polygon];
  v12 = [(RTPointOfInterest *)v4 initWithIdentifier:v5 applePaySupport:v6 filtered:v7 fullyCoversTile:v8 location:v9 muid:v10 polygon:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v9 = a3;
  [v9 encodeObject:identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_applePaySupport];
  [v9 encodeObject:v5 forKey:@"applePaySupport"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_filtered];
  [v9 encodeObject:v6 forKey:@"filtered"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_fullyCoversTile];
  [v9 encodeObject:v7 forKey:@"fullyCoversTile"];

  [v9 encodeObject:self->_location forKey:@"location"];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_muid];
  [v9 encodeObject:v8 forKey:@"muid"];

  [v9 encodeObject:self->_polygon forKey:@"polygon"];
}

- (RTPointOfInterest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applePaySupport"];
  v7 = [v6 BOOLValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filtered"];
  v9 = [v8 BOOLValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fullyCoversTile"];
  v11 = [v10 BOOLValue];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"muid"];
  v14 = [v13 unsignedLongLongValue];

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"polygon"];

  v16 = [(RTPointOfInterest *)self initWithIdentifier:v5 applePaySupport:v7 filtered:v9 fullyCoversTile:v11 location:v12 muid:v14 polygon:v15];
  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTPointOfInterest *)self identifier];
      v7 = [(RTPointOfInterest *)v5 identifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end