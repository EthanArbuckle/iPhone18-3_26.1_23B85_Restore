@interface HDUpdateCodableSummarySharingEntryOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDUpdateCodableSummarySharingEntryOperation)init;
- (HDUpdateCodableSummarySharingEntryOperation)initWithCoder:(id)a3;
- (HDUpdateCodableSummarySharingEntryOperation)initWithInvitationUUID:(id)a3 status:(int64_t)a4 dateModified:(id)a5 dateAccepted:(id)a6 ownerParticipant:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDUpdateCodableSummarySharingEntryOperation

- (HDUpdateCodableSummarySharingEntryOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDUpdateCodableSummarySharingEntryOperation)initWithInvitationUUID:(id)a3 status:(int64_t)a4 dateModified:(id)a5 dateAccepted:(id)a6 ownerParticipant:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = HDUpdateCodableSummarySharingEntryOperation;
  v16 = [(HDUpdateCodableSummarySharingEntryOperation *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    invitationUUID = v16->_invitationUUID;
    v16->_invitationUUID = v17;

    v16->_status = a4;
    v19 = [v13 copy];
    dateModified = v16->_dateModified;
    v16->_dateModified = v19;

    v21 = [v14 copy];
    dateAccepted = v16->_dateAccepted;
    v16->_dateAccepted = v21;

    v23 = [v15 copy];
    ownerParticipant = v16->_ownerParticipant;
    v16->_ownerParticipant = v23;
  }

  return v16;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = HDSummarySharingEntryPredicateForInvitationUUID(self->_invitationUUID);
  v11 = [v8 sharingEntryManager];
  v12 = [v11 anyCodableEntryWithPredicate:v10 errorOut:a5];

  if (v12)
  {
    v13 = [v12 status];
    status = self->_status;
    if (HDMergedSharingStatus(status, v13) != status)
    {
      _HKInitializeLogging();
      v18 = HKLogSharing();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HKStringForSharingStatus();
        v20 = self->_status;
        v21 = HKStringForSharingStatus();
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v19;
        *&buf[22] = 2114;
        v29 = v21;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Entry not updated because current status %{public}@ takes precedence over new status %{public}@", buf, 0x20u);
      }

      goto LABEL_11;
    }

    if ([HDSummarySharingEntryEntity updateStatus:status dateModified:self->_dateModified dateAccepted:self->_dateAccepted predicate:v10 profile:v8 error:a5])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v29 = __Block_byref_object_copy__45;
      v30 = __Block_byref_object_dispose__45;
      v31 = 0;
      v15 = [v8 sharingEntryManager];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __84__HDUpdateCodableSummarySharingEntryOperation_performWithProfile_transaction_error___block_invoke;
      v24[3] = &unk_27861A1A8;
      v27 = buf;
      v24[4] = self;
      v25 = v10;
      v26 = v8;
      v16 = [v15 enumerateCodableEntriesWithPredicate:v25 error:a5 handler:v24];

      if (v16)
      {
        objc_storeStrong(&self->_sharingEntry, *(*&buf[8] + 40));
      }

      _Block_object_dispose(buf, 8);
LABEL_11:
      v17 = 1;
      goto LABEL_12;
    }
  }

  v17 = 0;
LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __84__HDUpdateCodableSummarySharingEntryOperation_performWithProfile_transaction_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 sharingEntry];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 codableEntry];

  v10 = [v9 shareOwnerParticipant];
  if (v10)
  {
  }

  else
  {
    v12 = *(a1[4] + 56);

    if (!v12)
    {
      goto LABEL_4;
    }

    v13 = *(a1[4] + 56);
    v14 = [v13 userIdentity];
    v15 = [v14 userRecordID];
    v16 = [v15 recordName];
    v17 = a1[5];
    v18 = a1[6];
    v22 = 0;
    LODWORD(v13) = [HDSummarySharingEntryEntity updateOwnerParticipant:v13 cloudKitIdentifier:v16 predicate:v17 profile:v18 error:&v22];
    v9 = v22;

    if (!v13)
    {
      v19 = v9;
      v11 = v19 == 0;
      if (v19)
      {
        if (a3)
        {
          v20 = v19;
          *a3 = v19;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_15;
    }
  }

LABEL_4:
  if (![*(*(a1[7] + 8) + 40) direction] && *(a1[4] + 32) >= 2uLL)
  {
    v19 = [*(*(a1[7] + 8) + 40) UUID];
    [HDSummarySharingEntryEntity updatePauseStateForEntryWithUUID:v19 shouldPause:0];
    v11 = 1;
LABEL_15:

    return v11;
  }

  return 1;
}

- (HDUpdateCodableSummarySharingEntryOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InvitationUUID"];
  v6 = [v4 decodeIntegerForKey:@"Status"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateModified"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateAccepted"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OwnerParticipant"];

  v10 = [(HDUpdateCodableSummarySharingEntryOperation *)self initWithInvitationUUID:v5 status:v6 dateModified:v7 dateAccepted:v8 ownerParticipant:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  invitationUUID = self->_invitationUUID;
  v5 = a3;
  [v5 encodeObject:invitationUUID forKey:@"InvitationUUID"];
  [v5 encodeInteger:self->_status forKey:@"Status"];
  [v5 encodeObject:self->_dateModified forKey:@"DateModified"];
  [v5 encodeObject:self->_dateAccepted forKey:@"DateAccepted"];
  [v5 encodeObject:self->_ownerParticipant forKey:@"OwnerParticipant"];
}

@end