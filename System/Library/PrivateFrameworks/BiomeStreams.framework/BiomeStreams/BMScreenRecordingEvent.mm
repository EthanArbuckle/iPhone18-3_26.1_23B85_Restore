@interface BMScreenRecordingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMScreenRecordingEvent)initWithIsStart:(BOOL)start;
- (BMScreenRecordingEvent)initWithProto:(id)proto;
- (BMScreenRecordingEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMScreenRecordingEvent

- (BMScreenRecordingEvent)initWithIsStart:(BOOL)start
{
  v5.receiver = self;
  v5.super_class = BMScreenRecordingEvent;
  result = [(BMEventBase *)&v5 init];
  if (result)
  {
    result->_isStart = start;
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

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
  jsonDict = [(BMScreenRecordingEvent *)self jsonDict];
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
  proto = [(BMScreenRecordingEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMScreenRecordingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
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

  self = -[BMScreenRecordingEvent initWithIsStart:](self, "initWithIsStart:", [protoCopy isStart]);
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMScreenRecordingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBScreenRecordingEvent alloc] initWithData:dataCopy];

    self = [(BMScreenRecordingEvent *)self initWithProto:v5];
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

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isStart = self->_isStart;
    v6 = isStart == [equalCopy isStart];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end