@interface BMParsecSearchEngagementEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMParsecSearchEngagementEvent)initWithCoder:(id)a3;
- (BMParsecSearchEngagementEvent)initWithProto:(id)a3;
- (BMParsecSearchEngagementEvent)initWithProtoData:(id)a3;
- (BMParsecSearchEngagementEvent)initWithUniqueId:(id)a3 resultId:(id)a4 domainId:(id)a5 personaId:(id)a6 absoluteTimestamp:(double)a7 userInput:(id)a8 completedQuery:(id)a9 entities:(id)a10 contentProtection:(id)a11;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMParsecSearchEngagementEvent

- (BMParsecSearchEngagementEvent)initWithUniqueId:(id)a3 resultId:(id)a4 domainId:(id)a5 personaId:(id)a6 absoluteTimestamp:(double)a7 userInput:(id)a8 completedQuery:(id)a9 entities:(id)a10 contentProtection:(id)a11
{
  v19 = a3;
  obj = a4;
  v20 = a4;
  v33 = a5;
  v29 = a6;
  v32 = a6;
  v30 = a8;
  v21 = a8;
  v31 = a9;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  if (v19)
  {
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMParsecSearchEngagementEvent initWithUniqueId:resultId:domainId:personaId:absoluteTimestamp:userInput:completedQuery:entities:contentProtection:];
    if (v20)
    {
LABEL_3:
      if (v21)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [BMParsecSearchEngagementEvent initWithUniqueId:resultId:domainId:personaId:absoluteTimestamp:userInput:completedQuery:entities:contentProtection:];
  if (v21)
  {
LABEL_4:
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_12:
    [BMParsecSearchEngagementEvent initWithUniqueId:resultId:domainId:personaId:absoluteTimestamp:userInput:completedQuery:entities:contentProtection:];
    if (v23)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [BMParsecSearchEngagementEvent initWithUniqueId:resultId:domainId:personaId:absoluteTimestamp:userInput:completedQuery:entities:contentProtection:];
  if (!v22)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v23)
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
    objc_storeStrong(&v25->_uniqueId, a3);
    objc_storeStrong(&v26->_resultId, obj);
    objc_storeStrong(&v26->_domainId, a5);
    objc_storeStrong(&v26->_personaId, v29);
    v26->_absoluteTimestamp = a7;
    objc_storeStrong(&v26->_userInput, v30);
    objc_storeStrong(&v26->_completedQuery, v31);
    objc_storeStrong(&v26->_entities, a10);
    objc_storeStrong(&v26->_contentProtection, a11);
  }

  return v26;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
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
  v2 = [(BMParsecSearchEngagementEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMParsecSearchEngagementEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMParsecSearchEngagementEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMParsecSearchEngagementEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMParsecSearchEngagementEvent *)self initWithProtoData:v6];
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
  v2 = [(BMParsecSearchEngagementEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMParsecSearchEngagementEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasUniqueId]&& [v5 hasResultId]&& [v5 hasAbsoluteTimestamp]&& [v5 hasUserInput]&& ([v5 hasCompletedQuery]& 1) != 0)
      {
        v19 = [v5 uniqueId];
        v18 = [v5 resultId];
        v6 = [v5 domainId];
        v7 = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        v10 = [v5 userInput];
        v11 = [v5 completedQuery];
        v12 = [v5 entities];
        v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_193];
        v14 = [v5 contentProtection];
        self = [(BMParsecSearchEngagementEvent *)self initWithUniqueId:v19 resultId:v18 domainId:v6 personaId:v7 absoluteTimestamp:v10 userInput:v11 completedQuery:v9 entities:v13 contentProtection:v14];

        v15 = self;
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

    v15 = 0;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

BMParsecSearchEntity *__47__BMParsecSearchEngagementEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMParsecSearchEntity alloc] initWithProto:v2];

  return v3;
}

- (BMParsecSearchEngagementEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBParsecSearchEngagementEvent alloc] initWithData:v4];

    self = [(BMParsecSearchEngagementEvent *)self initWithProto:v5];
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
  v4 = [(BMParsecSearchEngagementEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  v5 = [(BMParsecSearchEngagementEvent *)self resultId];
  [v3 setResultId:v5];

  v6 = [(BMParsecSearchEngagementEvent *)self domainId];
  [v3 setDomainId:v6];

  v7 = [(BMParsecSearchEngagementEvent *)self personaId];
  [v3 setPersonaId:v7];

  [(BMParsecSearchEngagementEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v8 = [(BMParsecSearchEngagementEvent *)self userInput];
  [v3 setUserInput:v8];

  v9 = [(BMParsecSearchEngagementEvent *)self completedQuery];
  [v3 setCompletedQuery:v9];

  v10 = [(BMParsecSearchEngagementEvent *)self entities];
  v11 = [v10 _pas_mappedArrayWithTransform:&__block_literal_global_196];
  v12 = [v11 mutableCopy];
  [v3 setEntities:v12];

  v13 = [(BMParsecSearchEngagementEvent *)self contentProtection];
  [v3 setContentProtection:v13];

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
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMParsecSearchEngagementEvent *)self proto];
    v7 = [v5 proto];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
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

        if (![*(*(&v15 + 1) + 8 * i) isCompleteWithContext:v6 error:{a4, v15}])
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

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
    *a4 = v12 = 0;
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