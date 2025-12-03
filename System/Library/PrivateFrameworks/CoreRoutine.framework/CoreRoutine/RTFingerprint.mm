@interface RTFingerprint
- (BOOL)isEqual:(id)equal;
- (RTFingerprint)initWithCoder:(id)coder;
- (RTFingerprint)initWithIdentifier:(id)identifier settledState:(unint64_t)state start:(id)start accessPoints:(id)points;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTFingerprint

- (RTFingerprint)initWithIdentifier:(id)identifier settledState:(unint64_t)state start:(id)start accessPoints:(id)points
{
  identifierCopy = identifier;
  startCopy = start;
  pointsCopy = points;
  if (!identifierCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: identifier";
LABEL_13:
    _os_log_error_impl(&dword_1BF1C4000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_14;
  }

  if (state >= 3)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: RTScenarioTriggerSettledStateIsValid(settledState)";
    goto LABEL_13;
  }

  if (!startCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: start";
      goto LABEL_13;
    }

LABEL_14:

    selfCopy = 0;
    goto LABEL_15;
  }

  v24.receiver = self;
  v24.super_class = RTFingerprint;
  v13 = [(RTFingerprint *)&v24 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_settledState = state;
    v16 = [startCopy copy];
    start = v13->_start;
    v13->_start = v16;

    v18 = [pointsCopy copy];
    accessPoints = v13->_accessPoints;
    v13->_accessPoints = v18;
  }

  self = v13;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [RTScenarioTrigger scenarioTriggerSettledStateToString:self->_settledState];
  stringFromDate = [(NSDate *)self->_start stringFromDate];
  v6 = [v3 stringWithFormat:@"settled state, %@, start, %@, number of access points, %lu", v4, stringFromDate, -[NSArray count](self->_accessPoints, "count")];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  settledState = self->_settledState;
  start = self->_start;
  accessPoints = self->_accessPoints;

  return [v4 initWithIdentifier:identifier settledState:settledState start:start accessPoints:accessPoints];
}

- (RTFingerprint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"settledState"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"start"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"accessPoints"];

  v13 = [(RTFingerprint *)self initWithIdentifier:v5 settledState:unsignedIntegerValue start:v8 accessPoints:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_settledState];
  [coderCopy encodeObject:v5 forKey:@"settledState"];

  [coderCopy encodeObject:self->_start forKey:@"start"];
  [coderCopy encodeObject:self->_accessPoints forKey:@"accessPoints"];
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_settledState];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSDate *)self->_start hash];
  v7 = v6 ^ [(NSArray *)self->_accessPoints hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v32 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      accessPoints = [(RTFingerprint *)self accessPoints];
      v8 = [accessPoints count];
      accessPoints2 = [(RTFingerprint *)v6 accessPoints];
      v10 = [accessPoints2 count];

      if (v8 != v10)
      {
LABEL_16:
        v32 = 0;
LABEL_23:

        goto LABEL_24;
      }

      accessPoints3 = [(RTFingerprint *)self accessPoints];
      if (accessPoints3)
      {
        v12 = accessPoints3;
        accessPoints4 = [(RTFingerprint *)v6 accessPoints];

        if (accessPoints4)
        {
          accessPoints5 = [(RTFingerprint *)self accessPoints];
          v15 = [accessPoints5 count];

          if (v15)
          {
            v16 = 0;
            do
            {
              accessPoints6 = [(RTFingerprint *)self accessPoints];
              v18 = [accessPoints6 objectAtIndexedSubscript:v16];

              accessPoints7 = [(RTFingerprint *)v6 accessPoints];
              v20 = [accessPoints7 objectAtIndexedSubscript:v16];

              LOBYTE(accessPoints7) = [v18 isEqual:v20];
              if ((accessPoints7 & 1) == 0)
              {
                goto LABEL_16;
              }

              ++v16;
              accessPoints8 = [(RTFingerprint *)self accessPoints];
              v22 = [accessPoints8 count];
            }

            while (v16 < v22);
          }
        }
      }

      identifier = [(RTFingerprint *)self identifier];
      identifier2 = [(RTFingerprint *)v6 identifier];
      v25 = [identifier isEqual:identifier2];

      settledState = [(RTFingerprint *)self settledState];
      settledState2 = [(RTFingerprint *)v6 settledState];
      start = [(RTFingerprint *)self start];
      if (start || ([(RTFingerprint *)v6 start], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        start2 = [(RTFingerprint *)self start];
        start3 = [(RTFingerprint *)v6 start];
        v31 = [start2 isEqualToDate:start3];

        if (start)
        {
LABEL_19:

          if (settledState == settledState2)
          {
            v33 = v25;
          }

          else
          {
            v33 = 0;
          }

          v32 = v33 & v31;
          goto LABEL_23;
        }
      }

      else
      {
        v31 = 1;
      }

      goto LABEL_19;
    }

    v32 = 0;
  }

LABEL_24:

  return v32;
}

@end