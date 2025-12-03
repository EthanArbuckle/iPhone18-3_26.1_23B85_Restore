@interface NSObject
- (id)mf_andOperations:(id)operations;
- (id)mf_orOperations:(id)operations;
@end

@implementation NSObject

- (id)mf_andOperations:(id)operations
{
  operationsCopy = operations;
  v4 = [[_CollectingInvocationTrampoline alloc] initWithCollection:operationsCopy allMustMatch:1];

  return v4;
}

- (id)mf_orOperations:(id)operations
{
  operationsCopy = operations;
  v4 = [[_CollectingInvocationTrampoline alloc] initWithCollection:operationsCopy allMustMatch:0];

  return v4;
}

@end