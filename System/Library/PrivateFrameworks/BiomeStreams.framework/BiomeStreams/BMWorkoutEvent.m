@interface BMWorkoutEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMWorkoutEvent)initWithProto:(id)a3;
- (BMWorkoutEvent)initWithProtoData:(id)a3;
- (BMWorkoutEvent)initWithStarting:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMWorkoutEvent

- (BMWorkoutEvent)initWithStarting:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BMWorkoutEvent;
  result = [(BMEventBase *)&v5 init];
  if (result)
  {
    result->_starting = a3;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMWorkoutEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMWorkoutEvent)initWithProto:(id)a3
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
      [(BMWorkoutEvent *)self initWithProto:v6];
    }

    goto LABEL_7;
  }

  self = -[BMWorkoutEvent initWithStarting:](self, "initWithStarting:", [v4 starting]);
  v5 = self;
LABEL_8:

  return v5;
}

- (BMWorkoutEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBWorkoutEvent alloc] initWithData:v4];

    self = [(BMWorkoutEvent *)self initWithProto:v5];
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
  [v3 setStarting:{-[BMWorkoutEvent isStarting](self, "isStarting")}];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWorkoutEvent *)self isStarting];
    v7 = [v5 isStarting];

    v8 = v6 ^ v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end