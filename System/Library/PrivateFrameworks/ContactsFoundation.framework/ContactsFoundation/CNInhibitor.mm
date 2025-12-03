@interface CNInhibitor
+ (id)os_transactionInhibitorWithLabel:(id)label;
+ (id)runningboardInhibitorWithExplanation:(id)explanation;
+ (id)suddenTerminationInhibitor;
+ (id)suddenTerminationInhibitorWithProcessInfo:(id)info;
- (void)dealloc;
@end

@implementation CNInhibitor

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CNInhibitor;
  [(CNInhibitor *)&v2 dealloc];
}

+ (id)suddenTerminationInhibitor
{
  v2 = objc_alloc_init(_CNSuddenTerminationInhibitor);

  return v2;
}

+ (id)suddenTerminationInhibitorWithProcessInfo:(id)info
{
  infoCopy = info;
  v4 = [[_CNSuddenTerminationInhibitor alloc] initWithProcessInfo:infoCopy];

  return v4;
}

+ (id)os_transactionInhibitorWithLabel:(id)label
{
  labelCopy = label;
  v4 = [[_CNOSTransactionInhibitor alloc] initWithLabel:labelCopy];

  return v4;
}

+ (id)runningboardInhibitorWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  v4 = [[_CNRunningBoardInhibitor alloc] initWithExplanation:explanationCopy];

  return v4;
}

@end