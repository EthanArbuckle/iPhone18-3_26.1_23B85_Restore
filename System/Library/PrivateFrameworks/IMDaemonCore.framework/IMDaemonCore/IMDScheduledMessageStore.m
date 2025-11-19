@interface IMDScheduledMessageStore
- (CKRecordZoneID)recordZoneID;
- (IMDScheduledMessageStore)init;
- (id)messageRecordsToUploadToCloudKitWithFilter:(unint64_t)a3 limit:(int64_t)a4;
- (id)recordIDsAndGUIDsToDeleteWithLimit:(int64_t)a3;
- (void)clearTombstonesForRecordIDs:(id)a3;
@end

@implementation IMDScheduledMessageStore

- (CKRecordZoneID)recordZoneID
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [(CKRecordZoneID *)result scheduledMessageRecordZoneID];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)messageRecordsToUploadToCloudKitWithFilter:(unint64_t)a3 limit:(int64_t)a4
{
  v5 = self;
  sub_22B71F280(a4);

  v6 = sub_22B7DB8F8();

  return v6;
}

- (id)recordIDsAndGUIDsToDeleteWithLimit:(int64_t)a3
{
  _s12IMDaemonCore21ScheduledMessageStoreC25recordIDsAndGUIDsToDelete9withLimitSaySDys11AnyHashableVypGGs5Int64V_tF_0(a3);
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v3 = sub_22B7DB8F8();

  return v3;
}

- (void)clearTombstonesForRecordIDs:(id)a3
{
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  v4 = sub_22B7DB918();
  v5 = self;
  _s12IMDaemonCore21ScheduledMessageStoreC15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);
}

- (IMDScheduledMessageStore)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(IMDMessageStore *)&v3 init];
}

@end