@interface BMMindfulnessSessionEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMMindfulnessSessionEvent)initWithProto:(id)a3;
- (BMMindfulnessSessionEvent)initWithProtoData:(id)a3;
- (BMMindfulnessSessionEvent)initWithSessionType:(unint64_t)a3 stateType:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMMindfulnessSessionEvent

- (BMMindfulnessSessionEvent)initWithSessionType:(unint64_t)a3 stateType:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = BMMindfulnessSessionEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_sessionType = a3;
    result->_stateType = a4;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sessionType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_stateType];
  v6 = [v3 initWithFormat:@"MindfulnessSessionEvent event with sessionType: %@, stateType: %@", v4, v5];

  return v6;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = BMMindfulnessSessionEvent_v1;
  }

  else
  {
    v4 = a1;
  }

  v5 = a3;
  v6 = [[v4 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMMindfulnessSessionEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMMindfulnessSessionEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 sessionType];
      v7 = v6;
      if (v6 >= 3)
      {
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BMMindfulnessSessionEvent initWithProto:v7];
        }

        v8 = 3;
      }

      else
      {
        v8 = v6;
      }

      self = [(BMMindfulnessSessionEvent *)self initWithSessionType:v8 stateType:typeWithBMPBMindfulnessSessionStateType([v5 stateType])];
      v9 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMMindfulnessSessionEvent initWithProto:];
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

- (BMMindfulnessSessionEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBMindfulnessSessionEvent alloc] initWithData:v4];

    self = [(BMMindfulnessSessionEvent *)self initWithProto:v5];
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
  v4 = [(BMMindfulnessSessionEvent *)self sessionType];
  v5 = v4;
  if (!v4 || v4 == 2 || v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(BMMindfulnessSessionEvent *)v5 proto];
    }

    v5 = 0xFFFFFFFFLL;
    v6 = 1;
  }

  v8 = [(BMMindfulnessSessionEvent *)self stateType];
  if (v8 >= 5)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(BMMindfulnessSessionEvent *)v8 proto];
    }
  }

  else if ((v6 & 1) == 0)
  {
    [v3 setSessionType:v5];
    [v3 setStateType:v8];
    v9 = v3;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sessionType];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_stateType];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    sessionType = self->_sessionType;
    if (sessionType == [v5 sessionType])
    {
      stateType = self->_stateType;
      v8 = stateType == [v5 stateType];
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