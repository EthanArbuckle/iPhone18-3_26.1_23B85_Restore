@interface BMParsecSearchEngagementEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMParsecSearchEngagementEvent)initWithCoder:(id)coder;
- (BMParsecSearchEngagementEvent)initWithProto:(id)proto;
- (BMParsecSearchEngagementEvent)initWithProtoData:(id)data;
- (BMParsecSearchEngagementEvent)initWithUniqueId:(id)id resultId:(id)resultId domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp userInput:(id)input completedQuery:(id)query entities:(id)self0 contentProtection:(id)self1;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMParsecSearchEngagementEvent

- (BMParsecSearchEngagementEvent)initWithUniqueId:(id)id resultId:(id)resultId domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp userInput:(id)input completedQuery:(id)query entities:(id)self0 contentProtection:(id)self1
{
  idCopy = id;
  obj = resultId;
  resultIdCopy = resultId;
  domainIdCopy = domainId;
  personaIdCopy = personaId;
  personaIdCopy2 = personaId;
  inputCopy = input;
  inputCopy2 = input;
  queryCopy = query;
  queryCopy2 = query;
  entitiesCopy = entities;
  protectionCopy = protection;
  if (idCopy)
  {
    if (resultIdCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMParsecSearchEngagementEvent initWithUniqueId:resultId:domainId:personaId:absoluteTimestamp:userInput:completedQuery:entities:contentProtection:];
    if (resultIdCopy)
    {
LABEL_3:
      if (inputCopy2)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [BMParsecSearchEngagementEvent initWithUniqueId:resultId:domainId:personaId:absoluteTimestamp:userInput:completedQuery:entities:contentProtection:];
  if (inputCopy2)
  {
LABEL_4:
    if (queryCopy2)
    {
      goto LABEL_5;
    }

LABEL_12:
    [BMParsecSearchEngagementEvent initWithUniqueId:resultId:domainId:personaId:absoluteTimestamp:userInput:completedQuery:entities:contentProtection:];
    if (entitiesCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [BMParsecSearchEngagementEvent initWithUniqueId:resultId:domainId:personaId:absoluteTimestamp:userInput:completedQuery:entities:contentProtection:];
  if (!queryCopy2)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (entitiesCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  [BMParsecSearchEngagementEvent initWithUniqueId:resultId:domainId:personaId:absoluteTimestamp:userInput:completedQuery:entities:contentProtection:];
LABEL_6:
  v34.receiver = self;
  v34.super_class = BMParsecSearchEngagementEvent;
  v25 = [(BMParsecSearchEngagementEvent *)&v34 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_uniqueId, id);
    objc_storeStrong(&v26->_resultId, obj);
    objc_storeStrong(&v26->_domainId, domainId);
    objc_storeStrong(&v26->_personaId, personaIdCopy);
    v26->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v26->_userInput, inputCopy);
    objc_storeStrong(&v26->_completedQuery, queryCopy);
    objc_storeStrong(&v26->_entities, entities);
    objc_storeStrong(&v26->_contentProtection, protection);
  }

  return v26;
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
      +[BMParsecSearchTopic eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMParsecSearchEngagementEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMParsecSearchEngagementEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMParsecSearchTopic json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMParsecSearchEngagementEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMParsecSearchEngagementEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMParsecSearchEngagementEvent *)self initWithProtoData:v6];
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
  proto = [(BMParsecSearchEngagementEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMParsecSearchEngagementEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasUniqueId]&& [v5 hasResultId]&& [v5 hasAbsoluteTimestamp]&& [v5 hasUserInput]&& ([v5 hasCompletedQuery]& 1) != 0)
      {
        uniqueId = [v5 uniqueId];
        resultId = [v5 resultId];
        domainId = [v5 domainId];
        personaId = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        userInput = [v5 userInput];
        completedQuery = [v5 completedQuery];
        entities = [v5 entities];
        v13 = [entities _pas_mappedArrayWithTransform:&__block_literal_global_193];
        contentProtection = [v5 contentProtection];
        self = [(BMParsecSearchEngagementEvent *)self initWithUniqueId:uniqueId resultId:resultId domainId:domainId personaId:personaId absoluteTimestamp:userInput userInput:completedQuery completedQuery:v9 entities:v13 contentProtection:contentProtection];

        selfCopy = self;
LABEL_16:

        goto LABEL_17;
      }

      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [BMParsecSearchEngagementEvent initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMParsecSearchEngagementEvent initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_16;
  }

  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

BMParsecSearchEntity *__47__BMParsecSearchEngagementEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMParsecSearchEntity alloc] initWithProto:v2];

  return v3;
}

- (BMParsecSearchEngagementEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBParsecSearchEngagementEvent alloc] initWithData:dataCopy];

    self = [(BMParsecSearchEngagementEvent *)self initWithProto:v5];
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
  uniqueId = [(BMParsecSearchEngagementEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  resultId = [(BMParsecSearchEngagementEvent *)self resultId];
  [v3 setResultId:resultId];

  domainId = [(BMParsecSearchEngagementEvent *)self domainId];
  [v3 setDomainId:domainId];

  personaId = [(BMParsecSearchEngagementEvent *)self personaId];
  [v3 setPersonaId:personaId];

  [(BMParsecSearchEngagementEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  userInput = [(BMParsecSearchEngagementEvent *)self userInput];
  [v3 setUserInput:userInput];

  completedQuery = [(BMParsecSearchEngagementEvent *)self completedQuery];
  [v3 setCompletedQuery:completedQuery];

  entities = [(BMParsecSearchEngagementEvent *)self entities];
  v11 = [entities _pas_mappedArrayWithTransform:&__block_literal_global_196];
  v12 = [v11 mutableCopy];
  [v3 setEntities:v12];

  contentProtection = [(BMParsecSearchEngagementEvent *)self contentProtection];
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
    proto = [(BMParsecSearchEngagementEvent *)self proto];
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
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_entities;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v15 + 1) + 8 * i) isCompleteWithContext:contextCopy error:{error, v15}])
        {

          goto LABEL_15;
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (self->_uniqueId && self->_resultId && self->_userInput && self->_completedQuery)
  {
    v12 = 1;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *error = v12 = 0;
  }

  else
  {
LABEL_15:
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

@end