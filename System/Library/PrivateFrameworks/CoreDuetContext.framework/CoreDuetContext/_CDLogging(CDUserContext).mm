@interface _CDLogging(CDUserContext)
+ (id)mdcsChannel;
@end

@implementation _CDLogging(CDUserContext)

+ (id)mdcsChannel
{
  if (mdcsChannel_onceToken != -1)
  {
    +[_CDLogging(CDUserContext) mdcsChannel];
  }

  v1 = mdcsChannel_mdcsChannel;

  return v1;
}

@end