@interface BMMindfulnessSessionEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMMindfulnessSessionEvent)initWithProto:(id)proto;
- (BMMindfulnessSessionEvent)initWithProtoData:(id)data;
- (BMMindfulnessSessionEvent)initWithSessionType:(unint64_t)type stateType:(unint64_t)stateType;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMMindfulnessSessionEvent

- (BMMindfulnessSessionEvent)initWithSessionType:(unint64_t)type stateType:(unint64_t)stateType
{
  v7.receiver = self;
  v7.super_class = BMMindfulnessSessionEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_sessionType = type;
    result->_stateType = stateType;
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    selfCopy = BMMindfulnessSessionEvent_v1;
  }

  else
  {
    selfCopy = self;
  }

  dataCopy = data;
  v6 = [[selfCopy alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMMindfulnessSessionEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMMindfulnessSessionEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      sessionType = [v5 sessionType];
      v7 = sessionType;
      if (sessionType >= 3)
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
        v8 = sessionType;
      }

      self = [(BMMindfulnessSessionEvent *)self initWithSessionType:v8 stateType:typeWithBMPBMindfulnessSessionStateType([v5 stateType])];
      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMMindfulnessSessionEvent initWithProto:];
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

- (BMMindfulnessSessionEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBMindfulnessSessionEvent alloc] initWithData:dataCopy];

    self = [(BMMindfulnessSessionEvent *)self initWithProto:v5];
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
  sessionType = [(BMMindfulnessSessionEvent *)self sessionType];
  v5 = sessionType;
  if (!sessionType || sessionType == 2 || sessionType == 1)
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

  stateType = [(BMMindfulnessSessionEvent *)self stateType];
  if (stateType >= 5)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(BMMindfulnessSessionEvent *)stateType proto];
    }
  }

  else if ((v6 & 1) == 0)
  {
    [v3 setSessionType:v5];
    [v3 setStateType:stateType];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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