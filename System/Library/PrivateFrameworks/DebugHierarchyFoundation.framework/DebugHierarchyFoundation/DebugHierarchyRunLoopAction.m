@interface DebugHierarchyRunLoopAction
- (void)performInContext:(id)a3;
@end

@implementation DebugHierarchyRunLoopAction

- (void)performInContext:(id)a3
{
  v4 = +[NSRunLoop mainRunLoop];
  v3 = +[NSDate date];
  [v4 runUntilDate:v3];
}

@end