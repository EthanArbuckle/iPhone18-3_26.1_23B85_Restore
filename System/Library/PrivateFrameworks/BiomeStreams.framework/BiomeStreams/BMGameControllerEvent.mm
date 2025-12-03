@interface BMGameControllerEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMGameControllerEvent)initWithIsControllerConnected:(BOOL)connected numberOfControllersConnected:(unint64_t)controllersConnected;
- (BMGameControllerEvent)initWithProto:(id)proto;
- (BMGameControllerEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMGameControllerEvent

- (BMGameControllerEvent)initWithIsControllerConnected:(BOOL)connected numberOfControllersConnected:(unint64_t)controllersConnected
{
  v7.receiver = self;
  v7.super_class = BMGameControllerEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_isControllerConnected = connected;
    result->_numberOfControllersConnected = controllersConnected;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isControllerConnected];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfControllersConnected];
  v6 = [v3 initWithFormat:@"GameControllerEvent event with isControllerConnected: %@, numberOfControllersConnected: %@", v4, v5];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMGameControllerEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMGameControllerEvent)initWithProto:(id)proto
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
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(BMGameControllerEvent *)self initWithProto:v9];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  isControllerConnected = [v5 isControllerConnected];
  numberOfControllersConnected = [v5 numberOfControllersConnected];

  self = [(BMGameControllerEvent *)self initWithIsControllerConnected:isControllerConnected numberOfControllersConnected:numberOfControllersConnected];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMGameControllerEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBGameControllerEvent alloc] initWithData:dataCopy];

    self = [(BMGameControllerEvent *)self initWithProto:v5];
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
  [v3 setIsControllerConnected:{-[BMGameControllerEvent isControllerConnected](self, "isControllerConnected")}];
  [v3 setNumberOfControllersConnected:{-[BMGameControllerEvent numberOfControllersConnected](self, "numberOfControllersConnected")}];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_isControllerConnected];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numberOfControllersConnected];
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
    isControllerConnected = self->_isControllerConnected;
    if (isControllerConnected == [v5 isControllerConnected])
    {
      numberOfControllersConnected = self->_numberOfControllersConnected;
      v8 = numberOfControllersConnected == [v5 numberOfControllersConnected];
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