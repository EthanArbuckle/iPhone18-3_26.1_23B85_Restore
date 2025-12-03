@interface BMDoNotDisturbWhileDrivingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMDoNotDisturbWhileDrivingEvent)initWithProto:(id)proto;
- (BMDoNotDisturbWhileDrivingEvent)initWithProtoData:(id)data;
- (BMDoNotDisturbWhileDrivingEvent)initWithReason:(unint64_t)reason isStart:(BOOL)start;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMDoNotDisturbWhileDrivingEvent

- (BMDoNotDisturbWhileDrivingEvent)initWithReason:(unint64_t)reason isStart:(BOOL)start
{
  v7.receiver = self;
  v7.super_class = BMDoNotDisturbWhileDrivingEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_reason = reason;
    result->_isStart = start;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  reason = self->_reason;
  if (self->_isStart)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [v3 initWithFormat:@"DNDwD event with reason: %ld is start: %@", self->_reason, v5];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonDict
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"reason";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_reason];
  v8[1] = @"isStart";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMDoNotDisturbWhileDrivingEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMDeviceMetadataEvent *)v6 json];
    }
  }

  return v4;
}

- (id)encodeAsProto
{
  proto = [(BMDoNotDisturbWhileDrivingEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMDoNotDisturbWhileDrivingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      reason = [v5 reason];
      v7 = reason;
      if (reason >= 7)
      {
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BMDoNotDisturbWhileDrivingEvent initWithProto:v7];
        }

        v8 = 0;
      }

      else
      {
        v8 = reason;
      }

      self = [(BMDoNotDisturbWhileDrivingEvent *)self initWithReason:v8 isStart:[v5 isStart]];
      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(BMDoNotDisturbWhileDrivingEvent *)self initWithProto:v5];
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

- (BMDoNotDisturbWhileDrivingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBDoNotDisturbWhileDrivingEvent alloc] initWithData:dataCopy];

    self = [(BMDoNotDisturbWhileDrivingEvent *)self initWithProto:v5];
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
  [v3 setIsStart:self->_isStart];
  reason = self->_reason;
  if (reason >= 7)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMDoNotDisturbWhileDrivingEvent *)reason proto];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    reason = self->_reason;
    if (reason == [v5 reason])
    {
      isStart = self->_isStart;
      v8 = isStart == [v5 isStart];
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