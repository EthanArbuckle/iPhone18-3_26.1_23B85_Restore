@interface RTPointOfInterestAttributes
- (RTPointOfInterestAttributes)initWithApplePaySupport:(BOOL)support category:(id)category muid:(unint64_t)muid nearbyPoiCount:(unint64_t)count;
- (RTPointOfInterestAttributes)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPointOfInterestAttributes

- (RTPointOfInterestAttributes)initWithApplePaySupport:(BOOL)support category:(id)category muid:(unint64_t)muid nearbyPoiCount:(unint64_t)count
{
  categoryCopy = category;
  if (muid)
  {
    v17.receiver = self;
    v17.super_class = RTPointOfInterestAttributes;
    v12 = [(RTPointOfInterestAttributes *)&v17 init];
    v13 = v12;
    if (v12)
    {
      v12->_applePaySupport = support;
      objc_storeStrong(&v12->_category, category);
      v13->_muid = muid;
      v13->_nearbyPoiCount = count;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: muid > 0", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
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

- (void)encodeWithCoder:(id)coder
{
  applePaySupport = self->_applePaySupport;
  coderCopy = coder;
  [coderCopy encodeBool:applePaySupport forKey:@"applePaySupport"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
  [coderCopy encodeInteger:self->_muid forKey:@"muid"];
  [coderCopy encodeInteger:self->_nearbyPoiCount forKey:@"nearbyPoiCount"];
}

- (RTPointOfInterestAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"applePaySupport"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
  v7 = [coderCopy decodeIntegerForKey:@"muid"];
  v8 = [coderCopy decodeIntegerForKey:@"nearbyPoiCount"];

  v9 = [(RTPointOfInterestAttributes *)self initWithApplePaySupport:v5 category:v6 muid:v7 nearbyPoiCount:v8];
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  applePaySupport = self->_applePaySupport;
  muid = self->_muid;
  category = self->_category;
  nearbyPoiCount = self->_nearbyPoiCount;

  return [v4 initWithApplePaySupport:applePaySupport category:category muid:muid nearbyPoiCount:nearbyPoiCount];
}

@end