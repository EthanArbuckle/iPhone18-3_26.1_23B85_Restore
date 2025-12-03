@interface CDMWrappedCppException
+ (id)exceptionFromCppExceptionWithMessage:(id)message;
+ (id)exceptionFromUnknownCppException;
@end

@implementation CDMWrappedCppException

+ (id)exceptionFromUnknownCppException
{
  v2 = [[CDMWrappedCppException alloc] initWithName:@"CDMWrappedCppException" reason:@"Hit unknown C++ exception" userInfo:0];

  return v2;
}

+ (id)exceptionFromCppExceptionWithMessage:(id)message
{
  message = [MEMORY[0x1E696AEC0] stringWithFormat:@"Hit C++ exception: %@", message];
  v4 = [[CDMWrappedCppException alloc] initWithName:@"CDMWrappedCppException" reason:message userInfo:0];

  return v4;
}

@end