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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&interface_weakInterface);
  if (!WeakRetained)
  {
    v4 = MEMORY[0x1E696B0D0];
    interfaceProtocol = [selfCopy interfaceProtocol];
    WeakRetained = [v4 interfaceWithProtocol:interfaceProtocol];

    [selfCopy configureInterface:WeakRetained];
    objc_storeWeak(&interface_weakInterface, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

@end