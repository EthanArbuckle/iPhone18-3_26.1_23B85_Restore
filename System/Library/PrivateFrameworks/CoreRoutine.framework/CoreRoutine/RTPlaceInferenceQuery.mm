@interface RTPlaceInferenceQuery
- (BOOL)isEqual:(id)equal;
- (RTPlaceInferenceQuery)initWithCoder:(id)coder;
- (RTPlaceInferenceQuery)initWithIdentifier:(id)identifier date:(id)date errorCode:(int64_t)code fidelityPolicyMask:(unint64_t)mask placeInference:(id)inference sourceIdentifier:(id)sourceIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPlaceInferenceQuery

- (RTPlaceInferenceQuery)initWithIdentifier:(id)identifier date:(id)date errorCode:(int64_t)code fidelityPolicyMask:(unint64_t)mask placeInference:(id)inference sourceIdentifier:(id)sourceIdentifier
{
  identifierCopy = identifier;
  dateCopy = date;
  inferenceCopy = inference;
  sourceIdentifierCopy = sourceIdentifier;
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

  if (!dateCopy)
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
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_date, date);
    v19->_errorCode = code;
    v19->_fidelityPolicyMask = mask;
    objc_storeStrong(&v19->_placeInference, inference);
    objc_storeStrong(&v19->_sourceIdentifier, sourceIdentifier);
  }

  self = v19;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(RTPlaceInferenceQuery *)self identifier];
      identifier2 = [(RTPlaceInferenceQuery *)equalCopy identifier];
      v7 = [identifier isEqual:identifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPlaceInferenceQuery alloc];
  identifier = [(RTPlaceInferenceQuery *)self identifier];
  date = [(RTPlaceInferenceQuery *)self date];
  errorCode = [(RTPlaceInferenceQuery *)self errorCode];
  fidelityPolicyMask = [(RTPlaceInferenceQuery *)self fidelityPolicyMask];
  placeInference = [(RTPlaceInferenceQuery *)self placeInference];
  sourceIdentifier = [(RTPlaceInferenceQuery *)self sourceIdentifier];
  v11 = [(RTPlaceInferenceQuery *)v4 initWithIdentifier:identifier date:date errorCode:errorCode fidelityPolicyMask:fidelityPolicyMask placeInference:placeInference sourceIdentifier:sourceIdentifier];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(RTPlaceInferenceQuery *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  date = [(RTPlaceInferenceQuery *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  [coderCopy encodeInteger:-[RTPlaceInferenceQuery errorCode](self forKey:{"errorCode"), @"errorCode"}];
  [coderCopy encodeInteger:-[RTPlaceInferenceQuery fidelityPolicyMask](self forKey:{"fidelityPolicyMask"), @"fidelityPolicyMask"}];
  placeInference = [(RTPlaceInferenceQuery *)self placeInference];
  [coderCopy encodeObject:placeInference forKey:@"placeInference"];

  sourceIdentifier = [(RTPlaceInferenceQuery *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"sourceIdentifier"];
}

- (RTPlaceInferenceQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v7 = [coderCopy decodeIntegerForKey:@"errorCode"];
  v8 = [coderCopy decodeIntegerForKey:@"fidelityPolicyMask"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeInference"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];

  v11 = [(RTPlaceInferenceQuery *)self initWithIdentifier:v5 date:v6 errorCode:v7 fidelityPolicyMask:v8 placeInference:v9 sourceIdentifier:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(RTPlaceInferenceQuery *)self identifier];
  date = [(RTPlaceInferenceQuery *)self date];
  errorCode = [(RTPlaceInferenceQuery *)self errorCode];
  fidelityPolicyMask = [(RTPlaceInferenceQuery *)self fidelityPolicyMask];
  placeInference = [(RTPlaceInferenceQuery *)self placeInference];
  sourceIdentifier = [(RTPlaceInferenceQuery *)self sourceIdentifier];
  v10 = [v3 stringWithFormat:@"identifier, %@, date, %@, errorCode, %lu, fidelityPolicyMask, %lu, placeInference, %@, source identifier, %@", identifier, date, errorCode, fidelityPolicyMask, placeInference, sourceIdentifier];

  return v10;
}

@end