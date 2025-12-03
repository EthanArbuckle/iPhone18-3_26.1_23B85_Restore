@interface ICErrors
+ (id)performBlockByCatchingExceptionsAsError:(id)error;
@end

@implementation ICErrors

+ (id)performBlockByCatchingExceptionsAsError:(id)error
{
  errorCopy = error;
  errorCopy[2]();

  return 0;
}

@end