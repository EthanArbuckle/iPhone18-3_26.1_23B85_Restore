@interface HMDDatabaseCKOperationCompletionEvent
- (HMDDatabaseCKOperationCompletionEvent)initWithContainerIdentifier:(id)a3;
@end

@implementation HMDDatabaseCKOperationCompletionEvent

- (HMDDatabaseCKOperationCompletionEvent)initWithContainerIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDDatabaseCKOperationCompletionEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerIdentifier, a3);
  }

  return v7;
}

@end