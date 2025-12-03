@interface CHSProactiveService
- (CHSProactiveService)init;
- (CHSProactiveService)initWithConnection:(id)connection;
- (void)loadSuggestedWidget:(id)widget withMetrics:(id)metrics completion:(id)completion;
@end

@implementation CHSProactiveService

- (CHSProactiveService)init
{
  v3 = +[CHSChronoServicesConnection sharedInstance];
  v4 = [(CHSProactiveService *)self initWithConnection:v3];

  return v4;
}

- (CHSProactiveService)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CHSProactiveService;
  v6 = [(CHSProactiveService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)loadSuggestedWidget:(id)widget withMetrics:(id)metrics completion:(id)completion
{
  completionCopy = completion;
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CHSProactiveService_loadSuggestedWidget_withMetrics_completion___block_invoke;
  v11[3] = &unk_1E74543B8;
  v12 = completionCopy;
  v10 = completionCopy;
  [(CHSChronoServicesConnection *)connection loadSuggestedWidget:widget metrics:metrics stackIdentifier:@"deprecatedMethodUsed" reason:@"ProactiveService" completion:v11];
}

@end