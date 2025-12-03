@interface HDDeleteAllDeviceContextKeyValueEntriesOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDDeleteAllDeviceContextKeyValueEntriesOperation)initWithCoder:(id)coder;
- (HDDeleteAllDeviceContextKeyValueEntriesOperation)initWithSyncIdentity:(id)identity;
@end

@implementation HDDeleteAllDeviceContextKeyValueEntriesOperation

- (HDDeleteAllDeviceContextKeyValueEntriesOperation)initWithSyncIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = HDDeleteAllDeviceContextKeyValueEntriesOperation;
  v6 = [(HDDeleteAllDeviceContextKeyValueEntriesOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncIdentity, identity);
  }

  return v7;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  syncIdentityManager = [profile syncIdentityManager];
  v10 = [syncIdentityManager concreteIdentityForIdentity:self->_syncIdentity shouldCreate:0 transaction:transactionCopy error:error];

  if (v10)
  {
    entity = [v10 entity];
    v12 = +[HDDeviceKeyValueStorageEntryEntity removeEntitesForKeys:domain:syncEntityIdentity:transaction:error:](HDDeviceProtectedKeyValueStorageEntryEntity, "removeEntitesForKeys:domain:syncEntityIdentity:transaction:error:", 0, 0, [entity persistentID], transactionCopy, error);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (HDDeleteAllDeviceContextKeyValueEntriesOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SyncIdentity"];

  v6 = [(HDDeleteAllDeviceContextKeyValueEntriesOperation *)self initWithSyncIdentity:v5];
  return v6;
}

@end