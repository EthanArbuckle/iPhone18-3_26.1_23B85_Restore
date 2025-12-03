@interface IXClientDelegateProtocolInterface
+ (id)interface;
+ (id)new;
- (IXClientDelegateProtocolInterface)init;
@end

@implementation IXClientDelegateProtocolInterface

- (IXClientDelegateProtocolInterface)init
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
  WeakRetained = objc_loadWeakRetained(&qword_100121E90);
  if (!WeakRetained)
  {
    interfaceProtocol = [selfCopy interfaceProtocol];
    WeakRetained = [NSXPCInterface interfaceWithProtocol:interfaceProtocol];

    [selfCopy configureInterface:WeakRetained];
    objc_storeWeak(&qword_100121E90, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

@end