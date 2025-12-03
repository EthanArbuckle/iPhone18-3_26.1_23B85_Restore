@interface BMSiriQueryEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSiriQueryEvent)initWithCoder:(id)coder;
- (BMSiriQueryEvent)initWithProto:(id)proto;
- (BMSiriQueryEvent)initWithProtoData:(id)data;
- (BMSiriQueryEvent)initWithUniqueId:(id)id personaId:(id)personaId absoluteTimestamp:(double)timestamp query:(id)query results:(id)results contentProtection:(id)protection;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMSiriQueryEvent

- (BMSiriQueryEvent)initWithUniqueId:(id)id personaId:(id)personaId absoluteTimestamp:(double)timestamp query:(id)query results:(id)results contentProtection:(id)protection
{
  idCopy = id;
  personaIdCopy = personaId;
  queryCopy = query;
  resultsCopy = results;
  protectionCopy = protection;
  if (idCopy)
  {
    if (queryCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [BMSiriQueryEvent initWithUniqueId:personaId:absoluteTimestamp:query:results:contentProtection:];
    if (resultsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [BMSiriQueryEvent initWithUniqueId:personaId:absoluteTimestamp:query:results:contentProtection:];
  if (!queryCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (resultsCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [BMSiriQueryEvent initWithUniqueId:personaId:absoluteTimestamp:query:results:contentProtection:];
LABEL_4:
  v24.receiver = self;
  v24.super_class = BMSiriQueryEvent;
  v19 = [(BMSiriQueryEvent *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_uniqueId, id);
    objc_storeStrong(&v20->_personaId, personaId);
    v20->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v20->_query, query);
    objc_storeStrong(&v20->_results, results);
    objc_storeStrong(&v20->_contentProtection, protection);
  }

  return v20;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 2)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[BMSiriQueryEvent eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMSiriQueryEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMSiriQueryEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMSiriQueryEvent json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMSiriQueryEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMSiriQueryEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSiriQueryEvent *)self initWithProtoData:v6];
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
  proto = [(BMSiriQueryEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSiriQueryEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasUniqueId])
      {
        [v5 absoluteTimestamp];
        if (v6 != 0.0)
        {
          query = [v5 query];

          if (query)
          {
            uniqueId = [v5 uniqueId];
            personaId = [v5 personaId];
            [v5 absoluteTimestamp];
            v11 = v10;
            query2 = [v5 query];
            results = [v5 results];
            v14 = [results _pas_mappedArrayWithTransform:&__block_literal_global];
            contentProtection = [v5 contentProtection];
            self = [(BMSiriQueryEvent *)self initWithUniqueId:uniqueId personaId:personaId absoluteTimestamp:query2 query:v14 results:contentProtection contentProtection:v11];

            selfCopy = self;
LABEL_14:

            goto LABEL_15;
          }
        }
      }

      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BMSiriQueryEvent initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSiriQueryEvent initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

BMSiriQueryResult *__34__BMSiriQueryEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMSiriQueryResult alloc] initWithProto:v2];

  return v3;
}

- (BMSiriQueryEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSiriQueryEvent alloc] initWithData:dataCopy];

    self = [(BMSiriQueryEvent *)self initWithProto:v5];
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
  uniqueId = [(BMSiriQueryEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  personaId = [(BMSiriQueryEvent *)self personaId];
  [v3 setPersonaId:personaId];

  [(BMSiriQueryEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  query = [(BMSiriQueryEvent *)self query];
  [v3 setQuery:query];

  results = [(BMSiriQueryEvent *)self results];
  v8 = [results _pas_mappedArrayWithTransform:&__block_literal_global_150];
  v9 = [v8 mutableCopy];
  [v3 setResults:v9];

  contentProtection = [(BMSiriQueryEvent *)self contentProtection];
  [v3 setContentProtection:contentProtection];

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
    v5 = equalCopy;
    proto = [(BMSiriQueryEvent *)self proto];
    proto2 = [v5 proto];

    v8 = [proto isEqual:proto2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (self->_uniqueId && self->_query && [(NSArray *)self->_results count])
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