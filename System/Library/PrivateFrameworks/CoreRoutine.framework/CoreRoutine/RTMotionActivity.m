@interface RTMotionActivity
+ (id)motionActivityConfidenceToString:(unint64_t)a3;
+ (id)motionActivityTypeToString:(unint64_t)a3;
+ (unint64_t)motionActivityConfidenceFromString:(id)a3;
+ (unint64_t)motionActivityTypeFromString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (RTMotionActivity)initWithCoder:(id)a3;
- (RTMotionActivity)initWithType:(unint64_t)a3 confidence:(unint64_t)a4 startDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTMotionActivity

+ (id)motionActivityTypeToString:(unint64_t)a3
{
  if (a3 > 6)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E80B4CA0[a3];
  }
}

+ (id)motionActivityConfidenceToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E80B4CD8[a3];
  }
}

+ (unint64_t)motionActivityTypeFromString:(id)a3
{
  v3 = [&unk_1F3DE3C28 objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

+ (unint64_t)motionActivityConfidenceFromString:(id)a3
{
  v3 = [&unk_1F3DE3C50 objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (RTMotionActivity)initWithType:(unint64_t)a3 confidence:(unint64_t)a4 startDate:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (v8)
  {
    v17.receiver = self;
    v17.super_class = RTMotionActivity;
    v9 = [(RTMotionActivity *)&v17 init];
    v10 = v9;
    if (v9)
    {
      v9->_type = a3;
      v9->_confidence = a4;
      v11 = [v8 copy];
      startDate = v10->_startDate;
      v10->_startDate = v11;
    }

    self = v10;
    v13 = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTMotionActivity initWithType:confidence:startDate:]";
      v20 = 1024;
      v21 = 97;
      _os_log_error_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate (in %s:%d)", buf, 0x12u);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
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
      v6 = [(RTMotionActivity *)self type];
      v8 = 0;
      if (v6 == [(RTMotionActivity *)v5 type])
      {
        v7 = [(RTMotionActivity *)self confidence];
        if (v7 == [(RTMotionActivity *)v5 confidence])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_confidence];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() motionActivityTypeToString:self->_type];
  v5 = [objc_opt_class() motionActivityConfidenceToString:self->_confidence];
  v6 = [(NSDate *)self->_startDate stringFromDate];
  v7 = [v3 stringWithFormat:@"type, %@, confidence, %@, startDate, %@", v4, v5, v6];

  return v7;
}

- (RTMotionActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];

  v10 = [(RTMotionActivity *)self initWithType:v6 confidence:v8 startDate:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  v8 = a3;
  v6 = [v4 numberWithUnsignedInteger:type];
  [v8 encodeObject:v6 forKey:@"type"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_confidence];
  [v8 encodeObject:v7 forKey:@"confidence"];

  [v8 encodeObject:self->_startDate forKey:@"startDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  type = self->_type;
  confidence = self->_confidence;
  startDate = self->_startDate;

  return [v4 initWithType:type confidence:confidence startDate:startDate];
}

@end