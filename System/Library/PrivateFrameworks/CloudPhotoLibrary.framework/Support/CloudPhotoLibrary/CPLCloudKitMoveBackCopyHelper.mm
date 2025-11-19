@interface CPLCloudKitMoveBackCopyHelper
- (BOOL)shouldCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4;
- (CPLCloudKitMoveBackCopyHelper)initWithUserRecordID:(id)a3 scopeProvider:(id)a4;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5;
- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)a3 error:(id *)a4;
- (void)prepareCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4;
@end

@implementation CPLCloudKitMoveBackCopyHelper

- (CPLCloudKitMoveBackCopyHelper)initWithUserRecordID:(id)a3 scopeProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CPLCloudKitMoveBackCopyHelper;
  v9 = [(CPLCloudKitMoveBackCopyHelper *)&v15 init];
  if (v9)
  {
    v10 = +[CPLCKRecordPropertyMapping sharedInstance];
    mapping = v9->_mapping;
    v9->_mapping = v10;

    v12 = +[NSDate date];
    recordModificationDate = v9->_recordModificationDate;
    v9->_recordModificationDate = v12;

    objc_storeStrong(&v9->_userRecordID, a3);
    objc_storeStrong(&v9->_scopeProvider, a4);
  }

  return v9;
}

- (void)prepareCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4
{
  v5 = [a4 recordType];
  self->_recordClass = CPLRecordChangeClassForCKRecordType(v5);
}

- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 setObject:self->_recordModificationDate forKey:@"recordModificationDate"];
  [v5 setObject:0 forKey:@"linkedShareZoneName"];
  [v5 setObject:0 forKey:@"linkedShareZoneOwner"];
  [v5 setObject:0 forKey:@"linkedShareRecordName"];

  return v5;
}

- (BOOL)shouldCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4
{
  sub_10002B0F4();
  v6 = v5;
  v7 = [v6 objectForKeyedSubscript:@"remappedRef"];

  if (v7 && (_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_100003B84();
    if (sub_100003424(v8))
    {
      v9 = [v6 recordType];
      v10 = [v6 recordID];
      v17 = [v10 cplFullDescription];
      sub_100013990();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }
  }

  return v7 == 0;
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 cpl_destinationRecordIDInPrivateScopeWithCurrentUserRecordID:self->_userRecordID proposedDestinationRecordID:v8];
  if (([v9 isEqual:v8] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_100003B84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 recordID];
      v12 = [v11 cplFullDescription];
      v13 = [v9 cplFullDescription];
      v14 = [v8 cplFullDescription];
      v19 = 138412802;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Moving %@ to %@ instead of %@", &v19, 0x20u);
    }
  }

  v15 = [CKRecord alloc];
  v16 = [v7 recordType];
  v17 = [v15 initWithRecordType:v16 recordID:v9];

  return v17;
}

@end