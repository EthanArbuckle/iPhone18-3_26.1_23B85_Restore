@interface HKVerifiableHealthRecordsParsingService
- (HKVerifiableHealthRecordsParsingService)init;
- (HKVerifiableHealthRecordsParsingService)initWithConnection:(id)a3;
- (id)exportedInterface;
- (void)parseDataSource:(id)a3 options:(unint64_t)a4 completion:(id)a5;
@end

@implementation HKVerifiableHealthRecordsParsingService

- (HKVerifiableHealthRecordsParsingService)init
{
  v3 = +[HKHealthRecordsDaemonConnection sharedConnection];
  v4 = [(HKVerifiableHealthRecordsParsingService *)self initWithConnection:v3];

  return v4;
}

- (HKVerifiableHealthRecordsParsingService)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKVerifiableHealthRecordsParsingService;
  v5 = [(HKVerifiableHealthRecordsParsingService *)&v9 init];
  if (v5)
  {
    v6 = [[HKHealthRecordsDaemonProxyProvider alloc] initWithConnection:v4 serviceIdentifier:@"VerifiableHealthRecordsParsingService" exportedObject:v5];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = &v6->super;
  }

  return v5;
}

- (void)parseDataSource:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__HKVerifiableHealthRecordsParsingService_parseDataSource_options_completion___block_invoke;
  v14[3] = &unk_2796DD0C0;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HKVerifiableHealthRecordsParsingService_parseDataSource_options_completion___block_invoke_2;
  v12[3] = &unk_2796DBFF8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(HKVerifiableHealthRecordsParsingService *)self _fetchProxyWithHandler:v14 errorHandler:v12];
}

- (id)exportedInterface
{
  v2 = objc_alloc_init(MEMORY[0x277CCAE90]);

  return v2;
}

@end