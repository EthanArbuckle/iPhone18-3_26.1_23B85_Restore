@interface NSXPCInterface(Extension)
+ (id)MEExtensionRemoteHostInterface;
+ (id)MERemoteExtensiontInterface;
@end

@implementation NSXPCInterface(Extension)

+ (id)MERemoteExtensiontInterface
{
  if (MERemoteExtensiontInterface_onceToken != -1)
  {
    +[NSXPCInterface(Extension) MERemoteExtensiontInterface];
  }

  v1 = MERemoteExtensiontInterface_remoteInterface;

  return v1;
}

+ (id)MEExtensionRemoteHostInterface
{
  if (MEExtensionRemoteHostInterface_onceToken != -1)
  {
    +[NSXPCInterface(Extension) MEExtensionRemoteHostInterface];
  }

  v1 = MEExtensionRemoteHostInterface_interface;

  return v1;
}

@end