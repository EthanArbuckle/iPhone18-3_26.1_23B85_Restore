@interface HMDDatabaseCKOperationCompletionEvent
- (HMDDatabaseCKOperationCompletionEvent)initWithContainerIdentifier:(id)identifier;
@end

@implementation HMDDatabaseCKOperationCompletionEvent

- (HMDDatabaseCKOperationCompletionEvent)initWithContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HMDDatabaseCKOperationCompletionEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerIdentifier, identifier);
  }

  return v7;
}

@end