@interface CDMAssistantNLUCommand
- (CDMAssistantNLUCommand)initWithCoder:(id)coder;
- (CDMAssistantNLUCommand)initWithNLURequest:(id)request clientId:(id)id dataDispatcherContext:(id)context;
@end

@implementation CDMAssistantNLUCommand

- (CDMAssistantNLUCommand)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CDMAssistantNLUCommand;
  return [(CDMBaseCommand *)&v4 init];
}

- (CDMAssistantNLUCommand)initWithNLURequest:(id)request clientId:(id)id dataDispatcherContext:(id)context
{
  requestCopy = request;
  idCopy = id;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CDMAssistantNLUCommand;
  v12 = [(CDMBaseCommand *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientId, id);
    objc_storeStrong(&v13->_siriNLUTypeObj, request);
    v14 = objc_alloc_init(MEMORY[0x1E69CF2A8]);
    selfMetadata = v13->_selfMetadata;
    v13->_selfMetadata = v14;

    [(CDMServiceGraphCommand *)v13 setDataDispatcherContext:contextCopy];
  }

  return v13;
}

@end