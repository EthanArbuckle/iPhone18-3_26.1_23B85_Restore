@interface BMDoNotDisturbWhileDrivingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMDoNotDisturbWhileDrivingEvent)initWithProto:(id)a3;
- (BMDoNotDisturbWhileDrivingEvent)initWithProtoData:(id)a3;
- (BMDoNotDisturbWhileDrivingEvent)initWithReason:(unint64_t)a3 isStart:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMDoNotDisturbWhileDrivingEvent

- (BMDoNotDisturbWhileDrivingEvent)initWithReason:(unint64_t)a3 isStart:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = BMDoNotDisturbWhileDrivingEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_reason = a3;
    result->_isStart = a4;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

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
  v3 = [(BMDoNotDisturbWhileDrivingEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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
  v2 = [(BMDoNotDisturbWhileDrivingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMDoNotDisturbWhileDrivingEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 reason];
      v7 = v6;
      if (v6 >= 7)
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
        v8 = v6;
      }

      self = [(BMDoNotDisturbWhileDrivingEvent *)self initWithReason:v8 isStart:[v5 isStart]];
      v9 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(BMDoNotDisturbWhileDrivingEvent *)self initWithProto:v5];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BMDoNotDisturbWhileDrivingEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBDoNotDisturbWhileDrivingEvent alloc] initWithData:v4];

    self = [(BMDoNotDisturbWhileDrivingEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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