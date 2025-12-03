@interface DebugHierarchyRunLoopAction
- (void)performInContext:(id)context;
@end

@implementation DebugHierarchyRunLoopAction

- (void)performInContext:(id)context
{
  v4 = +[NSRunLoop mainRunLoop];
  v3 = +[NSDate date];
  [v4 runUntilDate:v3];
}

@end