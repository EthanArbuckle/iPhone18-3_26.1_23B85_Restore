@interface SGRealtimeReminder
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRealtimeReminder:(id)reminder;
- (NSString)description;
- (SGRealtimeReminder)initWithCoder:(id)coder;
- (SGRealtimeReminder)initWithReminder:(id)reminder notes:(id)notes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGRealtimeReminder

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGRealtimeReminder reminder='%@'>", self->_reminder];

  return v2;
}

- (BOOL)isEqualToRealtimeReminder:(id)reminder
{
  reminderCopy = reminder;
  v5 = self->_reminder;
  v6 = v5;
  if (v5 == reminderCopy[2])
  {
  }

  else
  {
    v7 = [(SGReminder *)v5 isEqual:?];

    if (!v7)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_notes;
  v10 = v9;
  if (v9 == reminderCopy[3])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGRealtimeReminder *)self isEqualToRealtimeReminder:v5];
  }

  return v6;
}

- (SGRealtimeReminder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SGRealtimeReminder;
  v5 = [(SGRealtimeReminder *)&v13 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"reminder"];
    reminder = v5->_reminder;
    v5->_reminder = v7;

    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"notes"];
    notes = v5->_notes;
    v5->_notes = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reminder = self->_reminder;
  coderCopy = coder;
  [coderCopy encodeObject:reminder forKey:@"reminder"];
  [coderCopy encodeObject:self->_notes forKey:@"notes"];
}

- (SGRealtimeReminder)initWithReminder:(id)reminder notes:(id)notes
{
  reminderCopy = reminder;
  notesCopy = notes;
  v12.receiver = self;
  v12.super_class = SGRealtimeReminder;
  v9 = [(SGRealtimeReminder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reminder, reminder);
    objc_storeStrong(&v10->_notes, notes);
    v10->_extractionSource = 0;
  }

  return v10;
}

@end