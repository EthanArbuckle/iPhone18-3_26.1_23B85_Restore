@interface HDCloudSyncSequenceState
- (HDCloudSyncSequenceState)initWithRecordsToSave:(id)a3 recordIDsToDelete:(id)a4 shouldClearRebaselineDeadline:(BOOL)a5;
@end

@implementation HDCloudSyncSequenceState

- (HDCloudSyncSequenceState)initWithRecordsToSave:(id)a3 recordIDsToDelete:(id)a4 shouldClearRebaselineDeadline:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HDCloudSyncSequenceState;
  v10 = [(HDCloudSyncSequenceState *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    recordsToSave = v10->_recordsToSave;
    v10->_recordsToSave = v11;

    v13 = [v9 copy];
    recordIDsToDelete = v10->_recordIDsToDelete;
    v10->_recordIDsToDelete = v13;

    v10->_shouldClearRebaselineDeadline = a5;
  }

  return v10;
}

@end