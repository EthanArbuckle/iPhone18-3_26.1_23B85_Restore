@interface OpenResourceOperationCompletionAdapter
- (_TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter)init;
- (void)openResourceOperation:(id)operation didFailWithError:(id)error;
- (void)openResourceOperationDidComplete:(id)complete;
@end

@implementation OpenResourceOperationCompletionAdapter

- (void)openResourceOperationDidComplete:(id)complete
{
  completeCopy = complete;
  selfCopy = self;
  sub_2478C147C();
}

- (void)openResourceOperation:(id)operation didFailWithError:(id)error
{
  operationCopy = operation;
  selfCopy = self;
  errorCopy = error;
  sub_2478C1690(error);
}

- (_TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end