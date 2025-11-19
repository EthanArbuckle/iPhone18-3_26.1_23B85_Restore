@interface HDSummarySharingEntryUpdateNotificationStatusOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDSummarySharingEntryUpdateNotificationStatusOperation)init;
- (HDSummarySharingEntryUpdateNotificationStatusOperation)initWithCoder:(id)a3;
- (HDSummarySharingEntryUpdateNotificationStatusOperation)initWithInvitationUUID:(id)a3 notificationStatus:(int64_t)a4 dateModified:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDSummarySharingEntryUpdateNotificationStatusOperation

- (HDSummarySharingEntryUpdateNotificationStatusOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSummarySharingEntryUpdateNotificationStatusOperation)initWithInvitationUUID:(id)a3 notificationStatus:(int64_t)a4 dateModified:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HDSummarySharingEntryUpdateNotificationStatusOperation;
  v10 = [(HDSummarySharingEntryUpdateNotificationStatusOperation *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    invitationUUID = v10->_invitationUUID;
    v10->_invitationUUID = v11;

    v10->_notificationStatus = a4;
    v13 = [v9 copy];
    dateModified = v10->_dateModified;
    v10->_dateModified = v13;
  }

  return v10;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HDSummarySharingEntryEntity updateNotificationStatusForInvitiationWithUUID:self->_invitationUUID newNotificationStatus:self->_notificationStatus dateModified:self->_dateModified profile:v8 error:a5];
  if (v10)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__206;
    v20 = __Block_byref_object_dispose__206;
    v21 = 0;
    v11 = HDSummarySharingEntryPredicateForInvitationUUID(self->_invitationUUID);
    v12 = [v8 sharingEntryManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__HDSummarySharingEntryUpdateNotificationStatusOperation_performWithProfile_transaction_error___block_invoke;
    v15[3] = &unk_27861D1E8;
    v15[4] = &v16;
    v13 = [v12 enumerateCodableEntriesWithPredicate:v11 error:a5 handler:v15];

    if (v13)
    {
      objc_storeStrong(&self->_sharingEntry, v17[5]);
    }

    _Block_object_dispose(&v16, 8);
  }

  return v10;
}

uint64_t __95__HDSummarySharingEntryUpdateNotificationStatusOperation_performWithProfile_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sharingEntry];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (HDSummarySharingEntryUpdateNotificationStatusOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InvitationUUID"];
  v6 = [v4 decodeIntegerForKey:@"NotificationStatus"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateModified"];

  v8 = [(HDSummarySharingEntryUpdateNotificationStatusOperation *)self initWithInvitationUUID:v5 notificationStatus:v6 dateModified:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  invitationUUID = self->_invitationUUID;
  v5 = a3;
  [v5 encodeObject:invitationUUID forKey:@"InvitationUUID"];
  [v5 encodeInteger:self->_notificationStatus forKey:@"NotificationStatus"];
  [v5 encodeObject:self->_dateModified forKey:@"DateModified"];
}

@end