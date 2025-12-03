@interface HDRollSyncIdentityDeviceKeyValueEntriesOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDRollSyncIdentityDeviceKeyValueEntriesOperation)initWithCoder:(id)coder;
- (HDRollSyncIdentityDeviceKeyValueEntriesOperation)initWithOldSyncIdentity:(id)identity newSyncIdentity:(id)syncIdentity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDRollSyncIdentityDeviceKeyValueEntriesOperation

- (HDRollSyncIdentityDeviceKeyValueEntriesOperation)initWithOldSyncIdentity:(id)identity newSyncIdentity:(id)syncIdentity
{
  identityCopy = identity;
  syncIdentityCopy = syncIdentity;
  v12.receiver = self;
  v12.super_class = HDRollSyncIdentityDeviceKeyValueEntriesOperation;
  v9 = [(HDRollSyncIdentityDeviceKeyValueEntriesOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_oldSyncIdentity, identity);
    objc_storeStrong(&v10->_newSyncIdentity, syncIdentity);
  }

  return v10;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  profileCopy = profile;
  transactionCopy = transaction;
  syncIdentityManager = [profileCopy syncIdentityManager];
  v11 = [syncIdentityManager concreteIdentityForIdentity:self->_oldSyncIdentity shouldCreate:1 transaction:transactionCopy error:error];

  if (v11)
  {
    syncIdentityManager2 = [profileCopy syncIdentityManager];
    v13 = [syncIdentityManager2 concreteIdentityForIdentity:self->_newSyncIdentity shouldCreate:1 transaction:transactionCopy error:error];

    if (v13)
    {
      v14 = [HDDeviceContextEntity lookupOrCreateDeviceContextForSyncIdentity:v13 WithTransaction:transactionCopy error:error];
      if (v14)
      {
        entity = [v13 entity];
        v16 = +[HDDeviceContextEntity deviceContextEntityWithSyncIdentity:transaction:error:](HDDeviceContextEntity, "deviceContextEntityWithSyncIdentity:transaction:error:", [entity persistentID], transactionCopy, error);

        if (v16)
        {
          v26 = v14;
          entity2 = [v11 entity];
          persistentID = [entity2 persistentID];
          entity3 = [v13 entity];
          v20 = +[HDDeviceKeyValueStorageEntryEntity replaceEntriesForOldSyncIdentity:withNewSyncIdentity:deviceContextID:transaction:error:](HDDeviceUnprotectedKeyValueStorageEntryEntity, "replaceEntriesForOldSyncIdentity:withNewSyncIdentity:deviceContextID:transaction:error:", persistentID, [entity3 persistentID], objc_msgSend(v16, "persistentID"), transactionCopy, error);

          if (v20)
          {
            entity4 = [v11 entity];
            persistentID2 = [entity4 persistentID];
            entity5 = [v13 entity];
            v24 = +[HDDeviceKeyValueStorageEntryEntity replaceEntriesForOldSyncIdentity:withNewSyncIdentity:deviceContextID:transaction:error:](HDDeviceKeyValueStorageEntryEntity, "replaceEntriesForOldSyncIdentity:withNewSyncIdentity:deviceContextID:transaction:error:", persistentID2, [entity5 persistentID], objc_msgSend(v16, "persistentID"), transactionCopy, error);
          }

          else
          {
            v24 = 0;
          }

          v14 = v26;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (HDRollSyncIdentityDeviceKeyValueEntriesOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OldSyncIdentity"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NewSyncIdentity"];

  v7 = [(HDRollSyncIdentityDeviceKeyValueEntriesOperation *)self initWithOldSyncIdentity:v5 newSyncIdentity:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  oldSyncIdentity = self->_oldSyncIdentity;
  coderCopy = coder;
  [coderCopy encodeObject:oldSyncIdentity forKey:@"OldSyncIdentity"];
  [coderCopy encodeObject:self->_newSyncIdentity forKey:@"NewSyncIdentity"];
}

@end