@interface CPLCKSplitCopyHelper
- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)a3;
- (CPLCKSplitCopyHelper)initWithBaseCKRecord:(id)a3 sourceRecordID:(id)a4 fromPrivateRecord:(BOOL)a5 recordClass:(Class)a6 sourceDatabaseScope:(int64_t)a7 destinationRecordID:(id)a8 planner:(id)a9;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5;
- (id)recordNameInDestinationCKRecordFromRecordName:(id)a3 error:(id *)a4;
@end

@implementation CPLCKSplitCopyHelper

- (CPLCKSplitCopyHelper)initWithBaseCKRecord:(id)a3 sourceRecordID:(id)a4 fromPrivateRecord:(BOOL)a5 recordClass:(Class)a6 sourceDatabaseScope:(int64_t)a7 destinationRecordID:(id)a8 planner:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = CPLCKSplitCopyHelper;
  v18 = [(CPLCKSplitCopyHelper *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_baseCKRecord, a3);
    objc_storeStrong(&v19->_sourceRecordID, a4);
    v19->_fromPrivateRecord = a5;
    objc_storeStrong(&v19->_recordClass, a6);
    v19->_sourceDatabaseScope = a7;
    objc_storeStrong(&v19->_destinationRecordID, a8);
    objc_storeStrong(&v19->_planner, a9);
  }

  return v19;
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5
{
  baseCKRecord = self->_baseCKRecord;
  if (baseCKRecord)
  {
    v6 = baseCKRecord;
  }

  else
  {
    v8 = a4;
    v9 = a3;
    v10 = [CKRecord alloc];
    v11 = [v9 recordType];

    v6 = [v10 initWithRecordType:v11 recordID:v8];
  }

  return v6;
}

- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CPLCKBatchUploadPlanner *)self->_planner propertyMapping];
  fromPrivateRecord = self->_fromPrivateRecord;
  v7 = [v5 isKeyReadOnly:v4 recordClass:self->_recordClass];
  if (fromPrivateRecord)
  {
    if ((v7 & 1) != 0 || ([v5 shouldUpdateKeyOnSharedRecord:v4 recordClass:self->_recordClass] & 1) == 0)
    {
LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }
  }

  else if ((v7 & 1) != 0 || ![v5 shouldUpdateKeyOnPrivateRecord:v4 recordClass:self->_recordClass])
  {
    goto LABEL_9;
  }

  baseCKRecord = self->_baseCKRecord;
  if (baseCKRecord)
  {
    v9 = [baseCKRecord changedKeys];
    v10 = [v9 containsObject:v4];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

LABEL_10:

  return v11 & 1;
}

- (id)recordNameInDestinationCKRecordFromRecordName:(id)a3 error:(id *)a4
{
  v5 = a3;
  fromPrivateRecord = self->_fromPrivateRecord;
  v7 = [CPLScopedIdentifier alloc];
  planner = self->_planner;
  if (fromPrivateRecord)
  {
    v9 = [(CPLCKBatchUploadPlanner *)planner destinationZoneIdentification];
    v10 = [v9 scopeIdentifier];
    v11 = [v7 initWithScopeIdentifier:v10 identifier:v5];

    v12 = [(CPLCKBatchUploadPlanner *)self->_planner targetMapping];
    v13 = [v12 targetForRecordWithScopedIdentifier:v11];

    if (v13)
    {
      v14 = [v13 scopedIdentifier];
      v15 = [v14 identifier];
LABEL_9:

      goto LABEL_11;
    }
  }

  else
  {
    v16 = [(CPLCKBatchUploadPlanner *)planner sharedZoneIdentification];
    v17 = [v16 scopeIdentifier];
    v11 = [v7 initWithScopeIdentifier:v17 identifier:v5];

    v18 = [(CPLCKBatchUploadPlanner *)self->_planner targetMapping];
    v13 = [v18 targetForRecordWithOtherScopedIdentifier:v11];

    if (v13)
    {
      v14 = [v13 otherScopedIdentifier];
      v19 = [v14 identifier];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v5;
      }

      v15 = v21;

      goto LABEL_9;
    }
  }

  v15 = v5;
LABEL_11:

  return v15;
}

@end