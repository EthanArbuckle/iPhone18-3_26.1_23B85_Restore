@interface SLUtils
+ (id)createErrorWithMsg:(id)msg code:(unint64_t)code;
@end

@implementation SLUtils

+ (id)createErrorWithMsg:(id)msg code:(unint64_t)code
{
  v9 = @"reason";
  msgCopy = msg;
  msgCopy2 = msg;
  v6 = [NSDictionary dictionaryWithObjects:&msgCopy forKeys:&v9 count:1];
  v7 = [NSError errorWithDomain:@"com.apple.sl" code:code userInfo:v6];

  return v7;
}

@end