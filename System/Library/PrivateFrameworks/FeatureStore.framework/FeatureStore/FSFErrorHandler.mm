@interface FSFErrorHandler
+ (void)assertThatUserIsSupported;
@end

@implementation FSFErrorHandler

+ (void)assertThatUserIsSupported
{
  if (!+[FSFUtils isSupportedUser])
  {
    v2 = MEMORY[0x277CBEAD8];
    v3 = *MEMORY[0x277CBE658];
    v4 = MEMORY[0x277CCACA8];
    v5 = NSUserName();
    v6 = objc_claimAutoreleasedReturnValue();
    v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
    v8 = v7;

    objc_exception_throw(v7);
  }
}

@end