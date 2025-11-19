@interface CDMWrappedCppException
+ (id)exceptionFromCppExceptionWithMessage:(id)a3;
+ (id)exceptionFromUnknownCppException;
@end

@implementation CDMWrappedCppException

+ (id)exceptionFromUnknownCppException
{
  v2 = [[CDMWrappedCppException alloc] initWithName:@"CDMWrappedCppException" reason:@"Hit unknown C++ exception" userInfo:0];

  return v2;
}

+ (id)exceptionFromCppExceptionWithMessage:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Hit C++ exception: %@", a3];
  v4 = [[CDMWrappedCppException alloc] initWithName:@"CDMWrappedCppException" reason:v3 userInfo:0];

  return v4;
}

@end