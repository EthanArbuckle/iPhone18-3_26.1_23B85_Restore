@interface DESLogging
+ (id)coreChannel;
@end

@implementation DESLogging

+ (id)coreChannel
{
  if (DESLoggingGetCoreChannel_onceToken != -1)
  {
    +[DESLogging coreChannel];
  }

  v3 = DESLoggingGetCoreChannel_coreChannel;

  return v3;
}

@end