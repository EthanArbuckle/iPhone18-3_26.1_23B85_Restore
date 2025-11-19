@interface GSWriteStackshot
@end

@implementation GSWriteStackshot

void *___GSWriteStackshot_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 2);
  if (result)
  {
    result = dlsym(result, "WriteStackshotReport_stdc");
  }

  _GSWriteStackshot_dyfunc_WriteStackshotReport_stdc = result;
  return result;
}

@end