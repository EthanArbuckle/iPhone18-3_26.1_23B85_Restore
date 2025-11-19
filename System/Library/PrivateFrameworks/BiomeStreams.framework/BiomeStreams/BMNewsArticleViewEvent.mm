@interface BMNewsArticleViewEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMNewsArticleViewEvent)initWithCoder:(id)a3;
- (BMNewsArticleViewEvent)initWithProto:(id)a3;
- (BMNewsArticleViewEvent)initWithProtoData:(id)a3;
- (BMNewsArticleViewEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 title:(id)a7 content:(id)a8 summary:(id)a9 publication:(id)a10 contentProtection:(id)a11;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMNewsArticleViewEvent

- (BMNewsArticleViewEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 title:(id)a7 content:(id)a8 summary:(id)a9 publication:(id)a10 contentProtection:(id)a11
{
  v19 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a7;
  obj = a8;
  v20 = a8;
  v29 = a9;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  if (v19)
  {
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_8:
    [BMNewsArticleViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? summary:? publication:? contentProtection:?];
    if (v21)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [BMNewsArticleViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? summary:? publication:? contentProtection:?];
  if (!v20)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v21)
  {
    goto LABEL_4;
  }

LABEL_9:
  [BMNewsArticleViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? summary:? publication:? contentProtection:?];
LABEL_4:
  v33.receiver = self;
  v33.super_class = BMNewsArticleViewEvent;
  v24 = [(BMNewsArticleViewEvent *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_uniqueId, a3);
    objc_storeStrong(&v25->_domainId, a4);
    objc_storeStrong(&v25->_personaId, a5);
    v25->_absoluteTimestamp = a6;
    objc_storeStrong(&v25->_title, a7);
    objc_storeStrong(&v25->_content, obj);
    objc_storeStrong(&v25->_summary, v29);
    objc_storeStrong(&v25->_publication, a10);
    objc_storeStrong(&v25->_contentProtection, a11);
  }

  return v25;
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
      [BMNewsArticleViewEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v2 = [(BMNewsArticleViewEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMNewsArticleViewEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMNewsArticleViewEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMNewsArticleViewEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMNewsArticleViewEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMNewsArticleViewEvent *)self initWithProtoData:v6];
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
  v2 = [(BMNewsArticleViewEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMNewsArticleViewEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& [v5 hasContent]&& ([v5 hasSummary]& 1) != 0)
      {
        v18 = [v5 uniqueId];
        v6 = [v5 domainId];
        v7 = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        v10 = [v5 title];
        v11 = [v5 content];
        v12 = [v5 summary];
        v13 = [v5 publication];
        v14 = [v5 contentProtection];
        self = [(BMNewsArticleViewEvent *)self initWithUniqueId:v18 domainId:v6 personaId:v7 absoluteTimestamp:v10 title:v11 content:v12 summary:v9 publication:v13 contentProtection:v14];

        v15 = self;
LABEL_15:

        goto LABEL_16;
      }

      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [BMNewsArticleViewEvent initWithProto:v16];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMNewsArticleViewEvent initWithProto:v5];
      }
    }

    v15 = 0;
    goto LABEL_15;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (BMNewsArticleViewEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBNewsArticleViewEvent alloc] initWithData:v4];

    self = [(BMNewsArticleViewEvent *)self initWithProto:v5];
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
  v4 = [(BMNewsArticleViewEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  v5 = [(BMNewsArticleViewEvent *)self domainId];
  [v3 setDomainId:v5];

  v6 = [(BMNewsArticleViewEvent *)self personaId];
  [v3 setPersonaId:v6];

  [(BMNewsArticleViewEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  [v3 setTitle:self->_title];
  [v3 setContent:self->_content];
  [v3 setSummary:self->_summary];
  [v3 setPublication:self->_publication];
  v7 = [(BMNewsArticleViewEvent *)self contentProtection];
  [v3 setContentProtection:v7];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSString *)self->_title hash];
  v7 = v6 ^ [(NSString *)self->_summary hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMNewsArticleViewEvent *)self proto];
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
  if (self->_uniqueId && self->_content && self->_summary)
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