@interface BMBacklightEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMBacklightEvent)initWithAbsoluteTimestamp:(double)timestamp backlightLevel:(unint64_t)level;
- (BMBacklightEvent)initWithProto:(id)proto;
- (BMBacklightEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMBacklightEvent

- (BMBacklightEvent)initWithAbsoluteTimestamp:(double)timestamp backlightLevel:(unint64_t)level
{
  v7.receiver = self;
  v7.super_class = BMBacklightEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_absoluteTimestamp = timestamp;
    result->_backlightLevel = level;
  }

  return result;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Backlight event with timestamp: %f", *&self->_absoluteTimestamp];

  return v2;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMBacklightEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMBacklightEvent)initWithProto:(id)proto
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
      [(BMBacklightEvent *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  [v5 absoluteTimestamp];
  v7 = v6;
  backlightLevel = [v5 backlightLevel];

  self = [(BMBacklightEvent *)self initWithAbsoluteTimestamp:backlightLevel backlightLevel:v7];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMBacklightEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBBacklightEvent alloc] initWithData:dataCopy];

    self = [(BMBacklightEvent *)self initWithProto:v5];
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
  [v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  [v3 setBacklightLevel:self->_backlightLevel];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v5 absoluteTimestamp];
    if (absoluteTimestamp == v7)
    {
      backlightLevel = self->_backlightLevel;
      v9 = backlightLevel == [v5 backlightLevel];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end