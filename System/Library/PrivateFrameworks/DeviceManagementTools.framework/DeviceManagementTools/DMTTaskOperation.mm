@interface DMTTaskOperation
- (void)run;
@end

@implementation DMTTaskOperation

- (void)run
{
  if ([(DMTTaskOperation *)self isExecuting])
  {
    if ([(DMTTaskOperation *)self isCanceled])
    {
      request = CATErrorWithCodeAndUserInfo();
      [(DMTTaskOperation *)self endOperationWithError:?];
    }

    else
    {
      request = [(CATTaskOperation *)self request];
      [(DMTTaskOperation *)self runWithRequest:?];
    }
  }
}

@end