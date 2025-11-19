@interface BMScreenSharingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMScreenSharingEvent)initWithIsStart:(BOOL)a3 type:(unint64_t)a4;
- (BMScreenSharingEvent)initWithProto:(id)a3;
- (BMScreenSharingEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMScreenSharingEvent

- (BMScreenSharingEvent)initWithIsStart:(BOOL)a3 type:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = BMScreenSharingEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_isStart = a3;
    result->_type = a4;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
  {
    v4 = BMScreenSharingEvent_v2;
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
  v2 = [(BMScreenSharingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMScreenSharingEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 isStart];
      v7 = [v5 type];
      v8 = v7;
      if (v7)
      {
        if (v7 == 1)
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

      self = [(BMScreenSharingEvent *)self initWithIsStart:v6 type:v8];
      v9 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMScreenSharingEvent initWithProto:];
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

- (BMScreenSharingEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBScreenSharingEvent alloc] initWithData:v4];

    self = [(BMScreenSharingEvent *)self initWithProto:v5];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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