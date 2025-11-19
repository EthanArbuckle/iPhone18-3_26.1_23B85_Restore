@interface BMSiriIntentEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSiriIntentEvent)initWithIntentId:(id)a3 eventType:(id)a4 eventData:(id)a5;
- (BMSiriIntentEvent)initWithProto:(id)a3;
- (BMSiriIntentEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSiriIntentEvent

- (BMSiriIntentEvent)initWithIntentId:(id)a3 eventType:(id)a4 eventData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMSiriIntentEvent;
  v12 = [(BMEventBase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intentId, a3);
    objc_storeStrong(&v13->_eventType, a4);
    objc_storeStrong(&v13->_eventData, a5);
  }

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventType = self->_eventType;
  v5 = [v3 initWithFormat:@"SiriIntentEvent event with type: %@ and id: %@", eventType, self->_intentId];

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
  v2 = [(BMSiriIntentEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSiriIntentEvent)initWithProto:(id)a3
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
      [(BMSchoolTimeEvent *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v5 intentId];
  v7 = [v5 eventType];
  v8 = [v5 eventData];

  self = [(BMSiriIntentEvent *)self initWithIntentId:v6 eventType:v7 eventData:v8];
  v9 = self;
LABEL_8:

  return v9;
}

- (BMSiriIntentEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSiriIntentEvent alloc] initWithData:v4];

    self = [(BMSiriIntentEvent *)self initWithProto:v5];
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
  v4 = [(BMSiriIntentEvent *)self intentId];
  [v3 setIntentId:v4];

  v5 = [(BMSiriIntentEvent *)self eventType];
  [v3 setEventType:v5];

  v6 = [(BMSiriIntentEvent *)self eventData];
  [v3 setEventData:v6];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventType hash];
  v4 = [(NSData *)self->_eventData hash]^ v3;
  return v4 ^ [(NSString *)self->_intentId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    eventType = self->_eventType;
    v7 = [v5 eventType];
    if ([(NSString *)eventType isEqualToString:v7])
    {
      intentId = self->_intentId;
      v9 = [v5 intentId];
      if ([(NSString *)intentId isEqualToString:v9])
      {
        eventData = self->_eventData;
        v11 = [v5 eventData];
        v12 = [(NSData *)eventData isEqualToData:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end