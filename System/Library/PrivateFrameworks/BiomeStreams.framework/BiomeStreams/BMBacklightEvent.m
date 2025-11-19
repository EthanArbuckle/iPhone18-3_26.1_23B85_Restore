@interface BMBacklightEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMBacklightEvent)initWithAbsoluteTimestamp:(double)a3 backlightLevel:(unint64_t)a4;
- (BMBacklightEvent)initWithProto:(id)a3;
- (BMBacklightEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMBacklightEvent

- (BMBacklightEvent)initWithAbsoluteTimestamp:(double)a3 backlightLevel:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = BMBacklightEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_absoluteTimestamp = a3;
    result->_backlightLevel = a4;
  }

  return result;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Backlight event with timestamp: %f", *&self->_absoluteTimestamp];

  return v2;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMBacklightEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMBacklightEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v9 = 0;
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

  v5 = v4;
  [v5 absoluteTimestamp];
  v7 = v6;
  v8 = [v5 backlightLevel];

  self = [(BMBacklightEvent *)self initWithAbsoluteTimestamp:v8 backlightLevel:v7];
  v9 = self;
LABEL_8:

  return v9;
}

- (BMBacklightEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBBacklightEvent alloc] initWithData:v4];

    self = [(BMBacklightEvent *)self initWithProto:v5];
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
  [v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  [v3 setBacklightLevel:self->_backlightLevel];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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