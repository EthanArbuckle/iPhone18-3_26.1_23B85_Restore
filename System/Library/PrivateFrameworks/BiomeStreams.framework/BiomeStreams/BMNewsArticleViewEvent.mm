@interface BMNewsArticleViewEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMNewsArticleViewEvent)initWithCoder:(id)coder;
- (BMNewsArticleViewEvent)initWithProto:(id)proto;
- (BMNewsArticleViewEvent)initWithProtoData:(id)data;
- (BMNewsArticleViewEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title content:(id)content summary:(id)summary publication:(id)self0 contentProtection:(id)self1;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMNewsArticleViewEvent

- (BMNewsArticleViewEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title content:(id)content summary:(id)summary publication:(id)self0 contentProtection:(id)self1
{
  idCopy = id;
  domainIdCopy = domainId;
  personaIdCopy = personaId;
  titleCopy = title;
  obj = content;
  contentCopy = content;
  summaryCopy = summary;
  summaryCopy2 = summary;
  publicationCopy = publication;
  protectionCopy = protection;
  if (idCopy)
  {
    if (contentCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [BMNewsArticleViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? summary:? publication:? contentProtection:?];
    if (summaryCopy2)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [BMNewsArticleViewEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? summary:? publication:? contentProtection:?];
  if (!contentCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (summaryCopy2)
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
    objc_storeStrong(&v24->_uniqueId, id);
    objc_storeStrong(&v25->_domainId, domainId);
    objc_storeStrong(&v25->_personaId, personaId);
    v25->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v25->_title, title);
    objc_storeStrong(&v25->_content, obj);
    objc_storeStrong(&v25->_summary, summaryCopy);
    objc_storeStrong(&v25->_publication, publication);
    objc_storeStrong(&v25->_contentProtection, protection);
  }

  return v25;
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
      [BMNewsArticleViewEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMNewsArticleViewEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMNewsArticleViewEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMNewsArticleViewEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMNewsArticleViewEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMNewsArticleViewEvent *)self initWithProtoData:v6];
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
  proto = [(BMNewsArticleViewEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMNewsArticleViewEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& [v5 hasContent]&& ([v5 hasSummary]& 1) != 0)
      {
        uniqueId = [v5 uniqueId];
        domainId = [v5 domainId];
        personaId = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        title = [v5 title];
        content = [v5 content];
        summary = [v5 summary];
        publication = [v5 publication];
        contentProtection = [v5 contentProtection];
        self = [(BMNewsArticleViewEvent *)self initWithUniqueId:uniqueId domainId:domainId personaId:personaId absoluteTimestamp:title title:content content:summary summary:v9 publication:publication contentProtection:contentProtection];

        selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (BMNewsArticleViewEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBNewsArticleViewEvent alloc] initWithData:dataCopy];

    self = [(BMNewsArticleViewEvent *)self initWithProto:v5];
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
  uniqueId = [(BMNewsArticleViewEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  domainId = [(BMNewsArticleViewEvent *)self domainId];
  [v3 setDomainId:domainId];

  personaId = [(BMNewsArticleViewEvent *)self personaId];
  [v3 setPersonaId:personaId];

  [(BMNewsArticleViewEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  [v3 setTitle:self->_title];
  [v3 setContent:self->_content];
  [v3 setSummary:self->_summary];
  [v3 setPublication:self->_publication];
  contentProtection = [(BMNewsArticleViewEvent *)self contentProtection];
  [v3 setContentProtection:contentProtection];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    proto = [(BMNewsArticleViewEvent *)self proto];
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
  if (self->_uniqueId && self->_content && self->_summary)
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