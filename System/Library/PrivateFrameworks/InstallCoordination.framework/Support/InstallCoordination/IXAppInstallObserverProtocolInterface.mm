@interface IXAppInstallObserverProtocolInterface
+ (id)interface;
+ (id)new;
- (IXAppInstallObserverProtocolInterface)init;
@end

@implementation IXAppInstallObserverProtocolInterface

- (IXAppInstallObserverProtocolInterface)init
{
  result = _os_crash();
  __break(1u);
  return result;
}

+ (id)new
{
  result = _os_crash();
  __break(1u);
  return result;
}

+ (id)interface
{
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&qword_100121E70);
  if (!WeakRetained)
  {
    v4 = [v2 interfaceProtocol];
    WeakRetained = [NSXPCInterface interfaceWithProtocol:v4];

    [v2 configureInterface:WeakRetained];
    objc_storeWeak(&qword_100121E70, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

@end