@interface NSBundle(NanoMediaRemote)
+ (id)nanoMediaRemoteBundle;
@end

@implementation NSBundle(NanoMediaRemote)

+ (id)nanoMediaRemoteBundle
{
  if (nanoMediaRemoteBundle_onceToken != -1)
  {
    +[NSBundle(NanoMediaRemote) nanoMediaRemoteBundle];
  }

  v1 = nanoMediaRemoteBundle_nanoMediaRemoteBundle;

  return v1;
}

@end