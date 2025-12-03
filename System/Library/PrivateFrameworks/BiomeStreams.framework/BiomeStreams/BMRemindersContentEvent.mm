@interface BMRemindersContentEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMRemindersContentEvent)initWithCoder:(id)coder;
- (BMRemindersContentEvent)initWithProto:(id)proto;
- (BMRemindersContentEvent)initWithProtoData:(id)data;
- (BMRemindersContentEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title notes:(id)notes isAllDay:(BOOL)day completionDateTimestamp:(double)self0 dueDateTimestamp:(double)self1 priority:(int)self2 contentProtection:(id)self3;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMRemindersContentEvent

- (BMRemindersContentEvent)initWithUniqueId:(id)id domainId:(id)domainId personaId:(id)personaId absoluteTimestamp:(double)timestamp title:(id)title notes:(id)notes isAllDay:(BOOL)day completionDateTimestamp:(double)self0 dueDateTimestamp:(double)self1 priority:(int)self2 contentProtection:(id)self3
{
  idCopy = id;
  domainIdCopy = domainId;
  personaIdCopy = personaId;
  titleCopy = title;
  obj = notes;
  notesCopy = notes;
  protectionCopy = protection;
  if (!idCopy)
  {
    [BMRemindersContentEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? notes:? isAllDay:? completionDateTimestamp:? dueDateTimestamp:? priority:? contentProtection:?];
  }

  v34.receiver = self;
  v34.super_class = BMRemindersContentEvent;
  v26 = [(BMRemindersContentEvent *)&v34 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_uniqueId, id);
    objc_storeStrong(&v27->_domainId, domainId);
    objc_storeStrong(&v27->_personaId, personaId);
    v27->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v27->_title, title);
    objc_storeStrong(&v27->_notes, obj);
    v27->_isAllDay = day;
    v27->_completionDateTimestamp = dateTimestamp;
    v27->_dueDateTimestamp = dueDateTimestamp;
    v27->_priority = priority;
    objc_storeStrong(&v27->_contentProtection, protection);
  }

  return v27;
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
      [BMRemindersContentEvent eventWithData:version dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  proto = [(BMRemindersContentEvent *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMRemindersContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (!v4)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMRemindersContentEvent *)v5 json];
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMRemindersContentEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"dat"];
}

- (BMRemindersContentEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E69C5D78];
  coderCopy = coder;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:coderCopy expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMRemindersContentEvent *)self initWithProtoData:v6];
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
  proto = [(BMRemindersContentEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMRemindersContentEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& [v5 hasIsAllDay]&& [v5 hasCompletionDateTimestamp]&& [v5 hasDueDateTimestamp]&& ([v5 hasPriority]& 1) != 0)
      {
        uniqueId = [v5 uniqueId];
        domainId = [v5 domainId];
        personaId = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        title = [v5 title];
        notes = [v5 notes];
        isAllDay = [v5 isAllDay];
        [v5 completionDateTimestamp];
        v14 = v13;
        [v5 dueDateTimestamp];
        v16 = v15;
        priority = [v5 priority];
        contentProtection = [v5 contentProtection];
        LODWORD(v22) = priority;
        self = [(BMRemindersContentEvent *)self initWithUniqueId:uniqueId domainId:domainId personaId:personaId absoluteTimestamp:title title:notes notes:isAllDay isAllDay:v9 completionDateTimestamp:v14 dueDateTimestamp:v16 priority:v22 contentProtection:contentProtection];

        selfCopy = self;
LABEL_17:

        goto LABEL_18;
      }

      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [BMRemindersContentEvent initWithProto:v20];
      }
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMRemindersContentEvent initWithProto:v5];
      }
    }

    selfCopy = 0;
    goto LABEL_17;
  }

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

- (BMRemindersContentEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBRemindersContentEvent alloc] initWithData:dataCopy];

    self = [(BMRemindersContentEvent *)self initWithProto:v5];
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
  uniqueId = [(BMRemindersContentEvent *)self uniqueId];
  [v3 setUniqueId:uniqueId];

  domainId = [(BMRemindersContentEvent *)self domainId];
  [v3 setDomainId:domainId];

  personaId = [(BMRemindersContentEvent *)self personaId];
  [v3 setPersonaId:personaId];

  [(BMRemindersContentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  title = [(BMRemindersContentEvent *)self title];
  [v3 setTitle:title];

  notes = [(BMRemindersContentEvent *)self notes];
  [v3 setNotes:notes];

  [v3 setIsAllDay:{-[BMRemindersContentEvent isAllDay](self, "isAllDay")}];
  [(BMRemindersContentEvent *)self completionDateTimestamp];
  [v3 setCompletionDateTimestamp:?];
  [(BMRemindersContentEvent *)self dueDateTimestamp];
  [v3 setDueDateTimestamp:?];
  [v3 setPriority:{-[BMRemindersContentEvent priority](self, "priority")}];
  contentProtection = [(BMRemindersContentEvent *)self contentProtection];
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
    proto = [(BMRemindersContentEvent *)self proto];
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
  uniqueId = self->_uniqueId;
  if (error && !uniqueId)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return uniqueId != 0;
}

@end