@interface JavaNioChannelsPipe
+ (id)open;
@end

@implementation JavaNioChannelsPipe

+ (id)open
{
  v2 = JavaNioChannelsSpiSelectorProvider_provider();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 openPipe];
}

@end