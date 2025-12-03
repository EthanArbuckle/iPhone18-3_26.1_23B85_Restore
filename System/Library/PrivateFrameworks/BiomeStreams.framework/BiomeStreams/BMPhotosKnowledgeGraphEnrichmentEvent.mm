@interface BMPhotosKnowledgeGraphEnrichmentEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithCoder:(id)coder;
- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithProto:(id)proto;
- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithProtoData:(id)data;
- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithUniqueId:(id)id personaId:(id)personaId absoluteTimestamp:(double)timestamp topics:(id)topics entities:(id)entities locations:(id)locations contentProtection:(id)protection;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMPhotosKnowledgeGraphEnrichmentEvent

- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithUniqueId:(id)id personaId:(id)personaId absoluteTimestamp:(double)timestamp topics:(id)topics entities:(id)entities locations:(id)locations contentProtection:(id)protection
{
  idCopy = id;
  personaIdCopy = personaId;
  topicsCopy = topics;
  entitiesCopy = entities;
  obj = locations;
  locationsCopy = locations;
  protectionCopy = protection;
  protectionCopy2 = protection;
  if (idCopy)
  {
    if (topicsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMPhotosKnowledgeGraphEnrichmentEvent initWithUniqueId:personaId:absoluteTimestamp:topics:entities:locations:contentProtection:];
    if (topicsCopy)
    {
LABEL_3:
      if (entitiesCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [BMPhotosKnowledgeGraphEnrichmentEvent initWithUniqueId:personaId:absoluteTimestamp:topics:entities:locations:contentProtection:];
      if (locationsCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [BMPhotosKnowledgeGraphEnrichmentEvent initWithUniqueId:personaId:absoluteTimestamp:topics:entities:locations:contentProtection:];
  if (!entitiesCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (locationsCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  [BMPhotosKnowledgeGraphEnrichmentEvent initWithUniqueId:personaId:absoluteTimestamp:topics:entities:locations:contentProtection:];
LABEL_5:
  v29.receiver = self;
  v29.super_class = BMPhotosKnowledgeGraphEnrichmentEvent;
  v22 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)&v29 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_uniqueId, id);
    objc_storeStrong(&v23->_personaId, personaId);
    v23->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v23->_topics, topics);
    objc_storeStrong(&v23->_entities, entities);
    objc_storeStrong(&v23->_locations, obj);
    objc_storeStrong(&v23->_contentProtection, protectionCopy);
  }

  return v23;
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
      +[BMPhotosKnowledgeGraphEnrichmentEvent eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  v5 = [dictionaryRepresentation objectForKeyedSubscript:@"locations"];
  v6 = [v5 count];

  if (v6)
  {
    proto2 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self proto];
    dictionaryRepresentation2 = [proto2 dictionaryRepresentation];
    v9 = [dictionaryRepresentation2 mutableCopy];

    v10 = v9;
    v11 = [v10 objectForKeyedSubscript:@"locations"];
    v12 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_6];
    [v10 setObject:v12 forKeyedSubscript:@"locations"];

    dictionaryRepresentation = v10;
  }

  return dictionaryRepresentation;
}

id __49__BMPhotosKnowledgeGraphEnrichmentEvent_jsonDict__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"encodedLocation"];
  if (v3)
  {
    v4 = [v2 mutableCopy];
    v5 = [v3 base64EncodedStringWithOptions:0];
    [v4 setObject:v5 forKeyedSubscript:@"encodedLocation"];

    v2 = v4;
  }

  return v2;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMPhotosKnowledgeGraphEnrichmentEvent json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self initWithProtoData:v6];
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
  proto = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasUniqueId]&& ([v5 hasAbsoluteTimestamp]& 1) != 0)
      {
        uniqueId = [v5 uniqueId];
        personaId = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        topics = [v5 topics];
        v10 = [topics _pas_mappedArrayWithTransform:&__block_literal_global_223];
        entities = [v5 entities];
        v11 = [entities _pas_mappedArrayWithTransform:&__block_literal_global_226];
        locations = [v5 locations];
        v13 = [locations _pas_mappedArrayWithTransform:&__block_literal_global_229];
        contentProtection = [v5 contentProtection];
        self = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self initWithUniqueId:uniqueId personaId:personaId absoluteTimestamp:v10 topics:v11 entities:v13 locations:contentProtection contentProtection:v9];

        selfCopy = self;
LABEL_13:

        goto LABEL_14;
      }

      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosKnowledgeGraphEnrichmentEvent initWithProto:];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMPhotosKnowledgeGraphEnrichmentEvent initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_13;
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

BMPhotosKnowledgeGraphEnrichmentTopic *__55__BMPhotosKnowledgeGraphEnrichmentEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMPhotosKnowledgeGraphEnrichmentTopic alloc] initWithProto:v2];

  return v3;
}

BMPhotosKnowledgeGraphEnrichmentEntity *__55__BMPhotosKnowledgeGraphEnrichmentEvent_initWithProto___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMPhotosKnowledgeGraphEnrichmentEntity alloc] initWithProto:v2];

  return v3;
}

BMPhotosKnowledgeGraphEnrichmentLocation *__55__BMPhotosKnowledgeGraphEnrichmentEvent_initWithProto___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMPhotosKnowledgeGraphEnrichmentLocation alloc] initWithProto:v2];

  return v3;
}

- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBPhotosKnowledgeGraphEnrichmentEvent alloc] initWithData:dataCopy];

    self = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self initWithProto:v5];
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
  uniqueId = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  personaId = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self personaId];
  [v3 setPersonaId:personaId];

  [(BMPhotosKnowledgeGraphEnrichmentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  topics = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self topics];
  v7 = [topics _pas_mappedArrayWithTransform:&__block_literal_global_232];
  v8 = [v7 mutableCopy];
  [v3 setTopics:v8];

  entities = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self entities];
  v10 = [entities _pas_mappedArrayWithTransform:&__block_literal_global_235];
  v11 = [v10 mutableCopy];
  [v3 setEntities:v11];

  locations = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self locations];
  v13 = [locations _pas_mappedArrayWithTransform:&__block_literal_global_238];
  v14 = [v13 mutableCopy];
  [v3 setLocations:v14];

  contentProtection = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self contentProtection];
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
    proto = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self proto];
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
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = self->_topics;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (![*(*(&v31 + 1) + 8 * v11) isCompleteWithContext:contextCopy error:error])
      {
        goto LABEL_27;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_entities;
  v12 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v7);
      }

      if (![*(*(&v27 + 1) + 8 * v15) isCompleteWithContext:contextCopy error:error])
      {
        goto LABEL_27;
      }

      if (v13 == ++v15)
      {
        v13 = [(NSArray *)v7 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v13)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_locations;
  v16 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
LABEL_19:
    v19 = 0;
    while (1)
    {
      if (*v24 != v18)
      {
        objc_enumerationMutation(v7);
      }

      if (![*(*(&v23 + 1) + 8 * v19) isCompleteWithContext:contextCopy error:{error, v23}])
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v17)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

LABEL_27:

LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

LABEL_25:

  if (!self->_uniqueId)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
      *error = v20 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v20 = 1;
LABEL_29:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

@end