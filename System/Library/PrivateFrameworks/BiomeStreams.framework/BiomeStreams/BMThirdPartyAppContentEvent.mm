@interface BMThirdPartyAppContentEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMThirdPartyAppContentEvent)initWithCoder:(id)coder;
- (BMThirdPartyAppContentEvent)initWithProto:(id)proto;
- (BMThirdPartyAppContentEvent)initWithProtoData:(id)data;
- (BMThirdPartyAppContentEvent)initWithUniqueId:(id)id domainId:(id)domainId bundleId:(id)bundleId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title desc:(id)desc comment:(id)self0 content:(id)self1 contentProtection:(id)self2;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMThirdPartyAppContentEvent

- (BMThirdPartyAppContentEvent)initWithUniqueId:(id)id domainId:(id)domainId bundleId:(id)bundleId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title desc:(id)desc comment:(id)self0 content:(id)self1 contentProtection:(id)self2
{
  idCopy = id;
  domainIdCopy = domainId;
  bundleIdCopy = bundleId;
  bundleIdCopy2 = bundleId;
  personaIdCopy = personaId;
  personaIdCopy2 = personaId;
  titleCopy = title;
  titleCopy2 = title;
  descCopy = desc;
  commentCopy = comment;
  contentCopy = content;
  protectionCopy = protection;
  if (idCopy)
  {
    if (bundleIdCopy2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMThirdPartyAppContentEvent initWithUniqueId:a2 domainId:self bundleId:? personaId:? absoluteTimestamp:? title:? desc:? comment:? content:? contentProtection:?];
    if (bundleIdCopy2)
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
    objc_storeStrong(&v25->_uniqueId, id);
    objc_storeStrong(&v26->_domainId, domainId);
    objc_storeStrong(&v26->_bundleId, bundleIdCopy);
    objc_storeStrong(&v26->_personaId, personaIdCopy);
    v26->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v26->_title, titleCopy);
    objc_storeStrong(&v26->_desc, desc);
    objc_storeStrong(&v26->_comment, comment);
    objc_storeStrong(&v26->_content, content);
    objc_storeStrong(&v26->_contentProtection, protection);
  }

  return v26;
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
      [BMThirdPartyAppContentEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMThirdPartyAppContentEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMThirdPartyAppContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMThirdPartyAppContentEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMThirdPartyAppContentEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMThirdPartyAppContentEvent *)self initWithProtoData:v6];
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
  proto = [(BMThirdPartyAppContentEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMThirdPartyAppContentEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& ([v5 hasBundleId]& 1) != 0)
      {
        uniqueId = [v5 uniqueId];
        domainId = [v5 domainId];
        bundleId = [v5 bundleId];
        personaId = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        title = [v5 title];
        desc = [v5 desc];
        comment = [v5 comment];
        content = [v5 content];
        contentProtection = [v5 contentProtection];
        self = [(BMThirdPartyAppContentEvent *)self initWithUniqueId:uniqueId domainId:domainId bundleId:bundleId personaId:personaId absoluteTimestamp:title title:desc desc:v9 comment:comment content:content contentProtection:contentProtection];

        selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (BMThirdPartyAppContentEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBThirdPartyAppContentEvent alloc] initWithData:dataCopy];

    self = [(BMThirdPartyAppContentEvent *)self initWithProto:v5];
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
  uniqueId = [(BMThirdPartyAppContentEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  domainId = [(BMThirdPartyAppContentEvent *)self domainId];
  [v3 setDomainId:domainId];

  bundleId = [(BMThirdPartyAppContentEvent *)self bundleId];
  [v3 setBundleId:bundleId];

  personaId = [(BMThirdPartyAppContentEvent *)self personaId];
  [v3 setPersonaId:personaId];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    proto = [(BMThirdPartyAppContentEvent *)self proto];
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
  if (self->_uniqueId && self->_bundleId)
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