@interface IMDRecoverableMessageStore
- (IMDRecoverableMessageStore)init;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)a3 error:(id *)a4;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5;
- (void)clearTombstonesForRecordIDs:(id)a3;
- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5;
- (void)recordUpdateSucceededWithRecord:(id)a3;
@end

@implementation IMDRecoverableMessageStore

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5
{
  v7 = self;
  RecoverableMessageStore.batchOfRecordsToWrite(filter:limit:)(a3, a4);

  sub_22B4D01A0(0, &qword_28141EFE8, 0x277CBC5A0);
  v8 = sub_22B7DB568();

  return v8;
}

- (void)recordUpdateSucceededWithRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  RecoverableMessageStore.recordUpdateSucceeded(forRecord:)(v4);
}

- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5
{
  v7 = a3;
  v9 = a5;
  v8 = self;
  sub_22B7A53C0(v7, v9);
}

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)a3 error:(id *)a4
{
  v5 = self;
  RecoverableMessageStore.batchOfRecordIDsToDelete(limit:)(a3);

  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  sub_22B71EF0C();
  v6 = sub_22B7DB568();

  return v6;
}

- (void)clearTombstonesForRecordIDs:(id)a3
{
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  v4 = sub_22B7DB918();
  v5 = self;
  _s12IMDaemonCore23RecoverableMessageStoreC15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);
}

- (IMDRecoverableMessageStore)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___IMDRecoverableMessageStore_metadataByRecordNameMap) = MEMORY[0x277D84F98];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(IMDRecoverableMessageStore *)&v5 init];
}

@end