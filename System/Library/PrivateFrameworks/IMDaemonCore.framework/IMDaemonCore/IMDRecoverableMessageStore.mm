@interface IMDRecoverableMessageStore
- (IMDRecoverableMessageStore)init;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error;
- (void)clearTombstonesForRecordIDs:(id)ds;
- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error;
- (void)recordUpdateSucceededWithRecord:(id)record;
@end

@implementation IMDRecoverableMessageStore

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error
{
  selfCopy = self;
  RecoverableMessageStore.batchOfRecordsToWrite(filter:limit:)(filter, limit);

  sub_22B4D01A0(0, &qword_28141EFE8, 0x277CBC5A0);
  v8 = sub_22B7DB568();

  return v8;
}

- (void)recordUpdateSucceededWithRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  RecoverableMessageStore.recordUpdateSucceeded(forRecord:)(recordCopy);
}

- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error
{
  dCopy = d;
  errorCopy = error;
  selfCopy = self;
  sub_22B7A53C0(dCopy, errorCopy);
}

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error
{
  selfCopy = self;
  RecoverableMessageStore.batchOfRecordIDsToDelete(limit:)(limit);

  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  sub_22B71EF0C();
  v6 = sub_22B7DB568();

  return v6;
}

- (void)clearTombstonesForRecordIDs:(id)ds
{
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  v4 = sub_22B7DB918();
  selfCopy = self;
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