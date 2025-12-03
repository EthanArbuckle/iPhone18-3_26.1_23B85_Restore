@interface RTAddressSubPremise
+ (id)stringForSubPremiseType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAddressSubPremise:(id)premise;
- (RTAddressSubPremise)initWithCoder:(id)coder;
- (RTAddressSubPremise)initWithSubPremise:(id)premise subPremiseType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTAddressSubPremise

- (RTAddressSubPremise)initWithSubPremise:(id)premise subPremiseType:(int64_t)type
{
  premiseCopy = premise;
  if (!premiseCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: subPremise";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_9;
  }

  if (type >= 5)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: SUB_PREMISE_TYPE_VALID(subPremiseType)";
    goto LABEL_12;
  }

  v14.receiver = self;
  v14.super_class = RTAddressSubPremise;
  v7 = [(RTAddressSubPremise *)&v14 init];
  if (v7)
  {
    v8 = [premiseCopy copy];
    subPremise = v7->_subPremise;
    v7->_subPremise = v8;

    v7->_subPremiseType = type;
  }

  self = v7;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (RTAddressSubPremise)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subPremise"];
  v6 = [coderCopy decodeIntegerForKey:@"subPremiseType"];

  v7 = [(RTAddressSubPremise *)self initWithSubPremise:v5 subPremiseType:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  subPremise = self->_subPremise;
  coderCopy = coder;
  [coderCopy encodeObject:subPremise forKey:@"subPremise"];
  [coderCopy encodeInt64:self->_subPremiseType forKey:@"subPremiseType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  subPremiseType = self->_subPremiseType;
  subPremise = self->_subPremise;

  return [v4 initWithSubPremise:subPremise subPremiseType:subPremiseType];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() stringForSubPremiseType:self->_subPremiseType];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_subPremise];

  return v5;
}

- (BOOL)isEqualToAddressSubPremise:(id)premise
{
  premiseCopy = premise;
  v6 = premiseCopy;
  subPremise = self->_subPremise;
  v8 = subPremise;
  if (subPremise)
  {
LABEL_4:
    subPremise = [v6 subPremise];
    v10 = [(NSString *)v8 isEqual:subPremise];

    if (subPremise)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  subPremise2 = [premiseCopy subPremise];
  if (subPremise2)
  {
    v8 = self->_subPremise;
    goto LABEL_4;
  }

  v10 = 1;
LABEL_7:

LABEL_8:
  subPremiseType = self->_subPremiseType;
  if (subPremiseType == [v6 subPremiseType])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTAddressSubPremise *)self isEqualToAddressSubPremise:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_subPremise hash];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_subPremiseType];
  v5 = [v4 hash];

  return v5 ^ v3;
}

+ (id)stringForSubPremiseType:(int64_t)type
{
  if (type < 5)
  {
    return off_1E80B4E90[type];
  }

  v8 = v3;
  v9 = v4;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: SUB_PREMISE_TYPE_VALID(subPremiseType)", v7, 2u);
  }

  return 0;
}

@end