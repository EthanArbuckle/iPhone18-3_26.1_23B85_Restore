@interface CPLInfoFeedbackMessage
- (CPLInfoFeedbackMessage)initWithInfo:(id)info libraryIdentifier:(id)identifier;
- (id)serverMessage;
@end

@implementation CPLInfoFeedbackMessage

- (id)serverMessage
{
  v9.receiver = self;
  v9.super_class = CPLInfoFeedbackMessage;
  serverMessage = [(CPLFeedbackMessage *)&v9 serverMessage];
  info = self->_info;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__CPLInfoFeedbackMessage_serverMessage__block_invoke;
  v7[3] = &unk_1E861C1F8;
  v5 = serverMessage;
  v8 = v5;
  [(NSDictionary *)info enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __39__CPLInfoFeedbackMessage_serverMessage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  [(CPLServerFeedbackKeyAndValue *)v7 setKey:v6];

  [(CPLServerFeedbackKeyAndValue *)v7 setValue:v5];
  [*(a1 + 32) addKeysAndValues:v7];
}

- (CPLInfoFeedbackMessage)initWithInfo:(id)info libraryIdentifier:(id)identifier
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = CPLInfoFeedbackMessage;
  v7 = [(CPLFeedbackMessage *)&v11 initWithLibraryIdentifier:identifier];
  if (v7)
  {
    v8 = [infoCopy copy];
    info = v7->_info;
    v7->_info = v8;
  }

  return v7;
}

@end