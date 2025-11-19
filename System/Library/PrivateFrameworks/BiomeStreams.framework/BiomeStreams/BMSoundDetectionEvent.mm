@interface BMSoundDetectionEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSoundDetectionEvent)initWithAbsoluteTimestamp:(double)a3 type:(id)a4 customName:(id)a5;
- (BMSoundDetectionEvent)initWithProto:(id)a3;
- (BMSoundDetectionEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSoundDetectionEvent

- (BMSoundDetectionEvent)initWithAbsoluteTimestamp:(double)a3 type:(id)a4 customName:(id)a5
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = BMSoundDetectionEvent;
  v8 = [(BMEventBase *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_absoluteTimestamp = a3;
    v10 = [v7 copy];
    type = v9->_type;
    v9->_type = v10;
  }

  return v9;
}

- (BMSoundDetectionEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSoundDetectionEvent alloc] initWithData:v4];

    self = [(BMSoundDetectionEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMSoundDetectionEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSoundDetectionEvent)initWithProto:(id)a3
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
      [(BMSoundDetectionEvent *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = v4;
  [v5 absoluteTimestamp];
  v7 = v6;
  v8 = [v5 soundDetectionType];

  self = [(BMSoundDetectionEvent *)self initWithAbsoluteTimestamp:v8 type:0 customName:v7];
  v9 = self;
LABEL_8:

  return v9;
}

- (id)proto
{
  v3 = objc_alloc_init(BMPBSoundDetectionEvent);
  [(BMSoundDetectionEvent *)self absoluteTimestamp];
  [(BMPBSoundDetectionEvent *)v3 setAbsoluteTimestamp:?];
  v4 = [(BMSoundDetectionEvent *)self type];
  [(BMPBSoundDetectionEvent *)v3 setSoundDetectionType:v4];

  return v3;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (unint64_t)hash
{
  [(BMSoundDetectionEvent *)self absoluteTimestamp];
  v4 = (v3 * 1000.0);
  v5 = [(BMSoundDetectionEvent *)self type];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v6 absoluteTimestamp];
    if (absoluteTimestamp == v8)
    {
      type = self->_type;
      v10 = type;
      if (!type)
      {
        v3 = [v6 type];
        if (!v3)
        {
          v12 = 1;
LABEL_11:

          goto LABEL_12;
        }

        v10 = self->_type;
      }

      v11 = [v6 type];
      v12 = [(NSString *)v10 isEqual:v11];

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
  v7 = [(BMSoundDetectionEvent *)self type];
  v8 = [v3 initWithFormat:@"<%@ %p> time: %@, type: %@", v4, self, v6, v7];

  return v8;
}

@end