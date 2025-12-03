@interface UpdateStore
- (void)broadcastChangeNotificationIfNotCoalescing;
- (void)dealloc;
- (void)reloadFromServerWithCompletionBlock:(id)block;
@end

@implementation UpdateStore

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for UpdateStore();
  [(ASDSoftwareUpdatesStore *)&v6 dealloc];
}

- (void)reloadFromServerWithCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_24EB9D850;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_24EB9C6D8(v7, v6);
  sub_24E824448(v7);
}

- (void)broadcastChangeNotificationIfNotCoalescing
{
  selfCopy = self;
  sub_24EB9D214();
}

@end