@interface BMSoundDetectionEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSoundDetectionEvent)initWithAbsoluteTimestamp:(double)timestamp type:(id)type customName:(id)name;
- (BMSoundDetectionEvent)initWithProto:(id)proto;
- (BMSoundDetectionEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSoundDetectionEvent

- (BMSoundDetectionEvent)initWithAbsoluteTimestamp:(double)timestamp type:(id)type customName:(id)name
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = BMSoundDetectionEvent;
  v8 = [(BMEventBase *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_absoluteTimestamp = timestamp;
    v10 = [typeCopy copy];
    type = v9->_type;
    v9->_type = v10;
  }

  return v9;
}

- (BMSoundDetectionEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSoundDetectionEvent alloc] initWithData:dataCopy];

    self = [(BMSoundDetectionEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(BMSoundDetectionEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSoundDetectionEvent)initWithProto:(id)proto
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
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(BMSoundDetectionEvent *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  [v5 absoluteTimestamp];
  v7 = v6;
  soundDetectionType = [v5 soundDetectionType];

  self = [(BMSoundDetectionEvent *)self initWithAbsoluteTimestamp:soundDetectionType type:0 customName:v7];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_alloc_init(BMPBSoundDetectionEvent);
  [(BMSoundDetectionEvent *)self absoluteTimestamp];
  [(BMPBSoundDetectionEvent *)v3 setAbsoluteTimestamp:?];
  type = [(BMSoundDetectionEvent *)self type];
  [(BMPBSoundDetectionEvent *)v3 setSoundDetectionType:type];

  return v3;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (unint64_t)hash
{
  [(BMSoundDetectionEvent *)self absoluteTimestamp];
  v4 = (v3 * 1000.0);
  type = [(BMSoundDetectionEvent *)self type];
  v6 = [type hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v6 absoluteTimestamp];
    if (absoluteTimestamp == v8)
    {
      type = self->_type;
      v10 = type;
      if (!type)
      {
        type = [v6 type];
        if (!type)
        {
          v12 = 1;
LABEL_11:

          goto LABEL_12;
        }

        v10 = self->_type;
      }

      type2 = [v6 type];
      v12 = [(NSString *)v10 isEqual:type2];

      if (!type)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E695DF00];
  [(BMSoundDetectionEvent *)self absoluteTimestamp];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  type = [(BMSoundDetectionEvent *)self type];
  v8 = [v3 initWithFormat:@"<%@ %p> time: %@, type: %@", v4, self, v6, type];

  return v8;
}

@end