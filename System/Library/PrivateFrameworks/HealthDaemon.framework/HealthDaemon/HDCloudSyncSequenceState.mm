@interface HDCloudSyncSequenceState
- (HDCloudSyncSequenceState)initWithRecordsToSave:(id)save recordIDsToDelete:(id)delete shouldClearRebaselineDeadline:(BOOL)deadline;
@end

@implementation HDCloudSyncSequenceState

- (HDCloudSyncSequenceState)initWithRecordsToSave:(id)save recordIDsToDelete:(id)delete shouldClearRebaselineDeadline:(BOOL)deadline
{
  saveCopy = save;
  deleteCopy = delete;
  v16.receiver = self;
  v16.super_class = HDCloudSyncSequenceState;
  v10 = [(HDCloudSyncSequenceState *)&v16 init];
  if (v10)
  {
    v11 = [saveCopy copy];
    recordsToSave = v10->_recordsToSave;
    v10->_recordsToSave = v11;

    v13 = [deleteCopy copy];
    recordIDsToDelete = v10->_recordIDsToDelete;
    v10->_recordIDsToDelete = v13;

    v10->_shouldClearRebaselineDeadline = deadline;
  }

  return v10;
}

@end