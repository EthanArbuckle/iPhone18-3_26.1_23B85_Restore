@interface CPLTestFeedbackMessage
- (CPLTestFeedbackMessage)initWithTestMessage:(id)message libraryIdentifier:(id)identifier;
- (id)serverMessage;
@end

@implementation CPLTestFeedbackMessage

- (id)serverMessage
{
  v6.receiver = self;
  v6.super_class = CPLTestFeedbackMessage;
  serverMessage = [(CPLFeedbackMessage *)&v6 serverMessage];
  v4 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  [(CPLServerFeedbackKeyAndValue *)v4 setKey:@"message"];
  [(CPLServerFeedbackKeyAndValue *)v4 setValue:self->_testMessage];
  [serverMessage addKeysAndValues:v4];

  return serverMessage;
}

- (CPLTestFeedbackMessage)initWithTestMessage:(id)message libraryIdentifier:(id)identifier
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = CPLTestFeedbackMessage;
  v7 = [(CPLFeedbackMessage *)&v11 initWithLibraryIdentifier:identifier];
  if (v7)
  {
    v8 = [messageCopy copy];
    testMessage = v7->_testMessage;
    v7->_testMessage = v8;
  }

  return v7;
}

@end