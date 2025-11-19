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
  WeakRetained = objc_loadWeakRetained(&interface_weakInterface);
  if (!WeakRetained)
  {
    v4 = MEMORY[0x1E696B0D0];
    v5 = [v2 interfaceProtocol];
    WeakRetained = [v4 interfaceWithProtocol:v5];

    [v2 configureInterface:WeakRetained];
    objc_storeWeak(&interface_weakInterface, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

@end