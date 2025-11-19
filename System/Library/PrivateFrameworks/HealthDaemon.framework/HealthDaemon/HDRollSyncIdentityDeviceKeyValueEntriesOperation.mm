@interface HDRollSyncIdentityDeviceKeyValueEntriesOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDRollSyncIdentityDeviceKeyValueEntriesOperation)initWithCoder:(id)a3;
- (HDRollSyncIdentityDeviceKeyValueEntriesOperation)initWithOldSyncIdentity:(id)a3 newSyncIdentity:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDRollSyncIdentityDeviceKeyValueEntriesOperation

- (HDRollSyncIdentityDeviceKeyValueEntriesOperation)initWithOldSyncIdentity:(id)a3 newSyncIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDRollSyncIdentityDeviceKeyValueEntriesOperation;
  v9 = [(HDRollSyncIdentityDeviceKeyValueEntriesOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_oldSyncIdentity, a3);
    objc_storeStrong(&v10->_newSyncIdentity, a4);
  }

  return v10;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 syncIdentityManager];
  v11 = [v10 concreteIdentityForIdentity:self->_oldSyncIdentity shouldCreate:1 transaction:v9 error:a5];

  if (v11)
  {
    v12 = [v8 syncIdentityManager];
    v13 = [v12 concreteIdentityForIdentity:self->_newSyncIdentity shouldCreate:1 transaction:v9 error:a5];

    if (v13)
    {
      v14 = [HDDeviceContextEntity lookupOrCreateDeviceContextForSyncIdentity:v13 WithTransaction:v9 error:a5];
      if (v14)
      {
        v15 = [v13 entity];
        v16 = +[HDDeviceContextEntity deviceContextEntityWithSyncIdentity:transaction:error:](HDDeviceContextEntity, "deviceContextEntityWithSyncIdentity:transaction:error:", [v15 persistentID], v9, a5);

        if (v16)
        {
          v26 = v14;
          v17 = [v11 entity];
          v18 = [v17 persistentID];
          v19 = [v13 entity];
          v20 = +[HDDeviceKeyValueStorageEntryEntity replaceEntriesForOldSyncIdentity:withNewSyncIdentity:deviceContextID:transaction:error:](HDDeviceUnprotectedKeyValueStorageEntryEntity, "replaceEntriesForOldSyncIdentity:withNewSyncIdentity:deviceContextID:transaction:error:", v18, [v19 persistentID], objc_msgSend(v16, "persistentID"), v9, a5);

          if (v20)
          {
            v21 = [v11 entity];
            v22 = [v21 persistentID];
            v23 = [v13 entity];
            v24 = +[HDDeviceKeyValueStorageEntryEntity replaceEntriesForOldSyncIdentity:withNewSyncIdentity:deviceContextID:transaction:error:](HDDeviceKeyValueStorageEntryEntity, "replaceEntriesForOldSyncIdentity:withNewSyncIdentity:deviceContextID:transaction:error:", v22, [v23 persistentID], objc_msgSend(v16, "persistentID"), v9, a5);
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

- (HDRollSyncIdentityDeviceKeyValueEntriesOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OldSyncIdentity"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NewSyncIdentity"];

  v7 = [(HDRollSyncIdentityDeviceKeyValueEntriesOperation *)self initWithOldSyncIdentity:v5 newSyncIdentity:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  oldSyncIdentity = self->_oldSyncIdentity;
  v5 = a3;
  [v5 encodeObject:oldSyncIdentity forKey:@"OldSyncIdentity"];
  [v5 encodeObject:self->_newSyncIdentity forKey:@"NewSyncIdentity"];
}

@end