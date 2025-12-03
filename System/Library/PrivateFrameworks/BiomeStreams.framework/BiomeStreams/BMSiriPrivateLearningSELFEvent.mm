@interface BMSiriPrivateLearningSELFEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSiriPrivateLearningSELFEvent)initWithCoder:(id)coder;
- (BMSiriPrivateLearningSELFEvent)initWithProto:(id)proto;
- (BMSiriPrivateLearningSELFEvent)initWithProtoData:(id)data;
- (BMSiriPrivateLearningSELFEvent)initWithUniqueId:(id)id absoluteTimestamp:(double)timestamp eventData:(id)data;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMSiriPrivateLearningSELFEvent

- (BMSiriPrivateLearningSELFEvent)initWithUniqueId:(id)id absoluteTimestamp:(double)timestamp eventData:(id)data
{
  idCopy = id;
  dataCopy = data;
  v12 = dataCopy;
  if (idCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMSiriPrivateLearningSELFEvent initWithUniqueId:a2 absoluteTimestamp:self eventData:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [BMSiriPrivateLearningSELFEvent initWithUniqueId:a2 absoluteTimestamp:self eventData:?];
LABEL_3:
  v16.receiver = self;
  v16.super_class = BMSiriPrivateLearningSELFEvent;
  v13 = [(BMSiriPrivateLearningSELFEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_uniqueId, id);
    v14->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v14->_eventData, data);
  }

  return v14;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMSiriPrivateLearningSELFEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v9[3] = *MEMORY[0x1E69E9840];
  v9[0] = self->_uniqueId;
  v8[0] = @"uniqueId";
  v8[1] = @"absoluteTimestamp";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v9[1] = v3;
  v8[2] = @"eventData";
  v4 = [(NSData *)self->_eventData base64EncodedStringWithOptions:16];
  v9[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMSiriPrivateLearningSELFEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMSiriPrivateLearningSELFEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMSiriPrivateLearningSELFEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMSiriPrivateLearningSELFEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSiriPrivateLearningSELFEvent *)self initWithProtoData:v6];
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
  proto = [(BMSiriPrivateLearningSELFEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSiriPrivateLearningSELFEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& ([v5 hasEventData]& 1) != 0)
      {
        uniqueId = [v5 uniqueId];
        [v5 absoluteTimestamp];
        v8 = v7;
        eventData = [v5 eventData];
        self = [(BMSiriPrivateLearningSELFEvent *)self initWithUniqueId:uniqueId absoluteTimestamp:eventData eventData:v8];

        selfCopy = self;
LABEL_14:

        goto LABEL_15;
      }

      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [BMSiriPrivateLearningSELFEvent initWithProto:v11];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSiriPrivateLearningSELFEvent initWithProto:v5];
      }
    }

    selfCopy = 0;
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (BMSiriPrivateLearningSELFEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSiriPrivateLearningSELFEvent alloc] initWithData:dataCopy];

    self = [(BMSiriPrivateLearningSELFEvent *)self initWithProto:v5];
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
  uniqueId = [(BMSiriPrivateLearningSELFEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  [(BMSiriPrivateLearningSELFEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  eventData = [(BMSiriPrivateLearningSELFEvent *)self eventData];
  [v3 setEventData:eventData];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_uniqueId hash];

  return v5 ^ v4;
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
    if (absoluteTimestamp != v8)
    {
      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    uniqueId = self->_uniqueId;
    eventData = uniqueId;
    if (!uniqueId)
    {
      uniqueId = [v6 uniqueId];
      if (!uniqueId)
      {
        v18 = 0;
        v12 = 0;
        goto LABEL_12;
      }

      v18 = uniqueId;
      eventData = self->_uniqueId;
    }

    uniqueId2 = [v6 uniqueId];
    if (([eventData isEqualToString:uniqueId2] & 1) == 0)
    {

      v13 = 0;
      goto LABEL_18;
    }

    v12 = 1;
LABEL_12:
    eventData = self->_eventData;
    v15 = eventData;
    if (!eventData)
    {
      eventData = [v6 eventData];
      if (!eventData)
      {
        v13 = 1;
        goto LABEL_23;
      }

      v15 = self->_eventData;
    }

    eventData2 = [v6 eventData];
    v13 = [(NSData *)v15 isEqualToData:eventData2];

    if (eventData)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_23:

    if ((v12 & 1) == 0)
    {
LABEL_18:
      if (!uniqueId)
      {
      }

      goto LABEL_20;
    }

LABEL_17:

    goto LABEL_18;
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (self->_uniqueId && self->_eventData)
  {
    v7 = 1;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end