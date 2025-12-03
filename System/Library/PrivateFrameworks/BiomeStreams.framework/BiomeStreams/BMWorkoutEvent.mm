@interface BMWorkoutEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMWorkoutEvent)initWithProto:(id)proto;
- (BMWorkoutEvent)initWithProtoData:(id)data;
- (BMWorkoutEvent)initWithStarting:(BOOL)starting;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMWorkoutEvent

- (BMWorkoutEvent)initWithStarting:(BOOL)starting
{
  v5.receiver = self;
  v5.super_class = BMWorkoutEvent;
  result = [(BMEventBase *)&v5 init];
  if (result)
  {
    result->_starting = starting;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
  v5 = [v3 initWithFormat:@"Workout event with isWorkoutStart: %@", v4];

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMWorkoutEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMWorkoutEvent)initWithProto:(id)proto
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
      [(BMWorkoutEvent *)self initWithProto:v6];
    }

    goto LABEL_7;
  }

  self = -[BMWorkoutEvent initWithStarting:](self, "initWithStarting:", [protoCopy starting]);
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMWorkoutEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBWorkoutEvent alloc] initWithData:dataCopy];

    self = [(BMWorkoutEvent *)self initWithProto:v5];
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
  [v3 setStarting:{-[BMWorkoutEvent isStarting](self, "isStarting")}];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isStarting = [(BMWorkoutEvent *)self isStarting];
    isStarting2 = [v5 isStarting];

    v8 = isStarting ^ isStarting2 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end