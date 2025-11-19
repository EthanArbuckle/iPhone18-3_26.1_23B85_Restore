@interface BMGameControllerEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMGameControllerEvent)initWithIsControllerConnected:(BOOL)a3 numberOfControllersConnected:(unint64_t)a4;
- (BMGameControllerEvent)initWithProto:(id)a3;
- (BMGameControllerEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMGameControllerEvent

- (BMGameControllerEvent)initWithIsControllerConnected:(BOOL)a3 numberOfControllersConnected:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = BMGameControllerEvent;
  result = [(BMEventBase *)&v7 init];
  if (result)
  {
    result->_isControllerConnected = a3;
    result->_numberOfControllersConnected = a4;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMGameControllerEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMGameControllerEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v8 = 0;
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

  v5 = v4;
  v6 = [v5 isControllerConnected];
  v7 = [v5 numberOfControllersConnected];

  self = [(BMGameControllerEvent *)self initWithIsControllerConnected:v6 numberOfControllersConnected:v7];
  v8 = self;
LABEL_8:

  return v8;
}

- (BMGameControllerEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBGameControllerEvent alloc] initWithData:v4];

    self = [(BMGameControllerEvent *)self initWithProto:v5];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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