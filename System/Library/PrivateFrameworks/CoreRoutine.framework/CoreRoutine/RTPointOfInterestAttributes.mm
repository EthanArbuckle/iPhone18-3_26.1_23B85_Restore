@interface RTPointOfInterestAttributes
- (RTPointOfInterestAttributes)initWithApplePaySupport:(BOOL)a3 category:(id)a4 muid:(unint64_t)a5 nearbyPoiCount:(unint64_t)a6;
- (RTPointOfInterestAttributes)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPointOfInterestAttributes

- (RTPointOfInterestAttributes)initWithApplePaySupport:(BOOL)a3 category:(id)a4 muid:(unint64_t)a5 nearbyPoiCount:(unint64_t)a6
{
  v11 = a4;
  if (a5)
  {
    v17.receiver = self;
    v17.super_class = RTPointOfInterestAttributes;
    v12 = [(RTPointOfInterestAttributes *)&v17 init];
    v13 = v12;
    if (v12)
    {
      v12->_applePaySupport = a3;
      objc_storeStrong(&v12->_category, a4);
      v13->_muid = a5;
      v13->_nearbyPoiCount = a6;
    }

    self = v13;
    v14 = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: muid > 0", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v2 = @"NO";
  if (self->_applePaySupport)
  {
    v2 = @"YES";
  }

  category = self->_category;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"muid, %lu, applePaySupport, %@, category, %@, nearbyPOICount, %lu", self->_muid, v2, category, self->_nearbyPoiCount];
}

- (void)encodeWithCoder:(id)a3
{
  applePaySupport = self->_applePaySupport;
  v5 = a3;
  [v5 encodeBool:applePaySupport forKey:@"applePaySupport"];
  [v5 encodeObject:self->_category forKey:@"category"];
  [v5 encodeInteger:self->_muid forKey:@"muid"];
  [v5 encodeInteger:self->_nearbyPoiCount forKey:@"nearbyPoiCount"];
}

- (RTPointOfInterestAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"applePaySupport"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  v7 = [v4 decodeIntegerForKey:@"muid"];
  v8 = [v4 decodeIntegerForKey:@"nearbyPoiCount"];

  v9 = [(RTPointOfInterestAttributes *)self initWithApplePaySupport:v5 category:v6 muid:v7 nearbyPoiCount:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  applePaySupport = self->_applePaySupport;
  muid = self->_muid;
  category = self->_category;
  nearbyPoiCount = self->_nearbyPoiCount;

  return [v4 initWithApplePaySupport:applePaySupport category:category muid:muid nearbyPoiCount:nearbyPoiCount];
}

@end