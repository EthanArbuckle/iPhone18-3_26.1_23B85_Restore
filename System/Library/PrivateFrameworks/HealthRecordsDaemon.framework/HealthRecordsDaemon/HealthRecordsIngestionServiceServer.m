@interface HealthRecordsIngestionServiceServer
- (_TtC19HealthRecordsDaemon35HealthRecordsIngestionServiceServer)init;
- (id)exportedInterface;
- (void)remote_addCardToWalletForRecord:(id)a3 completion:(id)a4;
- (void)remote_didUpdateSignedClinicalDataRecord:(id)a3;
- (void)remote_handleSignedClinicalDataFeature:(id)a3 context:(id)a4 completion:(id)a5;
- (void)remote_processOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)remote_willDeleteSignedClinicalDataRecordWithSyncIdentifier:(id)a3;
@end

@implementation HealthRecordsIngestionServiceServer

- (_TtC19HealthRecordsDaemon35HealthRecordsIngestionServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_handleSignedClinicalDataFeature:(id)a3 context:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_251BD62A8(v10, v11, sub_251BDB638, v9);
}

- (void)remote_processOriginalSignedClinicalDataRecords:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_251A8223C(0, &qword_27F47BB60, 0x277D12398);
  v8 = sub_251C71154();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  sub_251BD6CBC(v8, a4, sub_251BDB638, v9);
}

- (void)remote_addCardToWalletForRecord:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_251BD813C(v8, sub_251B3DF78, v7);
}

- (void)remote_didUpdateSignedClinicalDataRecord:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_251BD872C(v4);
}

- (void)remote_willDeleteSignedClinicalDataRecordWithSyncIdentifier:(id)a3
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C70054();
  v9 = self;
  sub_251BD8EC0(v8);

  (*(v5 + 8))(v8, v4);
}

- (id)exportedInterface
{
  v2 = HDHealthRecordsIngestionServiceInterface();

  return v2;
}

@end