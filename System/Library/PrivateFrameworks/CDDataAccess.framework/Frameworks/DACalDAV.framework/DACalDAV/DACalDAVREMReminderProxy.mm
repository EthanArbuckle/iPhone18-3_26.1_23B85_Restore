@interface DACalDAVREMReminderProxy
- (DACalDAVREMReminderProxy)initWithReminder:(id)a3;
- (NSString)description;
- (void)updatePropertiesWithReminder:(id)a3;
@end

@implementation DACalDAVREMReminderProxy

- (DACalDAVREMReminderProxy)initWithReminder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DACalDAVREMReminderProxy;
  v5 = [(DACalDAVREMReminderProxy *)&v8 init];
  if (v5)
  {
    v6 = [v4 objectID];
    [(DACalDAVREMReminderProxy *)v5 setObjectID:v6];

    [(DACalDAVREMReminderProxy *)v5 updatePropertiesWithReminder:v4];
  }

  return v5;
}

- (void)updatePropertiesWithReminder:(id)a3
{
  v5 = a3;
  v11 = v5;
  if (!v5)
  {
    [(DACalDAVREMReminderProxy *)a2 updatePropertiesWithReminder:?];
    v5 = 0;
  }

  v6 = [v5 objectID];
  v7 = [(DACalDAVREMReminderProxy *)self objectID];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [(DACalDAVREMReminderProxy *)a2 updatePropertiesWithReminder:?];
  }

  v9 = [v11 daCalendarItemUniqueIdentifier];
  [(DACalDAVREMReminderProxy *)self setDaCalendarItemUniqueIdentifier:v9];

  v10 = [v11 externalModificationTag];
  [(DACalDAVREMReminderProxy *)self setExternalModificationTag:v10];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DACalDAVREMReminderProxy *)self objectID];
  v6 = [(DACalDAVREMReminderProxy *)self daCalendarItemUniqueIdentifier];
  v7 = [(DACalDAVREMReminderProxy *)self externalModificationTag];
  v8 = [v3 stringWithFormat:@"<%@: %p, objectID: %@, UID: %@, etag: %@>", v4, self, v5, v6, v7];

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