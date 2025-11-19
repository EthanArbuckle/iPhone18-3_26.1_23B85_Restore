@interface CNInhibitor
+ (id)os_transactionInhibitorWithLabel:(id)a3;
+ (id)runningboardInhibitorWithExplanation:(id)a3;
+ (id)suddenTerminationInhibitor;
+ (id)suddenTerminationInhibitorWithProcessInfo:(id)a3;
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

+ (id)suddenTerminationInhibitorWithProcessInfo:(id)a3
{
  v3 = a3;
  v4 = [[_CNSuddenTerminationInhibitor alloc] initWithProcessInfo:v3];

  return v4;
}

+ (id)os_transactionInhibitorWithLabel:(id)a3
{
  v3 = a3;
  v4 = [[_CNOSTransactionInhibitor alloc] initWithLabel:v3];

  return v4;
}

+ (id)runningboardInhibitorWithExplanation:(id)a3
{
  v3 = a3;
  v4 = [[_CNRunningBoardInhibitor alloc] initWithExplanation:v3];

  return v4;
}

@end