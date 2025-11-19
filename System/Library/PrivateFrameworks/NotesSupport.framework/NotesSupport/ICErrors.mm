@interface ICErrors
+ (id)performBlockByCatchingExceptionsAsError:(id)a3;
@end

@implementation ICErrors

+ (id)performBlockByCatchingExceptionsAsError:(id)a3
{
  v3 = a3;
  v3[2]();

  return 0;
}

@end