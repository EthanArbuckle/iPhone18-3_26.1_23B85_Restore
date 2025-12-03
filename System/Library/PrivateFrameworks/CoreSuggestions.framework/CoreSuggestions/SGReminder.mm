@interface SGReminder
+ (id)describeReminderDueLocationTrigger:(unsigned __int8)trigger;
+ (id)describeReminderDueLocationType:(unsigned __int8)type;
+ (id)describeReminderStatus:(unsigned __int8)status;
- (BOOL)isAllDay;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReminder:(id)reminder;
- (SGReminder)initWithCoder:(id)coder;
- (SGReminder)initWithRecordId:(id)id origin:(id)origin title:(id)title dueDateComponents:(id)components dueLocationType:(unsigned __int8)type dueLocation:(id)location dueLocationTrigger:(unsigned __int8)trigger sourceURL:(id)self0 reminderStatus:(unsigned __int8)self1 opaqueKey:(id)self2 uniqueKey:(id)self3 contactIdentifier:(id)self4 creationDate:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)loggingIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGReminder

- (id)loggingIdentifier
{
  p_opaqueKey = &self->_opaqueKey;
  if (self->_opaqueKey || (p_opaqueKey = &self->_uniqueKey, self->_uniqueKey))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%tu", -[NSString hash](*p_opaqueKey, "hash")];
  }

  else
  {
    v3 = &stru_1F385B250;
  }

  if ([(__CFString *)v3 length]> 0xC)
  {
    v4 = [(__CFString *)v3 substringWithRange:0, 12];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = @"SGEntityTypePseudoReminder";
  [v3 setObject:@"SGEntityTypePseudoReminder" forKeyedSubscript:@"type"];

  [v3 setObject:self->_title forKeyedSubscript:@"title"];
  date = [(NSDateComponents *)self->_dueDateComponents date];
  if (date)
  {
    v6 = MEMORY[0x1E696AC80];
    timeZone = [(NSDateComponents *)self->_dueDateComponents timeZone];
    v8 = [v6 stringFromDate:date timeZone:timeZone formatOptions:1907];
    [v3 setObject:v8 forKeyedSubscript:@"dueDate"];
  }

  if (self->_dueLocationType)
  {
    v9 = [objc_opt_class() describeReminderDueLocationType:self->_dueLocationType];
    [v3 setObject:v9 forKeyedSubscript:@"dueLocationType"];
  }

  label = [(SGLocation *)self->_dueLocation label];
  [v3 setObject:label forKeyedSubscript:@"dueLocation"];

  if (self->_dueLocationTrigger)
  {
    v11 = [objc_opt_class() describeReminderDueLocationTrigger:self->_dueLocationTrigger];
    [v3 setObject:v11 forKeyedSubscript:@"dueLocationTrigger"];
  }

  v12 = [objc_opt_class() describeReminderStatus:self->_reminderStatus];
  [v3 setObject:v12 forKeyedSubscript:@"SGReminderStatus"];

  return v3;
}

