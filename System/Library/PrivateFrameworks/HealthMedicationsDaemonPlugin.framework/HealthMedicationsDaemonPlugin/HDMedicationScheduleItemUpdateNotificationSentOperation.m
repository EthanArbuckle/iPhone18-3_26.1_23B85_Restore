@interface HDMedicationScheduleItemUpdateNotificationSentOperation
- (HDMedicationScheduleItemUpdateNotificationSentOperation)init;
- (HDMedicationScheduleItemUpdateNotificationSentOperation)initWithCoder:(id)a3;
- (HDMedicationScheduleItemUpdateNotificationSentOperation)initWithScheduleItemIdentifier:(id)a3 notificationSent:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDMedicationScheduleItemUpdateNotificationSentOperation

- (HDMedicationScheduleItemUpdateNotificationSentOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDMedicationScheduleItemUpdateNotificationSentOperation)initWithScheduleItemIdentifier:(id)a3 notificationSent:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HDMedicationScheduleItemUpdateNotificationSentOperation;
  v8 = [(HDMedicationScheduleItemUpdateNotificationSentOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemIdentifier, a3);
    v9->_notificationSent = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  itemIdentifier = self->_itemIdentifier;
  v5 = a3;
  [v5 encodeObject:itemIdentifier forKey:@"item_identifier"];
  [v5 encodeBool:self->_notificationSent forKey:@"notification_sent"];
}

- (HDMedicationScheduleItemUpdateNotificationSentOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDMedicationScheduleItemUpdateNotificationSentOperation;
  v5 = [(HDMedicationScheduleItemUpdateNotificationSentOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"item_identifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v5->_notificationSent = [v4 decodeBoolForKey:@"notification_sent"];
  }

  return v5;
}

@end