@interface BMRemindersContentEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMRemindersContentEvent)initWithCoder:(id)a3;
- (BMRemindersContentEvent)initWithProto:(id)a3;
- (BMRemindersContentEvent)initWithProtoData:(id)a3;
- (BMRemindersContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 title:(id)a7 notes:(id)a8 isAllDay:(BOOL)a9 completionDateTimestamp:(double)a10 dueDateTimestamp:(double)a11 priority:(int)a12 contentProtection:(id)a13;
- (BOOL)isCompleteWithContext:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMRemindersContentEvent

- (BMRemindersContentEvent)initWithUniqueId:(id)a3 domainId:(id)a4 personaId:(id)a5 absoluteTimestamp:(double)a6 title:(id)a7 notes:(id)a8 isAllDay:(BOOL)a9 completionDateTimestamp:(double)a10 dueDateTimestamp:(double)a11 priority:(int)a12 contentProtection:(id)a13
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v33 = a7;
  obj = a8;
  v25 = a8;
  v32 = a13;
  if (!v22)
  {
    [BMRemindersContentEvent initWithUniqueId:a2 domainId:self personaId:? absoluteTimestamp:? title:? notes:? isAllDay:? completionDateTimestamp:? dueDateTimestamp:? priority:? contentProtection:?];
  }

  v34.receiver = self;
  v34.super_class = BMRemindersContentEvent;
  v26 = [(BMRemindersContentEvent *)&v34 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_uniqueId, a3);
    objc_storeStrong(&v27->_domainId, a4);
    objc_storeStrong(&v27->_personaId, a5);
    v27->_absoluteTimestamp = a6;
    objc_storeStrong(&v27->_title, a7);
    objc_storeStrong(&v27->_notes, obj);
    v27->_isAllDay = a9;
    v27->_completionDateTimestamp = a10;
    v27->_dueDateTimestamp = a11;
    v27->_priority = a12;
    objc_storeStrong(&v27->_contentProtection, a13);
  }

  return v27;
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
      [BMRemindersContentEvent eventWithData:a4 dataVersion:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)jsonDict
{
  v2 = [(BMRemindersContentEvent *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMRemindersContentEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMRemindersContentEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"dat"];
}

- (BMRemindersContentEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E69C5D78];
  v5 = a3;
  v6 = [v4 robustDecodeObjectOfClass:objc_opt_class() forKey:@"dat" withCoder:v5 expectNonNull:1 errorDomain:@"BMStreamErrorDomain" errorCode:2 logHandle:0];

  if (v6)
  {
    self = [(BMRemindersContentEvent *)self initWithProtoData:v6];
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
  v2 = [(BMRemindersContentEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMRemindersContentEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([v5 hasUniqueId]&& [v5 hasAbsoluteTimestamp]&& [v5 hasIsAllDay]&& [v5 hasCompletionDateTimestamp]&& [v5 hasDueDateTimestamp]&& ([v5 hasPriority]& 1) != 0)
      {
        v23 = [v5 uniqueId];
        v6 = [v5 domainId];
        v7 = [v5 personaId];
        [v5 absoluteTimestamp];
        v9 = v8;
        v10 = [v5 title];
        v11 = [v5 notes];
        v12 = [v5 isAllDay];
        [v5 completionDateTimestamp];
        v14 = v13;
        [v5 dueDateTimestamp];
        v16 = v15;
        v17 = [v5 priority];
        v18 = [v5 contentProtection];
        LODWORD(v22) = v17;
        self = [(BMRemindersContentEvent *)self initWithUniqueId:v23 domainId:v6 personaId:v7 absoluteTimestamp:v10 title:v11 notes:v12 isAllDay:v9 completionDateTimestamp:v14 dueDateTimestamp:v16 priority:v22 contentProtection:v18];

        v19 = self;
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

    v19 = 0;
    goto LABEL_17;
  }

  v19 = 0;
LABEL_18:

  return v19;
}

- (BMRemindersContentEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBRemindersContentEvent alloc] initWithData:v4];

    self = [(BMRemindersContentEvent *)self initWithProto:v5];
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
  v4 = [(BMRemindersContentEvent *)self uniqueId];
  [v3 setUniqueId:v4];

  v5 = [(BMRemindersContentEvent *)self domainId];
  [v3 setDomainId:v5];

  v6 = [(BMRemindersContentEvent *)self personaId];
  [v3 setPersonaId:v6];

  [(BMRemindersContentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v7 = [(BMRemindersContentEvent *)self title];
  [v3 setTitle:v7];

  v8 = [(BMRemindersContentEvent *)self notes];
  [v3 setNotes:v8];

  [v3 setIsAllDay:{-[BMRemindersContentEvent isAllDay](self, "isAllDay")}];
  [(BMRemindersContentEvent *)self completionDateTimestamp];
  [v3 setCompletionDateTimestamp:?];
  [(BMRemindersContentEvent *)self dueDateTimestamp];
  [v3 setDueDateTimestamp:?];
  [v3 setPriority:{-[BMRemindersContentEvent priority](self, "priority")}];
  v9 = [(BMRemindersContentEvent *)self contentProtection];
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
    v6 = [(BMRemindersContentEvent *)self proto];
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
  uniqueId = self->_uniqueId;
  if (a4 && !uniqueId)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BMStreamErrorDomain" code:3 userInfo:0];
  }

  return uniqueId != 0;
}

@end