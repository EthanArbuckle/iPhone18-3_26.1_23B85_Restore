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
      v3 = CATErrorWithCodeAndUserInfo();
      [(DMTTaskOperation *)self endOperationWithError:?];
    }

    else
    {
      v3 = [(CATTaskOperation *)self request];
      [(DMTTaskOperation *)self runWithRequest:?];
    }
  }
}

@end