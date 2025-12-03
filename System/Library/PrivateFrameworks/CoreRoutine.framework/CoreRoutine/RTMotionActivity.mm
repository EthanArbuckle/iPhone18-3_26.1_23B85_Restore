@interface RTMotionActivity
+ (id)motionActivityConfidenceToString:(unint64_t)string;
+ (id)motionActivityTypeToString:(unint64_t)string;
+ (unint64_t)motionActivityConfidenceFromString:(id)string;
+ (unint64_t)motionActivityTypeFromString:(id)string;
- (BOOL)isEqual:(id)equal;
- (RTMotionActivity)initWithCoder:(id)coder;
- (RTMotionActivity)initWithType:(unint64_t)type confidence:(unint64_t)confidence startDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTMotionActivity

+ (id)motionActivityTypeToString:(unint64_t)string
{
  if (string > 6)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E80B4CA0[string];
  }
}

+ (id)motionActivityConfidenceToString:(unint64_t)string
{
  if (string > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_1E80B4CD8[string];
  }
}

+ (unint64_t)motionActivityTypeFromString:(id)string
{
  v3 = [&unk_1F3DE3C28 objectForKeyedSubscript:string];
  integerValue = [v3 integerValue];

  return integerValue;
}

+ (unint64_t)motionActivityConfidenceFromString:(id)string
{
  v3 = [&unk_1F3DE3C50 objectForKeyedSubscript:string];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (RTMotionActivity)initWithType:(unint64_t)type confidence:(unint64_t)confidence startDate:(id)date
{
  v22 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if (dateCopy)
  {
    v17.receiver = self;
    v17.super_class = RTMotionActivity;
    v9 = [(RTMotionActivity *)&v17 init];
    v10 = v9;
    if (v9)
    {
      v9->_type = type;
      v9->_confidence = confidence;
      v11 = [dateCopy copy];
      startDate = v10->_startDate;
      v10->_startDate = v11;
    }

    self = v10;
    selfCopy = self;
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

    selfCopy = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(RTMotionActivity *)self type];
      v8 = 0;
      if (type == [(RTMotionActivity *)v5 type])
      {
        confidence = [(RTMotionActivity *)self confidence];
        if (confidence == [(RTMotionActivity *)v5 confidence])
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
  stringFromDate = [(NSDate *)self->_startDate stringFromDate];
  v7 = [v3 stringWithFormat:@"type, %@, confidence, %@, startDate, %@", v4, v5, stringFromDate];

  return v7;
}

- (RTMotionActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];

  v10 = [(RTMotionActivity *)self initWithType:unsignedIntegerValue confidence:unsignedIntegerValue2 startDate:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:type];
  [coderCopy encodeObject:v6 forKey:@"type"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_confidence];
  [coderCopy encodeObject:v7 forKey:@"confidence"];

  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  type = self->_type;
  confidence = self->_confidence;
  startDate = self->_startDate;

  return [v4 initWithType:type confidence:confidence startDate:startDate];
}

@end