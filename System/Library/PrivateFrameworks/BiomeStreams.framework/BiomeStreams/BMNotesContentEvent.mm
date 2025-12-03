@interface BMNotesContentEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMNotesContentEvent)initWithCoder:(id)coder;
- (BMNotesContentEvent)initWithProto:(id)proto;
- (BMNotesContentEvent)initWithProtoData:(id)data;
- (BMNotesContentEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title content:(id)content contentProtection:(id)protection;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMNotesContentEvent

- (BMNotesContentEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title content:(id)content contentProtection:(id)protection
{
  idCopy = id;
  domainIdCopy = domainId;
  personaIdCopy = personaId;
  titleCopy = title;
  contentCopy = content;
  protectionCopy = protection;
  if (idCopy)
  {
    if (contentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BMNotesContentEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? content:? contentProtection:?];
    if (contentCopy)
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
    objc_storeStrong(&v20->_uniqueId, id);
    objc_storeStrong(&v21->_domainId, domainId);
    objc_storeStrong(&v21->_personaId, personaId);
    v21->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v21->_title, title);
    objc_storeStrong(&v21->_content, content);
    objc_storeStrong(&v21->_contentProtection, protection);
  }

  return v21;
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
      [BMNotesContentEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMNotesContentEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMNotesContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMNotesContentEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMNotesContentEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMNotesContentEvent *)self initWithProtoData:v6];
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
  proto = [(BMNotesContentEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMNotesContentEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& ([v5 hasContent]& 1) != 0)
      {
        uniqueId = [v5 uniqueId];
        domainId = [v5 domainId];
        personaId = [v5 personaId];
        [v5 absoluteTimestamp];
        v10 = v9;
        title = [v5 title];
        content = [v5 content];
        contentProtection = [v5 contentProtection];
        self = [(BMNotesContentEvent *)self initWithUniqueId:uniqueId domainId:domainId personaId:personaId absoluteTimestamp:title title:content content:contentProtection contentProtection:v10];

        selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (BMNotesContentEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBNotesContentEvent alloc] initWithData:dataCopy];

    self = [(BMNotesContentEvent *)self initWithProto:v5];
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
  uniqueId = [(BMNotesContentEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  domainId = [(BMNotesContentEvent *)self domainId];
  [v3 setDomainId:domainId];

  personaId = [(BMNotesContentEvent *)self personaId];
  [v3 setPersonaId:personaId];

  [(BMNotesContentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  title = [(BMNotesContentEvent *)self title];
  [v3 setTitle:title];

  content = [(BMNotesContentEvent *)self content];
  [v3 setContent:content];

  contentProtection = [(BMNotesContentEvent *)self contentProtection];
  [v3 setContentProtection:contentProtection];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueId hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    proto = [(BMNotesContentEvent *)self proto];
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
  if (self->_uniqueId && self->_content)
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