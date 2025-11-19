@interface CDMAssistantNLUCommand
- (CDMAssistantNLUCommand)initWithCoder:(id)a3;
- (CDMAssistantNLUCommand)initWithNLURequest:(id)a3 clientId:(id)a4 dataDispatcherContext:(id)a5;
@end

@implementation CDMAssistantNLUCommand

- (CDMAssistantNLUCommand)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CDMAssistantNLUCommand;
  return [(CDMBaseCommand *)&v4 init];
}

- (CDMAssistantNLUCommand)initWithNLURequest:(id)a3 clientId:(id)a4 dataDispatcherContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CDMAssistantNLUCommand;
  v12 = [(CDMBaseCommand *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientId, a4);
    objc_storeStrong(&v13->_siriNLUTypeObj, a3);
    v14 = objc_alloc_init(MEMORY[0x1E69CF2A8]);
    selfMetadata = v13->_selfMetadata;
    v13->_selfMetadata = v14;

    [(CDMServiceGraphCommand *)v13 setDataDispatcherContext:v11];
  }

  return v13;
}

@end