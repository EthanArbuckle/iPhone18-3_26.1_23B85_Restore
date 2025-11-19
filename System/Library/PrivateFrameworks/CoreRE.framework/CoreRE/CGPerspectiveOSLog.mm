@interface CGPerspectiveOSLog
@end

@implementation CGPerspectiveOSLog

os_log_t ____CGPerspectiveOSLog_block_invoke()
{
  result = os_log_create("com.apple.re", "CGPerspectiveContext");
  __CGPerspectiveOSLog_log = result;
  return result;
}

@end