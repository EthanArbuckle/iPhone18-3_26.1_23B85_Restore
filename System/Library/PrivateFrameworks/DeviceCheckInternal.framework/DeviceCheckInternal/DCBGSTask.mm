@interface DCBGSTask
- (DCBGSTask)initWithTaskIdentifier:(id)identifier observerIdentifier:(id)observerIdentifier;
@end

@implementation DCBGSTask

- (DCBGSTask)initWithTaskIdentifier:(id)identifier observerIdentifier:(id)observerIdentifier
{
  identifierCopy = identifier;
  observerIdentifierCopy = observerIdentifier;
  v11.receiver = self;
  v11.super_class = DCBGSTask;
  v8 = [(DCBGSTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DCBGSTask *)v8 setTaskID:identifierCopy];
    [(DCBGSTask *)v9 setObserverID:observerIdentifierCopy];
  }

  return v9;
}

@end