@interface CHSProactiveService
- (CHSProactiveService)init;
- (CHSProactiveService)initWithConnection:(id)a3;
- (void)loadSuggestedWidget:(id)a3 withMetrics:(id)a4 completion:(id)a5;
@end

@implementation CHSProactiveService

- (CHSProactiveService)init
{
  v3 = +[CHSChronoServicesConnection sharedInstance];
  v4 = [(CHSProactiveService *)self initWithConnection:v3];

  return v4;
}

- (CHSProactiveService)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSProactiveService;
  v6 = [(CHSProactiveService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (void)loadSuggestedWidget:(id)a3 withMetrics:(id)a4 completion:(id)a5
{
  v8 = a5;
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CHSProactiveService_loadSuggestedWidget_withMetrics_completion___block_invoke;
  v11[3] = &unk_1E74543B8;
  v12 = v8;
  v10 = v8;
  [(CHSChronoServicesConnection *)connection loadSuggestedWidget:a3 metrics:a4 stackIdentifier:@"deprecatedMethodUsed" reason:@"ProactiveService" completion:v11];
}

@end