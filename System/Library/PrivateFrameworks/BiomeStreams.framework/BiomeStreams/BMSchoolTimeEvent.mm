@interface BMSchoolTimeEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSchoolTimeEvent)initWithProto:(id)proto;
- (BMSchoolTimeEvent)initWithProtoData:(id)data;
- (BMSchoolTimeEvent)initWithStarting:(BOOL)starting reason:(unint64_t)reason;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSchoolTimeEvent

- (BMSchoolTimeEvent)initWithStarting:(BOOL)starting reason:(unint64_t)reason
{
  v7.receiver = self;
  v7.super_class = BMSchoolTimeEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_starting = starting;
    result->_reason = reason;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
  v5 = [v3 initWithFormat:@"SchoolTimeEvent event with starting: %@", v4];

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMSchoolTimeEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSchoolTimeEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      starting = [v5 starting];
      reason = [v5 reason];
      v8 = reason;
      if (reason >= 3)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMSchoolTimeEvent initWithProto:v8];
        }

        v9 = 0;
      }

      else
      {
        v9 = reason;
      }

      self = [(BMSchoolTimeEvent *)self initWithStarting:starting reason:v9];
      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(BMSchoolTimeEvent *)self initWithProto:v5];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMSchoolTimeEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSchoolTimeEvent alloc] initWithData:dataCopy];

    self = [(BMSchoolTimeEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setStarting:{-[BMSchoolTimeEvent isStarting](self, "isStarting")}];
  reason = [(BMSchoolTimeEvent *)self reason];
  if (reason >= 3)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMSchoolTimeEvent *)reason proto];
    }

    v5 = 0;
  }

  else
  {
    [v3 setReason:reason];
    v5 = v3;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_reason];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    starting = self->_starting;
    if (starting == [v5 isStarting])
    {
      reason = self->_reason;
      v8 = reason == [v5 reason];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end