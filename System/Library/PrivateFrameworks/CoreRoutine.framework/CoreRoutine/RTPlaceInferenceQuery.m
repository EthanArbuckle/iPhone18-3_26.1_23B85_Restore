@interface RTPlaceInferenceQuery
- (BOOL)isEqual:(id)a3;
- (RTPlaceInferenceQuery)initWithCoder:(id)a3;
- (RTPlaceInferenceQuery)initWithIdentifier:(id)a3 date:(id)a4 errorCode:(int64_t)a5 fidelityPolicyMask:(unint64_t)a6 placeInference:(id)a7 sourceIdentifier:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPlaceInferenceQuery

- (RTPlaceInferenceQuery)initWithIdentifier:(id)a3 date:(id)a4 errorCode:(int64_t)a5 fidelityPolicyMask:(unint64_t)a6 placeInference:(id)a7 sourceIdentifier:(id)a8
{
  v15 = a3;
  v16 = a4;
  v24 = a7;
  v17 = a8;
  if (!v15)
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

  if (!v16)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: date";
    goto LABEL_12;
  }

  v25.receiver = self;
  v25.super_class = RTPlaceInferenceQuery;
  v18 = [(RTPlaceInferenceQuery *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_date, a4);
    v19->_errorCode = a5;
    v19->_fidelityPolicyMask = a6;
    objc_storeStrong(&v19->_placeInference, a7);
    objc_storeStrong(&v19->_sourceIdentifier, a8);
  }

  self = v19;
  v20 = self;
LABEL_10:

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RTPlaceInferenceQuery *)self identifier];
      v6 = [(RTPlaceInferenceQuery *)v4 identifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPlaceInferenceQuery alloc];
  v5 = [(RTPlaceInferenceQuery *)self identifier];
  v6 = [(RTPlaceInferenceQuery *)self date];
  v7 = [(RTPlaceInferenceQuery *)self errorCode];
  v8 = [(RTPlaceInferenceQuery *)self fidelityPolicyMask];
  v9 = [(RTPlaceInferenceQuery *)self placeInference];
  v10 = [(RTPlaceInferenceQuery *)self sourceIdentifier];
  v11 = [(RTPlaceInferenceQuery *)v4 initWithIdentifier:v5 date:v6 errorCode:v7 fidelityPolicyMask:v8 placeInference:v9 sourceIdentifier:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTPlaceInferenceQuery *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(RTPlaceInferenceQuery *)self date];
  [v4 encodeObject:v6 forKey:@"date"];

  [v4 encodeInteger:-[RTPlaceInferenceQuery errorCode](self forKey:{"errorCode"), @"errorCode"}];
  [v4 encodeInteger:-[RTPlaceInferenceQuery fidelityPolicyMask](self forKey:{"fidelityPolicyMask"), @"fidelityPolicyMask"}];
  v7 = [(RTPlaceInferenceQuery *)self placeInference];
  [v4 encodeObject:v7 forKey:@"placeInference"];

  v8 = [(RTPlaceInferenceQuery *)self sourceIdentifier];
  [v4 encodeObject:v8 forKey:@"sourceIdentifier"];
}

- (RTPlaceInferenceQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v7 = [v4 decodeIntegerForKey:@"errorCode"];
  v8 = [v4 decodeIntegerForKey:@"fidelityPolicyMask"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeInference"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];

  v11 = [(RTPlaceInferenceQuery *)self initWithIdentifier:v5 date:v6 errorCode:v7 fidelityPolicyMask:v8 placeInference:v9 sourceIdentifier:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RTPlaceInferenceQuery *)self identifier];
  v5 = [(RTPlaceInferenceQuery *)self date];
  v6 = [(RTPlaceInferenceQuery *)self errorCode];
  v7 = [(RTPlaceInferenceQuery *)self fidelityPolicyMask];
  v8 = [(RTPlaceInferenceQuery *)self placeInference];
  v9 = [(RTPlaceInferenceQuery *)self sourceIdentifier];
  v10 = [v3 stringWithFormat:@"identifier, %@, date, %@, errorCode, %lu, fidelityPolicyMask, %lu, placeInference, %@, source identifier, %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end