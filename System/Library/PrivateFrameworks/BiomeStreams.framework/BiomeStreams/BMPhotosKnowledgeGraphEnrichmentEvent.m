@interface BMPhotosKnowledgeGraphEnrichmentEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithCoder:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithProto:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithProtoData:(id)a3;
- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithUniqueId:(id)a3 personaId:(id)a4 absoluteTimestamp:(double)a5 topics:(id)a6 entities:(id)a7 locations:(id)a8 contentProtection:(id)a9;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMPhotosKnowledgeGraphEnrichmentEvent

- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithUniqueId:(id)a3 personaId:(id)a4 absoluteTimestamp:(double)a5 topics:(id)a6 entities:(id)a7 locations:(id)a8 contentProtection:(id)a9
{
  v17 = a3;
  v28 = a4;
  v18 = a6;
  v19 = a7;
  obj = a8;
  v20 = a8;
  v27 = a9;
  v21 = a9;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMPhotosKnowledgeGraphEnrichmentEvent initWithUniqueId:personaId:absoluteTimestamp:topics:entities:locations:contentProtection:];
    if (v18)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_10:
      [BMPhotosKnowledgeGraphEnrichmentEvent initWithUniqueId:personaId:absoluteTimestamp:topics:entities:locations:contentProtection:];
      if (v20)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [BMPhotosKnowledgeGraphEnrichmentEvent initWithUniqueId:personaId:absoluteTimestamp:topics:entities:locations:contentProtection:];
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v20)
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
    objc_storeStrong(&v22->_uniqueId, a3);
    objc_storeStrong(&v23->_personaId, a4);
    v23->_absoluteTimestamp = a5;
    objc_storeStrong(&v23->_topics, a6);
    objc_storeStrong(&v23->_entities, a7);
    objc_storeStrong(&v23->_locations, obj);
    objc_storeStrong(&v23->_contentProtection, v27);
  }

  return v23;
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
      +[BMPhotosKnowledgeGraphEnrichmentEvent eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v3 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self proto];
  v4 = [v3 dictionaryRepresentation];

  v5 = [v4 objectForKeyedSubscript:@"locations"];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self proto];
    v8 = [v7 dictionaryRepresentation];
    v9 = [v8 mutableCopy];

    v10 = v9;
    v11 = [v10 objectForKeyedSubscript:@"locations"];
    v12 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_6];
    [v10 setObject:v12 forKeyedSubscript:@"locations"];

    v4 = v10;
  }

  return v4;
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
  v3 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self initWithProtoData:v6];
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
  v2 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasUniqueId]&& ([v5 hasAbsoluteTimestamp]& 1) != 0)
      {
        v6 = [v5 uniqueId];
        v7 = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        v19 = [v5 topics];
        v10 = [v19 _pas_mappedArrayWithTransform:&__block_literal_global_223];
        v18 = [v5 entities];
        v11 = [v18 _pas_mappedArrayWithTransform:&__block_literal_global_226];
        v12 = [v5 locations];
        v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_229];
        v14 = [v5 contentProtection];
        self = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self initWithUniqueId:v6 personaId:v7 absoluteTimestamp:v10 topics:v11 entities:v13 locations:v14 contentProtection:v9];

        v15 = self;
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

    v15 = 0;
    goto LABEL_13;
  }

  v15 = 0;
LABEL_14:

  return v15;
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

- (BMPhotosKnowledgeGraphEnrichmentEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBPhotosKnowledgeGraphEnrichmentEvent alloc] initWithData:v4];

    self = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self initWithProto:v5];
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
  v4 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  v5 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self personaId];
  [v3 setPersonaId:v5];

  [(BMPhotosKnowledgeGraphEnrichmentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v6 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self topics];
  v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_232];
  v8 = [v7 mutableCopy];
  [v3 setTopics:v8];

  v9 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self entities];
  v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_235];
  v11 = [v10 mutableCopy];
  [v3 setEntities:v11];

  v12 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self locations];
  v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_238];
  v14 = [v13 mutableCopy];
  [v3 setLocations:v14];

  v15 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self contentProtection];
  [v3 setContentProtection:v15];

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
    v6 = [(BMPhotosKnowledgeGraphEnrichmentEvent *)self proto];
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
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
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

      if (![*(*(&v31 + 1) + 8 * v11) isCompleteWithContext:v6 error:a4])
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

      if (![*(*(&v27 + 1) + 8 * v15) isCompleteWithContext:v6 error:a4])
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

      if (![*(*(&v23 + 1) + 8 * v19) isCompleteWithContext:v6 error:{a4, v23}])
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
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
      *a4 = v20 = 0;
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