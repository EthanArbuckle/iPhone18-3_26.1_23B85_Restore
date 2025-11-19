@interface HDDeleteAllDeviceContextKeyValueEntriesOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDDeleteAllDeviceContextKeyValueEntriesOperation)initWithCoder:(id)a3;
- (HDDeleteAllDeviceContextKeyValueEntriesOperation)initWithSyncIdentity:(id)a3;
@end

@implementation HDDeleteAllDeviceContextKeyValueEntriesOperation

- (HDDeleteAllDeviceContextKeyValueEntriesOperation)initWithSyncIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDDeleteAllDeviceContextKeyValueEntriesOperation;
  v6 = [(HDDeleteAllDeviceContextKeyValueEntriesOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncIdentity, a3);
  }

  return v7;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 syncIdentityManager];
  v10 = [v9 concreteIdentityForIdentity:self->_syncIdentity shouldCreate:0 transaction:v8 error:a5];

  if (v10)
  {
    v11 = [v10 entity];
    v12 = +[HDDeviceKeyValueStorageEntryEntity removeEntitesForKeys:domain:syncEntityIdentity:transaction:error:](HDDeviceProtectedKeyValueStorageEntryEntity, "removeEntitesForKeys:domain:syncEntityIdentity:transaction:error:", 0, 0, [v11 persistentID], v8, a5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (HDDeleteAllDeviceContextKeyValueEntriesOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SyncIdentity"];

  v6 = [(HDDeleteAllDeviceContextKeyValueEntriesOperation *)self initWithSyncIdentity:v5];
  return v6;
}

@end