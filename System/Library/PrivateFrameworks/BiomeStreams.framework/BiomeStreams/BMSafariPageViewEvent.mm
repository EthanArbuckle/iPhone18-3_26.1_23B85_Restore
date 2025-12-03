@interface BMSafariPageViewEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSafariPageViewEvent)initWithCoder:(id)coder;
- (BMSafariPageViewEvent)initWithProto:(id)proto;
- (BMSafariPageViewEvent)initWithProtoData:(id)data;
- (BMSafariPageViewEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title content:(id)content contentIsReaderText:(BOOL)text url:(id)self0 contentProtection:(id)self1;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMSafariPageViewEvent

- (BMSafariPageViewEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title content:(id)content contentIsReaderText:(BOOL)text url:(id)self0 contentProtection:(id)self1
{
  idCopy = id;
  domainIdCopy = domainId;
  personaIdCopy = personaId;
  titleCopy = title;
  obj = content;
  contentCopy = content;
  urlCopy = url;
  protectionCopy = protection;
  if (idCopy)
  {
    if (contentCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [BMSafariPageViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? contentIsReaderText:? url:? contentProtection:?];
    if (urlCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [BMSafariPageViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? contentIsReaderText:? url:? contentProtection:?];
  if (!contentCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (urlCopy)
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
    objc_storeStrong(&v22->_uniqueId, id);
    objc_storeStrong(&v23->_personaId, personaId);
    objc_storeStrong(&v23->_domainId, domainId);
    v23->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v23->_title, title);
    objc_storeStrong(&v23->_content, obj);
    v23->_contentIsReaderText = text;
    objc_storeStrong(&v23->_url, url);
    objc_storeStrong(&v23->_contentProtection, protection);
  }

  return v23;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMSafariPageViewEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMSafariPageViewEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMSafariPageViewEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMSafariPageViewEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMSafariPageViewEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMSafariPageViewEvent *)self initWithProtoData:v6];
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
  proto = [(BMSafariPageViewEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSafariPageViewEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(BMSafariPageViewEvent *)v5 initWithProto:v20, v21, v22, v23, v24, v25, v26];
      }

      selfCopy = 0;
      goto LABEL_19;
    }

    v5 = protoCopy;
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
          uniqueId = [v5 uniqueId];
          domainId = [v5 domainId];
          personaId = [v5 personaId];
          [v5 absoluteTimestamp];
          v14 = v13;
          title = [v5 title];
          content = [v5 content];
          contentIsReaderText = [v5 contentIsReaderText];
          contentProtection = [v5 contentProtection];
          self = [(BMSafariPageViewEvent *)self initWithUniqueId:uniqueId domainId:domainId personaId:personaId absoluteTimestamp:title title:content content:contentIsReaderText contentIsReaderText:v14 url:v10 contentProtection:contentProtection];

          selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

- (BMSafariPageViewEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSafariPageViewEvent alloc] initWithData:dataCopy];

    self = [(BMSafariPageViewEvent *)self initWithProto:v5];
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
  uniqueId = [(BMSafariPageViewEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  domainId = [(BMSafariPageViewEvent *)self domainId];
  [v3 setDomainId:domainId];

  personaId = [(BMSafariPageViewEvent *)self personaId];
  [v3 setPersonaId:personaId];

  [(BMSafariPageViewEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  [v3 setTitle:self->_title];
  [v3 setContent:self->_content];
  [v3 setContentIsReaderText:self->_contentIsReaderText];
  absoluteString = [(NSURL *)self->_url absoluteString];
  [v3 setUrl:absoluteString];

  contentProtection = [(BMSafariPageViewEvent *)self contentProtection];
  [v3 setContentProtection:contentProtection];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v5 = [v4 hash];
  absoluteString = [(NSURL *)self->_url absoluteString];
  v7 = v3 ^ [absoluteString hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    proto = [(BMSafariPageViewEvent *)self proto];
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
  if (self->_uniqueId && self->_content && self->_url)
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