@interface CPLCKSplitCopyHelper
- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)record;
- (CPLCKSplitCopyHelper)initWithBaseCKRecord:(id)record sourceRecordID:(id)d fromPrivateRecord:(BOOL)privateRecord recordClass:(Class)class sourceDatabaseScope:(int64_t)scope destinationRecordID:(id)iD planner:(id)planner;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error;
- (id)recordNameInDestinationCKRecordFromRecordName:(id)name error:(id *)error;
@end

@implementation CPLCKSplitCopyHelper

- (CPLCKSplitCopyHelper)initWithBaseCKRecord:(id)record sourceRecordID:(id)d fromPrivateRecord:(BOOL)privateRecord recordClass:(Class)class sourceDatabaseScope:(int64_t)scope destinationRecordID:(id)iD planner:(id)planner
{
  recordCopy = record;
  dCopy = d;
  iDCopy = iD;
  plannerCopy = planner;
  v23.receiver = self;
  v23.super_class = CPLCKSplitCopyHelper;
  v18 = [(CPLCKSplitCopyHelper *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_baseCKRecord, record);
    objc_storeStrong(&v19->_sourceRecordID, d);
    v19->_fromPrivateRecord = privateRecord;
    objc_storeStrong(&v19->_recordClass, class);
    v19->_sourceDatabaseScope = scope;
    objc_storeStrong(&v19->_destinationRecordID, iD);
    objc_storeStrong(&v19->_planner, planner);
  }

  return v19;
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error
{
  baseCKRecord = self->_baseCKRecord;
  if (baseCKRecord)
  {
    v6 = baseCKRecord;
  }

  else
  {
    dCopy = d;
    recordCopy = record;
    v10 = [CKRecord alloc];
    recordType = [recordCopy recordType];

    v6 = [v10 initWithRecordType:recordType recordID:dCopy];
  }

  return v6;
}

- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)record
{
  recordCopy = record;
  propertyMapping = [(CPLCKBatchUploadPlanner *)self->_planner propertyMapping];
  fromPrivateRecord = self->_fromPrivateRecord;
  v7 = [propertyMapping isKeyReadOnly:recordCopy recordClass:self->_recordClass];
  if (fromPrivateRecord)
  {
    if ((v7 & 1) != 0 || ([propertyMapping shouldUpdateKeyOnSharedRecord:recordCopy recordClass:self->_recordClass] & 1) == 0)
    {
LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }
  }

  else if ((v7 & 1) != 0 || ![propertyMapping shouldUpdateKeyOnPrivateRecord:recordCopy recordClass:self->_recordClass])
  {
    goto LABEL_9;
  }

  baseCKRecord = self->_baseCKRecord;
  if (baseCKRecord)
  {
    changedKeys = [baseCKRecord changedKeys];
    v10 = [changedKeys containsObject:recordCopy];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

LABEL_10:

  return v11 & 1;
}

- (id)recordNameInDestinationCKRecordFromRecordName:(id)name error:(id *)error
{
  nameCopy = name;
  fromPrivateRecord = self->_fromPrivateRecord;
  v7 = [CPLScopedIdentifier alloc];
  planner = self->_planner;
  if (fromPrivateRecord)
  {
    destinationZoneIdentification = [(CPLCKBatchUploadPlanner *)planner destinationZoneIdentification];
    scopeIdentifier = [destinationZoneIdentification scopeIdentifier];
    v11 = [v7 initWithScopeIdentifier:scopeIdentifier identifier:nameCopy];

    targetMapping = [(CPLCKBatchUploadPlanner *)self->_planner targetMapping];
    v13 = [targetMapping targetForRecordWithScopedIdentifier:v11];

    if (v13)
    {
      scopedIdentifier = [v13 scopedIdentifier];
      identifier = [scopedIdentifier identifier];
LABEL_9:

      goto LABEL_11;
    }
  }

  else
  {
    sharedZoneIdentification = [(CPLCKBatchUploadPlanner *)planner sharedZoneIdentification];
    scopeIdentifier2 = [sharedZoneIdentification scopeIdentifier];
    v11 = [v7 initWithScopeIdentifier:scopeIdentifier2 identifier:nameCopy];

    targetMapping2 = [(CPLCKBatchUploadPlanner *)self->_planner targetMapping];
    v13 = [targetMapping2 targetForRecordWithOtherScopedIdentifier:v11];

    if (v13)
    {
      scopedIdentifier = [v13 otherScopedIdentifier];
      identifier2 = [scopedIdentifier identifier];
      v20 = identifier2;
      if (identifier2)
      {
        v21 = identifier2;
      }

      else
      {
        v21 = nameCopy;
      }

      identifier = v21;

      goto LABEL_9;
    }
  }

  identifier = nameCopy;
LABEL_11:

  return identifier;
}

@end