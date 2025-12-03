@interface BMSiriIntentEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSiriIntentEvent)initWithIntentId:(id)id eventType:(id)type eventData:(id)data;
- (BMSiriIntentEvent)initWithProto:(id)proto;
- (BMSiriIntentEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSiriIntentEvent

- (BMSiriIntentEvent)initWithIntentId:(id)id eventType:(id)type eventData:(id)data
{
  idCopy = id;
  typeCopy = type;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = BMSiriIntentEvent;
  v12 = [(BMEventBase *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_intentId, id);
    objc_storeStrong(&v13->_eventType, type);
    objc_storeStrong(&v13->_eventData, data);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMSiriIntentEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSiriIntentEvent)initWithProto:(id)proto
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
      [(BMSchoolTimeEvent *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  intentId = [v5 intentId];
  eventType = [v5 eventType];
  eventData = [v5 eventData];

  self = [(BMSiriIntentEvent *)self initWithIntentId:intentId eventType:eventType eventData:eventData];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMSiriIntentEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSiriIntentEvent alloc] initWithData:dataCopy];

    self = [(BMSiriIntentEvent *)self initWithProto:v5];
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
  intentId = [(BMSiriIntentEvent *)self intentId];
  [v3 setIntentId:intentId];

  eventType = [(BMSiriIntentEvent *)self eventType];
  [v3 setEventType:eventType];

  eventData = [(BMSiriIntentEvent *)self eventData];
  [v3 setEventData:eventData];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventType hash];
  v4 = [(NSData *)self->_eventData hash]^ v3;
  return v4 ^ [(NSString *)self->_intentId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eventType = self->_eventType;
    eventType = [v5 eventType];
    if ([(NSString *)eventType isEqualToString:eventType])
    {
      intentId = self->_intentId;
      intentId = [v5 intentId];
      if ([(NSString *)intentId isEqualToString:intentId])
      {
        eventData = self->_eventData;
        eventData = [v5 eventData];
        v12 = [(NSData *)eventData isEqualToData:eventData];
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