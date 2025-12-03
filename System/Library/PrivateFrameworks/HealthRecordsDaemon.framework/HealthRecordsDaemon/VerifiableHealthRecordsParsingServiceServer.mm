@interface VerifiableHealthRecordsParsingServiceServer
- (_TtC19HealthRecordsDaemon43VerifiableHealthRecordsParsingServiceServer)init;
- (id)exportedInterface;
- (void)remote_parseDataSource:(id)source options:(unint64_t)options completion:(id)completion;
@end

@implementation VerifiableHealthRecordsParsingServiceServer

- (_TtC19HealthRecordsDaemon43VerifiableHealthRecordsParsingServiceServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_parseDataSource:(id)source options:(unint64_t)options completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sourceCopy = source;
  selfCopy = self;
  sub_251B2DB64(sourceCopy, options, sub_251B2E650, v9);
}

- (id)exportedInterface
{
  v2 = HKVerifiableHealthRecordsParsingServiceInterface();

  return v2;
}

@end