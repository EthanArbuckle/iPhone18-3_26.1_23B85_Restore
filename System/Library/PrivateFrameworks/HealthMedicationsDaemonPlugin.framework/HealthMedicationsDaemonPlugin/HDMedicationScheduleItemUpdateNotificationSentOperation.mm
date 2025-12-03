@interface HDMedicationScheduleItemUpdateNotificationSentOperation
- (HDMedicationScheduleItemUpdateNotificationSentOperation)init;
- (HDMedicationScheduleItemUpdateNotificationSentOperation)initWithCoder:(id)coder;
- (HDMedicationScheduleItemUpdateNotificationSentOperation)initWithScheduleItemIdentifier:(id)identifier notificationSent:(BOOL)sent;
- (void)encodeWithCoder:(id)coder;
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

- (HDMedicationScheduleItemUpdateNotificationSentOperation)initWithScheduleItemIdentifier:(id)identifier notificationSent:(BOOL)sent
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HDMedicationScheduleItemUpdateNotificationSentOperation;
  v8 = [(HDMedicationScheduleItemUpdateNotificationSentOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemIdentifier, identifier);
    v9->_notificationSent = sent;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  itemIdentifier = self->_itemIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:itemIdentifier forKey:@"item_identifier"];
  [coderCopy encodeBool:self->_notificationSent forKey:@"notification_sent"];
}

- (HDMedicationScheduleItemUpdateNotificationSentOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HDMedicationScheduleItemUpdateNotificationSentOperation;
  v5 = [(HDMedicationScheduleItemUpdateNotificationSentOperation *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"item_identifier"];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;

    v5->_notificationSent = [coderCopy decodeBoolForKey:@"notification_sent"];
  }

  return v5;
}

@end