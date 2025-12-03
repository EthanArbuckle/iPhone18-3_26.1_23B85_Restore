@interface DACalDAVREMReminderProxy
- (DACalDAVREMReminderProxy)initWithReminder:(id)reminder;
- (NSString)description;
- (void)updatePropertiesWithReminder:(id)reminder;
@end

@implementation DACalDAVREMReminderProxy

- (DACalDAVREMReminderProxy)initWithReminder:(id)reminder
{
  reminderCopy = reminder;
  v8.receiver = self;
  v8.super_class = DACalDAVREMReminderProxy;
  v5 = [(DACalDAVREMReminderProxy *)&v8 init];
  if (v5)
  {
    objectID = [reminderCopy objectID];
    [(DACalDAVREMReminderProxy *)v5 setObjectID:objectID];

    [(DACalDAVREMReminderProxy *)v5 updatePropertiesWithReminder:reminderCopy];
  }

  return v5;
}

- (void)updatePropertiesWithReminder:(id)reminder
{
  reminderCopy = reminder;
  v11 = reminderCopy;
  if (!reminderCopy)
  {
    [(DACalDAVREMReminderProxy *)a2 updatePropertiesWithReminder:?];
    reminderCopy = 0;
  }

  objectID = [reminderCopy objectID];
  objectID2 = [(DACalDAVREMReminderProxy *)self objectID];
  v8 = [objectID isEqual:objectID2];

  if ((v8 & 1) == 0)
  {
    [(DACalDAVREMReminderProxy *)a2 updatePropertiesWithReminder:?];
  }

  daCalendarItemUniqueIdentifier = [v11 daCalendarItemUniqueIdentifier];
  [(DACalDAVREMReminderProxy *)self setDaCalendarItemUniqueIdentifier:daCalendarItemUniqueIdentifier];

  externalModificationTag = [v11 externalModificationTag];
  [(DACalDAVREMReminderProxy *)self setExternalModificationTag:externalModificationTag];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objectID = [(DACalDAVREMReminderProxy *)self objectID];
  daCalendarItemUniqueIdentifier = [(DACalDAVREMReminderProxy *)self daCalendarItemUniqueIdentifier];
  externalModificationTag = [(DACalDAVREMReminderProxy *)self externalModificationTag];
  v8 = [v3 stringWithFormat:@"<%@: %p, objectID: %@, UID: %@, etag: %@>", v4, self, objectID, daCalendarItemUniqueIdentifier, externalModificationTag];

  return v8;
}

- (void)updatePropertiesWithReminder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DACalDAVREMReminderProxy.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"reminder"}];
}

- (void)updatePropertiesWithReminder:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DACalDAVREMReminderProxy.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"[reminder.objectID isEqual:self.objectID]"}];
}

@end