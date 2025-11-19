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
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&qword_100121E90);
  if (!WeakRetained)
  {
    v4 = [v2 interfaceProtocol];
    WeakRetained = [NSXPCInterface interfaceWithProtocol:v4];

    [v2 configureInterface:WeakRetained];
    objc_storeWeak(&qword_100121E90, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

@end