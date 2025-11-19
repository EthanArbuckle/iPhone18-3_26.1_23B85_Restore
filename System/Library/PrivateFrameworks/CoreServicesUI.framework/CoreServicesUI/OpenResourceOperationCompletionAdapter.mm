@interface OpenResourceOperationCompletionAdapter
- (_TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter)init;
- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4;
- (void)openResourceOperationDidComplete:(id)a3;
@end

@implementation OpenResourceOperationCompletionAdapter

- (void)openResourceOperationDidComplete:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2478C147C();
}

- (void)openResourceOperation:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_2478C1690(a4);
}

- (_TtC14CoreServicesUI38OpenResourceOperationCompletionAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end