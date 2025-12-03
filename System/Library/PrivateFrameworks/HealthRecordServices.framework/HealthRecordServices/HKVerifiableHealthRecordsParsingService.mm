@interface HKVerifiableHealthRecordsParsingService
- (HKVerifiableHealthRecordsParsingService)init;
- (HKVerifiableHealthRecordsParsingService)initWithConnection:(id)connection;
- (id)exportedInterface;
- (void)parseDataSource:(id)source options:(unint64_t)options completion:(id)completion;
@end

@implementation HKVerifiableHealthRecordsParsingService

- (HKVerifiableHealthRecordsParsingService)init
{
  v3 = +[HKHealthRecordsDaemonConnection sharedConnection];
  v4 = [(HKVerifiableHealthRecordsParsingService *)self initWithConnection:v3];

  return v4;
}

- (HKVerifiableHealthRecordsParsingService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = HKVerifiableHealthRecordsParsingService;
  v5 = [(HKVerifiableHealthRecordsParsingService *)&v9 init];
  if (v5)
  {
    v6 = [[HKHealthRecordsDaemonProxyProvider alloc] initWithConnection:connectionCopy serviceIdentifier:@"VerifiableHealthRecordsParsingService" exportedObject:v5];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = &v6->super;
  }

  return v5;
}

- (void)parseDataSource:(id)source options:(unint64_t)options completion:(id)completion
{
  sourceCopy = source;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HKVerifiableHealthRecordsParsingService_parseDataSource_options_completion___block_invoke;
  v14[3] = &unk_2796DD0C0;
  v15 = sourceCopy;
  optionsCopy = options;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HKVerifiableHealthRecordsParsingService_parseDataSource_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = sourceCopy;
  [(HKVerifiableHealthRecordsParsingService *)self _fetchProxyWithHandler:v14 errorHandler:v12];
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(MEMORY[0x277CCAE90]);

  return v2;
}

@end