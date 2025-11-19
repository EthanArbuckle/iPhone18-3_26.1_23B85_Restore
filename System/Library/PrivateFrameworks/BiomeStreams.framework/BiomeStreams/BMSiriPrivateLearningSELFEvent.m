@interface BMSiriPrivateLearningSELFEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSiriPrivateLearningSELFEvent)initWithCoder:(id)a3;
- (BMSiriPrivateLearningSELFEvent)initWithProto:(id)a3;
- (BMSiriPrivateLearningSELFEvent)initWithProtoData:(id)a3;
- (BMSiriPrivateLearningSELFEvent)initWithUniqueId:(id)a3 absoluteTimestamp:(double)a4 eventData:(id)a5;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMSiriPrivateLearningSELFEvent

- (BMSiriPrivateLearningSELFEvent)initWithUniqueId:(id)a3 absoluteTimestamp:(double)a4 eventData:(id)a5
{
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
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
    objc_storeStrong(&v13->_uniqueId, a3);
    v14->_absoluteTimestamp = a4;
    objc_storeStrong(&v14->_eventData, a5);
  }

  return v14;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMSiriPrivateLearningSELFEvent eventWithData:a4 dataVersion:v8];
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
  v3 = [(BMSiriPrivateLearningSELFEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMSiriPrivateLearningSELFEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMSiriPrivateLearningSELFEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSiriPrivateLearningSELFEvent *)self initWithProtoData:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)encodeAsProto
{
  v2 = [(BMSiriPrivateLearningSELFEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSiriPrivateLearningSELFEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& ([v5 hasEventData]& 1) != 0)
      {
        v6 = [v5 uniqueId];
        [v5 absoluteTimestamp];
        v8 = v7;
        v9 = [v5 eventData];
        self = [(BMSiriPrivateLearningSELFEvent *)self initWithUniqueId:v6 absoluteTimestamp:v9 eventData:v8];

        v10 = self;
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

    v10 = 0;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (BMSiriPrivateLearningSELFEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSiriPrivateLearningSELFEvent alloc] initWithData:v4];

    self = [(BMSiriPrivateLearningSELFEvent *)self initWithProto:v5];
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
  v4 = [(BMSiriPrivateLearningSELFEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  [(BMSiriPrivateLearningSELFEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v5 = [(BMSiriPrivateLearningSELFEvent *)self eventData];
  [v3 setEventData:v5];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_uniqueId hash];

  return v5 ^ v4;
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
    if (absoluteTimestamp != v8)
    {
      v13 = 0;
LABEL_20:

      goto LABEL_21;
    }

    uniqueId = self->_uniqueId;
    v10 = uniqueId;
    if (!uniqueId)
    {
      v11 = [v6 uniqueId];
      if (!v11)
      {
        v18 = 0;
        v12 = 0;
        goto LABEL_12;
      }

      v18 = v11;
      v10 = self->_uniqueId;
    }

    v3 = [v6 uniqueId];
    if (([v10 isEqualToString:v3] & 1) == 0)
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
      v10 = [v6 eventData];
      if (!v10)
      {
        v13 = 1;
        goto LABEL_23;
      }

      v15 = self->_eventData;
    }

    v16 = [v6 eventData];
    v13 = [(NSData *)v15 isEqualToData:v16];

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

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_uniqueId && self->_eventData)
  {
    v7 = 1;
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end