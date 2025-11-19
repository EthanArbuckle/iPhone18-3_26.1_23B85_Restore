@interface RTAddressSubPremise
+ (id)stringForSubPremiseType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAddressSubPremise:(id)a3;
- (RTAddressSubPremise)initWithCoder:(id)a3;
- (RTAddressSubPremise)initWithSubPremise:(id)a3 subPremiseType:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTAddressSubPremise

- (RTAddressSubPremise)initWithSubPremise:(id)a3 subPremiseType:(int64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v10 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v12 = "Invalid parameter not satisfying: subPremise";
LABEL_12:
    _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_9;
  }

  if (a4 >= 5)
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
    v8 = [v6 copy];
    subPremise = v7->_subPremise;
    v7->_subPremise = v8;

    v7->_subPremiseType = a4;
  }

  self = v7;
  v10 = self;
LABEL_10:

  return v10;
}

- (RTAddressSubPremise)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subPremise"];
  v6 = [v4 decodeIntegerForKey:@"subPremiseType"];

  v7 = [(RTAddressSubPremise *)self initWithSubPremise:v5 subPremiseType:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  subPremise = self->_subPremise;
  v5 = a3;
  [v5 encodeObject:subPremise forKey:@"subPremise"];
  [v5 encodeInt64:self->_subPremiseType forKey:@"subPremiseType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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

- (BOOL)isEqualToAddressSubPremise:(id)a3
{
  v5 = a3;
  v6 = v5;
  subPremise = self->_subPremise;
  v8 = subPremise;
  if (subPremise)
  {
LABEL_4:
    v9 = [v6 subPremise];
    v10 = [(NSString *)v8 isEqual:v9];

    if (subPremise)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [v5 subPremise];
  if (v3)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTAddressSubPremise *)self isEqualToAddressSubPremise:v5];
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

+ (id)stringForSubPremiseType:(int64_t)a3
{
  if (a3 < 5)
  {
    return off_1E80B4E90[a3];
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