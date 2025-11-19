@interface BMSafariPageViewEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSafariPageViewEvent)initWithCoder:(id)a3;
- (BMSafariPageViewEvent)initWithProto:(id)a3;
- (BMSafariPageViewEvent)initWithProtoData:(id)a3;
- (BMSafariPageViewEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 title:(id)a7 content:(id)a8 contentIsReaderText:(BOOL)a9 url:(id)a10 contentProtection:(id)a11;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMSafariPageViewEvent

- (BMSafariPageViewEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 title:(id)a7 content:(id)a8 contentIsReaderText:(BOOL)a9 url:(id)a10 contentProtection:(id)a11
{
  v18 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a7;
  obj = a8;
  v19 = a8;
  v20 = a10;
  v21 = a11;
  if (v18)
  {
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_8:
    [BMSafariPageViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? contentIsReaderText:? url:? contentProtection:?];
    if (v20)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [BMSafariPageViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? contentIsReaderText:? url:? contentProtection:?];
  if (!v19)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v20)
  {
    goto LABEL_4;
  }

LABEL_9:
  [BMSafariPageViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? contentIsReaderText:? url:? contentProtection:?];
LABEL_4:
  v31.receiver = self;
  v31.super_class = BMSafariPageViewEvent;
  v22 = [(BMSafariPageViewEvent *)&v31 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_uniqueId, a3);
    objc_storeStrong(&v23->_personaId, a5);
    objc_storeStrong(&v23->_domainId, a4);
    v23->_absoluteTimestamp = a6;
    objc_storeStrong(&v23->_title, a7);
    objc_storeStrong(&v23->_content, obj);
    v23->_contentIsReaderText = a9;
    objc_storeStrong(&v23->_url, a10);
    objc_storeStrong(&v23->_contentProtection, a11);
  }

  return v23;
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
      [BMSafariPageViewEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v2 = [(BMSafariPageViewEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMSafariPageViewEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMSafariPageViewEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMSafariPageViewEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMSafariPageViewEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSafariPageViewEvent *)self initWithProtoData:v6];
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
  v2 = [(BMSafariPageViewEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSafariPageViewEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(BMSafariPageViewEvent *)v5 initWithProto:v20, v21, v22, v23, v24, v25, v26];
      }

      v19 = 0;
      goto LABEL_19;
    }

    v5 = v4;
    if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& [v5 hasContent]&& [v5 hasContentIsReaderText]&& ([v5 hasUrl]& 1) != 0)
    {
      v6 = [v5 url];
      v7 = [v6 length];

      if (v7)
      {
        v8 = objc_alloc(MEMORY[0x1E695DFF8]);
        v9 = [v5 url];
        v10 = [v8 initWithString:v9 encodingInvalidCharacters:1];

        if (v10)
        {
          v43 = [v5 uniqueId];
          v11 = [v5 domainId];
          v12 = [v5 personaId];
          [v5 absoluteTimestamp];
          v14 = v13;
          v15 = [v5 title];
          v16 = [v5 content];
          v17 = [v5 contentIsReaderText];
          v18 = [v5 contentProtection];
          self = [(BMSafariPageViewEvent *)self initWithUniqueId:v43 domainId:v11 personaId:v12 absoluteTimestamp:v15 title:v16 content:v17 contentIsReaderText:v14 url:v10 contentProtection:v18];

          v19 = self;
LABEL_18:

LABEL_19:
          goto LABEL_20;
        }

        v42 = __biome_log_for_category();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          [(BMSafariPageViewEvent *)v5 initWithProto:v42];
        }
      }

      else
      {
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [(BMSafariPageViewEvent *)v10 initWithProto:v35, v36, v37, v38, v39, v40, v41];
        }
      }
    }

    else
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(BMSafariPageViewEvent *)v10 initWithProto:v27, v28, v29, v30, v31, v32, v33];
      }
    }

    v19 = 0;
    goto LABEL_18;
  }

  v19 = 0;
LABEL_20:

  return v19;
}

- (BMSafariPageViewEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSafariPageViewEvent alloc] initWithData:v4];

    self = [(BMSafariPageViewEvent *)self initWithProto:v5];
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
  v4 = [(BMSafariPageViewEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  v5 = [(BMSafariPageViewEvent *)self domainId];
  [v3 setDomainId:v5];

  v6 = [(BMSafariPageViewEvent *)self personaId];
  [v3 setPersonaId:v6];

  [(BMSafariPageViewEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  [v3 setTitle:self->_title];
  [v3 setContent:self->_content];
  [v3 setContentIsReaderText:self->_contentIsReaderText];
  v7 = [(NSURL *)self->_url absoluteString];
  [v3 setUrl:v7];

  v8 = [(BMSafariPageViewEvent *)self contentProtection];
  [v3 setContentProtection:v8];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v5 = [v4 hash];
  v6 = [(NSURL *)self->_url absoluteString];
  v7 = v3 ^ [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariPageViewEvent *)self proto];
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
  if (self->_uniqueId && self->_content && self->_url)
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