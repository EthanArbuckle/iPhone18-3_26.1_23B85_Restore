@interface BMScreenRecordingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMScreenRecordingEvent)initWithIsStart:(BOOL)a3;
- (BMScreenRecordingEvent)initWithProto:(id)a3;
- (BMScreenRecordingEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMScreenRecordingEvent

- (BMScreenRecordingEvent)initWithIsStart:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BMScreenRecordingEvent;
  result = [(BMEventBase *)&v5 init];
  if (result)
  {
    result->_isStart = a3;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_isStart)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [v3 initWithFormat:@"Screen Recording event is start: %@", v4];

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonDict
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"isStart";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMScreenRecordingEvent *)self jsonDict];
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
  v2 = [(BMScreenRecordingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMScreenRecordingEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(BMScreenRecordingEvent *)self initWithProto:v6];
    }

    goto LABEL_7;
  }

  self = -[BMScreenRecordingEvent initWithIsStart:](self, "initWithIsStart:", [v4 isStart]);
  v5 = self;
LABEL_8:

  return v5;
}

- (BMScreenRecordingEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBScreenRecordingEvent alloc] initWithData:v4];

    self = [(BMScreenRecordingEvent *)self initWithProto:v5];
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

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isStart = self->_isStart;
    v6 = isStart == [v4 isStart];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end