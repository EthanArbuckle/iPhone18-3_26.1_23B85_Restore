@interface UpdateStore
- (void)broadcastChangeNotificationIfNotCoalescing;
- (void)dealloc;
- (void)reloadFromServerWithCompletionBlock:(id)a3;
@end

@implementation UpdateStore

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for UpdateStore();
  [(ASDSoftwareUpdatesStore *)&v6 dealloc];
}

- (void)reloadFromServerWithCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_24EB9C6D8(v7, v6);
  sub_24E824448(v7);
}

- (void)broadcastChangeNotificationIfNotCoalescing
{
  v2 = self;
  sub_24EB9D214();
}

@end