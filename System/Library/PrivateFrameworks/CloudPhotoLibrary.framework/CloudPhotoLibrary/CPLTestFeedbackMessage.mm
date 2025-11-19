@interface CPLTestFeedbackMessage
- (CPLTestFeedbackMessage)initWithTestMessage:(id)a3 libraryIdentifier:(id)a4;
- (id)serverMessage;
@end

@implementation CPLTestFeedbackMessage

- (id)serverMessage
{
  v6.receiver = self;
  v6.super_class = CPLTestFeedbackMessage;
  v3 = [(CPLFeedbackMessage *)&v6 serverMessage];
  v4 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
  [(CPLServerFeedbackKeyAndValue *)v4 setKey:@"message"];
  [(CPLServerFeedbackKeyAndValue *)v4 setValue:self->_testMessage];
  [v3 addKeysAndValues:v4];

  return v3;
}

- (CPLTestFeedbackMessage)initWithTestMessage:(id)a3 libraryIdentifier:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CPLTestFeedbackMessage;
  v7 = [(CPLFeedbackMessage *)&v11 initWithLibraryIdentifier:a4];
  if (v7)
  {
    v8 = [v6 copy];
    testMessage = v7->_testMessage;
    v7->_testMessage = v8;
  }

  return v7;
}

@end