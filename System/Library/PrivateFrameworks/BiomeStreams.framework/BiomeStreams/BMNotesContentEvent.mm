@interface BMNotesContentEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMNotesContentEvent)initWithCoder:(id)a3;
- (BMNotesContentEvent)initWithProto:(id)a3;
- (BMNotesContentEvent)initWithProtoData:(id)a3;
- (BMNotesContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 title:(id)a7 content:(id)a8 contentProtection:(id)a9;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMNotesContentEvent

- (BMNotesContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 title:(id)a7 content:(id)a8 contentProtection:(id)a9
{
  v17 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a7;
  v18 = a8;
  v19 = a9;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMNotesContentEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? contentProtection:?];
    if (v18)
    {
      goto LABEL_3;
    }
  }

  [BMNotesContentEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? contentProtection:?];
LABEL_3:
  v27.receiver = self;
  v27.super_class = BMNotesContentEvent;
  v20 = [(BMNotesContentEvent *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uniqueId, a3);
    objc_storeStrong(&v21->_domainId, a4);
    objc_storeStrong(&v21->_personaId, a5);
    v21->_absoluteTimestamp = a6;
    objc_storeStrong(&v21->_title, a7);
    objc_storeStrong(&v21->_content, a8);
    objc_storeStrong(&v21->_contentProtection, a9);
  }

  return v21;
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
      [BMNotesContentEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v2 = [(BMNotesContentEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMNotesContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMNotesContentEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMNotesContentEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMNotesContentEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMNotesContentEvent *)self initWithProtoData:v6];
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
  v2 = [(BMNotesContentEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMNotesContentEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& ([v5 hasContent]& 1) != 0)
      {
        v6 = [v5 uniqueId];
        v7 = [v5 domainId];
        v8 = [v5 personaId];
        [v5 absoluteTimestamp];
        v10 = v9;
        v11 = [v5 title];
        v12 = [v5 content];
        v13 = [v5 contentProtection];
        self = [(BMNotesContentEvent *)self initWithUniqueId:v6 domainId:v7 personaId:v8 absoluteTimestamp:v11 title:v12 content:v13 contentProtection:v10];

        v14 = self;
LABEL_14:

        goto LABEL_15;
      }

      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [BMNotesContentEvent initWithProto:v15];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMNotesContentEvent initWithProto:v5];
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (BMNotesContentEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBNotesContentEvent alloc] initWithData:v4];

    self = [(BMNotesContentEvent *)self initWithProto:v5];
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
  v4 = [(BMNotesContentEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  v5 = [(BMNotesContentEvent *)self domainId];
  [v3 setDomainId:v5];

  v6 = [(BMNotesContentEvent *)self personaId];
  [v3 setPersonaId:v6];

  [(BMNotesContentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v7 = [(BMNotesContentEvent *)self title];
  [v3 setTitle:v7];

  v8 = [(BMNotesContentEvent *)self content];
  [v3 setContent:v8];

  v9 = [(BMNotesContentEvent *)self contentProtection];
  [v3 setContentProtection:v9];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMNotesContentEvent *)self proto];
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
  if (self->_uniqueId && self->_content)
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