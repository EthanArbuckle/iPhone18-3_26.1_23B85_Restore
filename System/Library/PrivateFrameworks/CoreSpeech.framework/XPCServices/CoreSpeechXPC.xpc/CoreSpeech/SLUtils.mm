@interface SLUtils
+ (id)createErrorWithMsg:(id)a3 code:(unint64_t)a4;
@end

@implementation SLUtils

+ (id)createErrorWithMsg:(id)a3 code:(unint64_t)a4
{
  v9 = @"reason";
  v10 = a3;
  v5 = a3;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [NSError errorWithDomain:@"com.apple.sl" code:a4 userInfo:v6];

  return v7;
}

@end