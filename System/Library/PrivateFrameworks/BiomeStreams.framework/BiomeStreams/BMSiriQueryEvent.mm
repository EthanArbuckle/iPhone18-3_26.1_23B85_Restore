@interface BMSiriQueryEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSiriQueryEvent)initWithCoder:(id)a3;
- (BMSiriQueryEvent)initWithProto:(id)a3;
- (BMSiriQueryEvent)initWithProtoData:(id)a3;
- (BMSiriQueryEvent)initWithUniqueId:(id)a3 personaId:(id)a4 absoluteTimestamp:(double)a5 query:(id)a6 results:(id)a7 contentProtection:(id)a8;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMSiriQueryEvent

- (BMSiriQueryEvent)initWithUniqueId:(id)a3 personaId:(id)a4 absoluteTimestamp:(double)a5 query:(id)a6 results:(id)a7 contentProtection:(id)a8
{
  v15 = a3;
  v23 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_8:
    [BMSiriQueryEvent initWithUniqueId:personaId:absoluteTimestamp:query:results:contentProtection:];
    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [BMSiriQueryEvent initWithUniqueId:personaId:absoluteTimestamp:query:results:contentProtection:];
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v17)
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
    objc_storeStrong(&v19->_uniqueId, a3);
    objc_storeStrong(&v20->_personaId, a4);
    v20->_absoluteTimestamp = a5;
    objc_storeStrong(&v20->_query, a6);
    objc_storeStrong(&v20->_results, a7);
    objc_storeStrong(&v20->_contentProtection, a8);
  }

  return v20;
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
      +[BMSiriQueryEvent eventWithData:dataVersion:];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v2 = [(BMSiriQueryEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMSiriQueryEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMSiriQueryEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMSiriQueryEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSiriQueryEvent *)self initWithProtoData:v6];
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
  v2 = [(BMSiriQueryEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSiriQueryEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasUniqueId])
      {
        [v5 absoluteTimestamp];
        if (v6 != 0.0)
        {
          v7 = [v5 query];

          if (v7)
          {
            v8 = [v5 uniqueId];
            v9 = [v5 personaId];
            [v5 absoluteTimestamp];
            v11 = v10;
            v12 = [v5 query];
            v13 = [v5 results];
            v14 = [v13 _pas_mappedArrayWithTransform:&__block_literal_global];
            v15 = [v5 contentProtection];
            self = [(BMSiriQueryEvent *)self initWithUniqueId:v8 personaId:v9 absoluteTimestamp:v12 query:v14 results:v15 contentProtection:v11];

            v16 = self;
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

    v16 = 0;
    goto LABEL_14;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

BMSiriQueryResult *__34__BMSiriQueryEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BMSiriQueryResult alloc] initWithProto:v2];

  return v3;
}

- (BMSiriQueryEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSiriQueryEvent alloc] initWithData:v4];

    self = [(BMSiriQueryEvent *)self initWithProto:v5];
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
  v4 = [(BMSiriQueryEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  v5 = [(BMSiriQueryEvent *)self personaId];
  [v3 setPersonaId:v5];

  [(BMSiriQueryEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v6 = [(BMSiriQueryEvent *)self query];
  [v3 setQuery:v6];

  v7 = [(BMSiriQueryEvent *)self results];
  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_150];
  v9 = [v8 mutableCopy];
  [v3 setResults:v9];

  v10 = [(BMSiriQueryEvent *)self contentProtection];
  [v3 setContentProtection:v10];

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
    v6 = [(BMSiriQueryEvent *)self proto];
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
  v6 = a3;
  if (self->_uniqueId && self->_query && [(NSArray *)self->_results count])
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