- (BOOL)isEqualToReminder:(id)reminder
{
  reminderCopy = reminder;
  if (!reminderCopy)
  {
    goto LABEL_31;
  }

  v5 = self->_title;
  v6 = v5;
  if (v5 == reminderCopy[4])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v8 = self->_dueDateComponents;
  v9 = v8;
  if (v8 == reminderCopy[5])
  {
  }

  else
  {
    v10 = [(NSDateComponents *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  dueLocationType = self->_dueLocationType;
  if (dueLocationType != [reminderCopy dueLocationType])
  {
    goto LABEL_31;
  }

  v12 = self->_dueLocation;
  v13 = v12;
  if (v12 == reminderCopy[6])
  {
  }

  else
  {
    v14 = [(SGLocation *)v12 isEqual:?];

    if (!v14)
    {
      goto LABEL_31;
    }
  }

  dueLocationTrigger = self->_dueLocationTrigger;
  if (dueLocationTrigger != [reminderCopy dueLocationTrigger])
  {
    goto LABEL_31;
  }

  v16 = self->_sourceURL;
  v17 = v16;
  if (v16 == reminderCopy[7])
  {
  }

  else
  {
    v18 = [(NSURL *)v16 isEqual:?];

    if ((v18 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  reminderStatus = self->_reminderStatus;
  if (reminderStatus != [reminderCopy reminderStatus])
  {
LABEL_31:
    v29 = 0;
    goto LABEL_32;
  }

  v20 = self->_opaqueKey;
  v21 = v20;
  if (v20 == reminderCopy[9])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v23 = self->_uniqueKey;
  v24 = v23;
  if (v23 == reminderCopy[10])
  {
  }

  else
  {
    v25 = [(NSString *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v26 = self->_contactIdentifier;
  v27 = v26;
  if (v26 == reminderCopy[11])
  {
  }

  else
  {
    v28 = [(NSString *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v31 = self->_creationDate;
  v32 = v31;
  if (v31 == reminderCopy[8])
  {
    v29 = 1;
  }

  else
  {
    v29 = [(NSDate *)v31 isEqual:?];
  }

LABEL_32:
  return v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGReminder *)self isEqualToReminder:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  recordId = [(SGObject *)self recordId];
  origin = [(SGObject *)self origin];
  title = self->_title;
  v9 = [(NSDateComponents *)self->_dueDateComponents copyWithZone:zone];
  dueLocationType = self->_dueLocationType;
  v11 = [(SGLocation *)self->_dueLocation copyWithZone:zone];
  dueLocationTrigger = self->_dueLocationTrigger;
  v13 = [(NSURL *)self->_sourceURL copyWithZone:zone];
  contactIdentifier = self->_contactIdentifier;
  LOBYTE(v18) = self->_reminderStatus;
  LOBYTE(v17) = dueLocationTrigger;
  v15 = [v5 initWithRecordId:recordId origin:origin title:title dueDateComponents:v9 dueLocationType:dueLocationType dueLocation:v11 dueLocationTrigger:v17 sourceURL:v13 reminderStatus:v18 opaqueKey:self->_opaqueKey uniqueKey:self->_uniqueKey contactIdentifier:contactIdentifier creationDate:self->_creationDate];

  return v15;
}

- (SGReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = SGReminder;
  v6 = [(SGObject *)&v35 initWithCoder:coderCopy];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"title"];

    if (v8)
    {
      v9 = v8;
      title = v6->_title;
      v6->_title = v9;
    }

    else
    {
      title = [MEMORY[0x1E696AAA8] currentHandler];
      [title handleFailureInMethod:a2 object:v6 file:@"SGReminder.m" lineNumber:102 description:{@"nonnull property %s *%s was null when decoded", "NSString", "title"}];
    }

    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"dueDateComponents"];
    dueDateComponents = v6->_dueDateComponents;
    v6->_dueDateComponents = v12;

    v6->_dueLocationType = [coderCopy decodeInt64ForKey:@"dueLocationType"];
    v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"dueLocation"];
    dueLocation = v6->_dueLocation;
    v6->_dueLocation = v15;

    v6->_dueLocationTrigger = [coderCopy decodeInt64ForKey:@"dueLocationTrigger"];
    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"sourceURL"];

    if (v18)
    {
      v19 = v18;
      sourceURL = v6->_sourceURL;
      v6->_sourceURL = v19;
    }

    else
    {
      sourceURL = [MEMORY[0x1E696AAA8] currentHandler];
      [sourceURL handleFailureInMethod:a2 object:v6 file:@"SGReminder.m" lineNumber:107 description:{@"nonnull property %s *%s was null when decoded", "NSURL", "sourceURL"}];
    }

    v6->_reminderStatus = [coderCopy decodeInt64ForKey:@"reminderStatus"];
    v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"opaqueKey"];
    opaqueKey = v6->_opaqueKey;
    v6->_opaqueKey = v22;

    v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"uniqueKey"];
    uniqueKey = v6->_uniqueKey;
    v6->_uniqueKey = v25;

    v27 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"contactIdentifier"];
    contactIdentifier = v6->_contactIdentifier;
    v6->_contactIdentifier = v28;

    v30 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"creationDate"];

    if (v31)
    {
      v32 = v31;
      creationDate = v6->_creationDate;
      v6->_creationDate = v32;
    }

    else
    {
      creationDate = [MEMORY[0x1E696AAA8] currentHandler];
      [creationDate handleFailureInMethod:a2 object:v6 file:@"SGReminder.m" lineNumber:112 description:{@"nonnull property %s *%s was null when decoded", "NSDate", "creationDate"}];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SGReminder;
  coderCopy = coder;
  [(SGObject *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_title forKey:{@"title", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_dueDateComponents forKey:@"dueDateComponents"];
  [coderCopy encodeInt64:self->_dueLocationType forKey:@"dueLocationType"];
  [coderCopy encodeObject:self->_dueLocation forKey:@"dueLocation"];
  [coderCopy encodeInt64:self->_dueLocationTrigger forKey:@"dueLocationTrigger"];
  [coderCopy encodeObject:self->_sourceURL forKey:@"sourceURL"];
  [coderCopy encodeInt64:self->_reminderStatus forKey:@"reminderStatus"];
  [coderCopy encodeObject:self->_opaqueKey forKey:@"opaqueKey"];
  [coderCopy encodeObject:self->_uniqueKey forKey:@"uniqueKey"];
  [coderCopy encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_opaqueKey hash]- v3 + 32 * v3;
  return [(NSString *)self->_uniqueKey hash]- v4 + 32 * v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  title = self->_title;
  date = [(NSDateComponents *)self->_dueDateComponents date];
  v6 = [v3 initWithFormat:@"<SGReminder '%@' dueDate: %@>", title, date];

  return v6;
}

- (BOOL)isAllDay
{
  dueDateComponents = self->_dueDateComponents;
  if (dueDateComponents)
  {
    LOBYTE(dueDateComponents) = [(NSDateComponents *)dueDateComponents hour]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)self->_dueDateComponents minute]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)self->_dueDateComponents second]== 0x7FFFFFFFFFFFFFFFLL && [(NSDateComponents *)self->_dueDateComponents nanosecond]== 0x7FFFFFFFFFFFFFFFLL;
  }

  return dueDateComponents;
}

- (SGReminder)initWithRecordId:(id)id origin:(id)origin title:(id)title dueDateComponents:(id)components dueLocationType:(unsigned __int8)type dueLocation:(id)location dueLocationTrigger:(unsigned __int8)trigger sourceURL:(id)self0 reminderStatus:(unsigned __int8)self1 opaqueKey:(id)self2 uniqueKey:(id)self3 contactIdentifier:(id)self4 creationDate:(id)self5
{
  titleCopy = title;
  componentsCopy = components;
  locationCopy = location;
  lCopy = l;
  keyCopy = key;
  uniqueKeyCopy = uniqueKey;
  identifierCopy = identifier;
  dateCopy = date;
  v33.receiver = self;
  v33.super_class = SGReminder;
  v23 = [(SGObject *)&v33 initWithRecordId:id origin:origin];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_title, title);
    objc_storeStrong(&v24->_dueDateComponents, components);
    v24->_dueLocationType = type;
    objc_storeStrong(&v24->_dueLocation, location);
    v24->_dueLocationTrigger = trigger;
    objc_storeStrong(&v24->_sourceURL, l);
    v24->_reminderStatus = status;
    objc_storeStrong(&v24->_opaqueKey, key);
    objc_storeStrong(&v24->_uniqueKey, uniqueKey);
    objc_storeStrong(&v24->_contactIdentifier, identifier);
    objc_storeStrong(&v24->_creationDate, date);
  }

  return v24;
}

+ (id)describeReminderDueLocationType:(unsigned __int8)type
{
  if ((type - 1) > 3u)
  {
    return @"ReminderDueLocationTypeUnknown";
  }

  else
  {
    return off_1E7EFAD68[(type - 1)];
  }
}

+ (id)describeReminderDueLocationTrigger:(unsigned __int8)trigger
{
  v3 = @"ReminderDueLocationTriggerUnknown";
  if (trigger == 1)
  {
    v3 = @"ReminderDueLocationTriggerEnter";
  }

  if (trigger == 2)
  {
    return @"ReminderDueLocationTriggerLeave";
  }

  else
  {
    return v3;
  }
}

+ (id)describeReminderStatus:(unsigned __int8)status
{
  if ((status - 1) > 2)
  {
    return @"ReminderStatusUnknown";
  }

  else
  {
    return off_1E7EFAD50[(status - 1)];
  }
}

@end