@interface VerifiableHealthRecordsParsingServiceServer
- (_TtC19HealthRecordsDaemon43VerifiableHealthRecordsParsingServiceServer)init;
- (id)exportedInterface;
- (void)remote_parseDataSource:(id)a3 options:(unint64_t)a4 completion:(id)a5;
@end

@implementation VerifiableHealthRecordsParsingServiceServer

- (_TtC19HealthRecordsDaemon43VerifiableHealthRecordsParsingServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_parseDataSource:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  sub_251B2DB64(v10, a4, sub_251B2E650, v9);
}

- (id)exportedInterface
{
  v2 = HKVerifiableHealthRecordsParsingServiceInterface();

  return v2;
}

@end