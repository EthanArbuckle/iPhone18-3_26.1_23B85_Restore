@interface EncoreService
+ (EncoreService)service;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)broadcastWithEvent:(id)a3;
- (void)echoWithEvent:(id)a3;
- (void)handleEventWithEvent:(id)a3;
- (void)publishWithEvent:(id)a3;
- (void)registerWithClient:(id)a3 name:(id)a4 with:(id)a5;
- (void)subscribeWithCompletion:(id)a3;
@end

@implementation EncoreService

+ (EncoreService)service
{
  result = qword_28131A078;
  if (qword_28131A078 || (v3 = [objc_allocWithZone(type metadata accessor for EncoreService(0)) init], v4 = qword_28131A078, qword_28131A078 = v3, v4, (result = qword_28131A078) != 0))
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)broadcastWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A03D7EC(v4);
}

- (void)echoWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A03DE30(v4);
}

- (void)handleEventWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A03DEA4(v4);
}

- (void)subscribeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_24A03E30C(sub_24A041B38, v5);
}

- (void)publishWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A03E4B8(v4);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = objc_opt_self();
  v7 = a4;
  v8 = self;
  v9 = [v6 interfaceWithProtocol_];
  [v7 setExportedInterface_];

  [v7 setExportedObject_];
  [v7 resume];

  return 1;
}

- (void)registerWithClient:(id)a3 name:(id)a4 with:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_24A046390();
  v10 = v9;
  _Block_copy(v7);
  v11 = a3;
  v12 = self;
  sub_24A041444(v11, v8, v10, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end