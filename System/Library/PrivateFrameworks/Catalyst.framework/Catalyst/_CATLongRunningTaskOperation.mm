@interface _CATLongRunningTaskOperation
- (void)cancel;
@end

@implementation _CATLongRunningTaskOperation

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = _CATLongRunningTaskOperation;
  [(_CATLongRunningTaskOperation *)&v4 cancel];
  v3 = CATErrorWithCodeAndUserInfo(404, 0);
  [(CATOperation *)self endOperationWithError:v3];
}

@end