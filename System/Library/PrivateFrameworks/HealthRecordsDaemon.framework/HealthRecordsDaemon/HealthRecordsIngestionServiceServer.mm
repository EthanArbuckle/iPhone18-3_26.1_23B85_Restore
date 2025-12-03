@interface HealthRecordsIngestionServiceServer
- (_TtC19HealthRecordsDaemon35HealthRecordsIngestionServiceServer)init;
- (id)exportedInterface;
- (void)remote_addCardToWalletForRecord:(id)record completion:(id)completion;
- (void)remote_didUpdateSignedClinicalDataRecord:(id)record;
- (void)remote_handleSignedClinicalDataFeature:(id)feature context:(id)context completion:(id)completion;
- (void)remote_processOriginalSignedClinicalDataRecords:(id)records options:(unint64_t)options completion:(id)completion;
- (void)remote_willDeleteSignedClinicalDataRecordWithSyncIdentifier:(id)identifier;
@end

@implementation HealthRecordsIngestionServiceServer

- (_TtC19HealthRecordsDaemon35HealthRecordsIngestionServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_handleSignedClinicalDataFeature:(id)feature context:(id)context completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  featureCopy = feature;
  contextCopy = context;
  selfCopy = self;
  sub_251BD62A8(featureCopy, contextCopy, sub_251BDB638, v9);
}

- (void)remote_processOriginalSignedClinicalDataRecords:(id)records options:(unint64_t)options completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_251A8223C(0, &qword_27F47BB60, 0x277D12398);
  v8 = sub_251C71154();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_251BD6CBC(v8, options, sub_251BDB638, v9);
}

- (void)remote_addCardToWalletForRecord:(id)record completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  recordCopy = record;
  selfCopy = self;
  sub_251BD813C(recordCopy, sub_251B3DF78, v7);
}

- (void)remote_didUpdateSignedClinicalDataRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  sub_251BD872C(recordCopy);
}

- (void)remote_willDeleteSignedClinicalDataRecordWithSyncIdentifier:(id)identifier
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C70054();
  selfCopy = self;
  sub_251BD8EC0(v8);

  (*(v5 + 8))(v8, v4);
}

- (id)exportedInterface
{
  v2 = HDHealthRecordsIngestionServiceInterface();

  return v2;
}

@end