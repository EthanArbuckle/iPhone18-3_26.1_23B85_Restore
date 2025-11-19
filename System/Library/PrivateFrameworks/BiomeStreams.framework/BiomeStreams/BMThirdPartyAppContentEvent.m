@interface BMThirdPartyAppContentEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMThirdPartyAppContentEvent)initWithCoder:(id)a3;
- (BMThirdPartyAppContentEvent)initWithProto:(id)a3;
- (BMThirdPartyAppContentEvent)initWithProtoData:(id)a3;
- (BMThirdPartyAppContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 bundleId:(id)a5 personaId:(id)a6 absoluteTimestamp:(double)a7 title:(id)a8 desc:(id)a9 comment:(id)a10 content:(id)a11 contentProtection:(id)a12;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMThirdPartyAppContentEvent

- (BMThirdPartyAppContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 bundleId:(id)a5 personaId:(id)a6 absoluteTimestamp:(double)a7 title:(id)a8 desc:(id)a9 comment:(id)a10 content:(id)a11 contentProtection:(id)a12
{
  v19 = a3;
  v35 = a4;
  v30 = a5;
  v20 = a5;
  v31 = a6;
  v34 = a6;
  v32 = a8;
  v33 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  if (v19)
  {
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMThirdPartyAppContentEvent initWithUniqueId:a2 domainId:self bundleId:? personaId:? absoluteTimestamp:? title:? desc:? comment:? content:? contentProtection:?];
    if (v20)
    {
      goto LABEL_3;
    }
  }

  [BMThirdPartyAppContentEvent initWithUniqueId:a2 domainId:self bundleId:? personaId:? absoluteTimestamp:? title:? desc:? comment:? content:? contentProtection:?];
LABEL_3:
  v36.receiver = self;
  v36.super_class = BMThirdPartyAppContentEvent;
  v25 = [(BMThirdPartyAppContentEvent *)&v36 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_uniqueId, a3);
    objc_storeStrong(&v26->_domainId, a4);
    objc_storeStrong(&v26->_bundleId, v30);
    objc_storeStrong(&v26->_personaId, v31);
    v26->_absoluteTimestamp = a7;
    objc_storeStrong(&v26->_title, v32);
    objc_storeStrong(&v26->_desc, a9);
    objc_storeStrong(&v26->_comment, a10);
    objc_storeStrong(&v26->_content, a11);
    objc_storeStrong(&v26->_contentProtection, a12);
  }

  return v26;
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
      [BMThirdPartyAppContentEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v2 = [(BMThirdPartyAppContentEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMThirdPartyAppContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMThirdPartyAppContentEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMThirdPartyAppContentEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMThirdPartyAppContentEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMThirdPartyAppContentEvent *)self initWithProtoData:v6];
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
  v2 = [(BMThirdPartyAppContentEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMThirdPartyAppContentEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& ([v5 hasBundleId]& 1) != 0)
      {
        v19 = [v5 uniqueId];
        v18 = [v5 domainId];
        v6 = [v5 bundleId];
        v7 = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        v10 = [v5 title];
        v11 = [v5 desc];
        v12 = [v5 comment];
        v13 = [v5 content];
        v14 = [v5 contentProtection];
        self = [(BMThirdPartyAppContentEvent *)self initWithUniqueId:v19 domainId:v18 bundleId:v6 personaId:v7 absoluteTimestamp:v10 title:v11 desc:v9 comment:v12 content:v13 contentProtection:v14];

        v15 = self;
LABEL_14:

        goto LABEL_15;
      }

      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [BMThirdPartyAppContentEvent initWithProto:v16];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMThirdPartyAppContentEvent initWithProto:v5];
      }
    }

    v15 = 0;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BMThirdPartyAppContentEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBThirdPartyAppContentEvent alloc] initWithData:v4];

    self = [(BMThirdPartyAppContentEvent *)self initWithProto:v5];
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
  v4 = [(BMThirdPartyAppContentEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  v5 = [(BMThirdPartyAppContentEvent *)self domainId];
  [v3 setDomainId:v5];

  v6 = [(BMThirdPartyAppContentEvent *)self bundleId];
  [v3 setBundleId:v6];

  v7 = [(BMThirdPartyAppContentEvent *)self personaId];
  [v3 setPersonaId:v7];

  [(BMThirdPartyAppContentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  [v3 setTitle:self->_title];
  [v3 setDesc:self->_desc];
  [v3 setComment:self->_comment];
  [v3 setContent:self->_content];
  [v3 setContentProtection:self->_contentProtection];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [(NSString *)self->_bundleId hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMThirdPartyAppContentEvent *)self proto];
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
  if (self->_uniqueId && self->_bundleId)
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