@interface PARSession(FCAddition)
+ (id)fc_sharedParsecSession;
@end

@implementation PARSession(FCAddition)

+ (id)fc_sharedParsecSession
{
  if (_MergedGlobals_172 != -1)
  {
    dispatch_once(&_MergedGlobals_172, &__block_literal_global_96);
  }

  v1 = qword_1EDB27590;

  return v1;
}

@end