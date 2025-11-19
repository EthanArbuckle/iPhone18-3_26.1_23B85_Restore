@interface RTFingerprint
- (BOOL)isEqual:(id)a3;
- (RTFingerprint)initWithCoder:(id)a3;
- (RTFingerprint)initWithIdentifier:(id)a3 settledState:(unint64_t)a4 start:(id)a5 accessPoints:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTFingerprint

- (RTFingerprint)initWithIdentifier:(id)a3 settledState:(unint64_t)a4 start:(id)a5 accessPoints:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v10)
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

  if (a4 >= 3)
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

  if (!v11)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Invalid parameter not satisfying: start";
      goto LABEL_13;
    }

LABEL_14:

    v20 = 0;
    goto LABEL_15;
  }

  v24.receiver = self;
  v24.super_class = RTFingerprint;
  v13 = [(RTFingerprint *)&v24 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_settledState = a4;
    v16 = [v11 copy];
    start = v13->_start;
    v13->_start = v16;

    v18 = [v12 copy];
    accessPoints = v13->_accessPoints;
    v13->_accessPoints = v18;
  }

  self = v13;
  v20 = self;
LABEL_15:

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [RTScenarioTrigger scenarioTriggerSettledStateToString:self->_settledState];
  v5 = [(NSDate *)self->_start stringFromDate];
  v6 = [v3 stringWithFormat:@"settled state, %@, start, %@, number of access points, %lu", v4, v5, -[NSArray count](self->_accessPoints, "count")];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  identifier = self->_identifier;
  settledState = self->_settledState;
  start = self->_start;
  accessPoints = self->_accessPoints;

  return [v4 initWithIdentifier:identifier settledState:settledState start:start accessPoints:accessPoints];
}

- (RTFingerprint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"settledState"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"start"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"accessPoints"];

  v13 = [(RTFingerprint *)self initWithIdentifier:v5 settledState:v7 start:v8 accessPoints:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_settledState];
  [v6 encodeObject:v5 forKey:@"settledState"];

  [v6 encodeObject:self->_start forKey:@"start"];
  [v6 encodeObject:self->_accessPoints forKey:@"accessPoints"];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v32 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(RTFingerprint *)self accessPoints];
      v8 = [v7 count];
      v9 = [(RTFingerprint *)v6 accessPoints];
      v10 = [v9 count];

      if (v8 != v10)
      {
LABEL_16:
        v32 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v11 = [(RTFingerprint *)self accessPoints];
      if (v11)
      {
        v12 = v11;
        v13 = [(RTFingerprint *)v6 accessPoints];

        if (v13)
        {
          v14 = [(RTFingerprint *)self accessPoints];
          v15 = [v14 count];

          if (v15)
          {
            v16 = 0;
            do
            {
              v17 = [(RTFingerprint *)self accessPoints];
              v18 = [v17 objectAtIndexedSubscript:v16];

              v19 = [(RTFingerprint *)v6 accessPoints];
              v20 = [v19 objectAtIndexedSubscript:v16];

              LOBYTE(v19) = [v18 isEqual:v20];
              if ((v19 & 1) == 0)
              {
                goto LABEL_16;
              }

              ++v16;
              v21 = [(RTFingerprint *)self accessPoints];
              v22 = [v21 count];
            }

            while (v16 < v22);
          }
        }
      }

      v23 = [(RTFingerprint *)self identifier];
      v24 = [(RTFingerprint *)v6 identifier];
      v25 = [v23 isEqual:v24];

      v26 = [(RTFingerprint *)self settledState];
      v27 = [(RTFingerprint *)v6 settledState];
      v28 = [(RTFingerprint *)self start];
      if (v28 || ([(RTFingerprint *)v6 start], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v29 = [(RTFingerprint *)self start];
        v30 = [(RTFingerprint *)v6 start];
        v31 = [v29 isEqualToDate:v30];

        if (v28)
        {
LABEL_19:

          if (v26 == v27)
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