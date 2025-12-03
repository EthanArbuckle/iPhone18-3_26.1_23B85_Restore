@interface BMScreenSharingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMScreenSharingEvent)initWithIsStart:(BOOL)start type:(unint64_t)type;
- (BMScreenSharingEvent)initWithProto:(id)proto;
- (BMScreenSharingEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMScreenSharingEvent

- (BMScreenSharingEvent)initWithIsStart:(BOOL)start type:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = BMScreenSharingEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_isStart = start;
    result->_type = type;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_type];
  v6 = [v3 initWithFormat:@"Screen Sharing event isStart: %@ type: %@", v4, v5];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    selfCopy = BMScreenSharingEvent_v2;
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
  proto = [(BMScreenSharingEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMScreenSharingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      isStart = [v5 isStart];
      type = [v5 type];
      v8 = type;
      if (type)
      {
        if (type == 1)
        {
          v8 = 1;
        }

        else
        {
          v10 = __biome_log_for_category();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [BMScreenSharingEvent initWithProto:v8];
          }

          v8 = 0;
        }
      }

      self = [(BMScreenSharingEvent *)self initWithIsStart:isStart type:v8];
      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMScreenSharingEvent initWithProto:];
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

- (BMScreenSharingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBScreenSharingEvent alloc] initWithData:dataCopy];

    self = [(BMScreenSharingEvent *)self initWithProto:v5];
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
  type = self->_type;
  if (!type)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (type == 1)
  {
    v5 = 1;
LABEL_5:
    [v3 setType:v5];
    v6 = v3;
    goto LABEL_9;
  }

  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(BMScreenSharingEvent *)type proto];
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isStart = self->_isStart;
    if (isStart == [v5 isStart])
    {
      type = self->_type;
      v8 = type == [v5 type];
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