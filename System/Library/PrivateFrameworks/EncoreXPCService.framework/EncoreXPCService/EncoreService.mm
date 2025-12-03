@interface EncoreService
+ (EncoreService)service;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)broadcastWithEvent:(id)event;
- (void)echoWithEvent:(id)event;
- (void)handleEventWithEvent:(id)event;
- (void)publishWithEvent:(id)event;
- (void)registerWithClient:(id)client name:(id)name with:(id)with;
- (void)subscribeWithCompletion:(id)completion;
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

- (void)broadcastWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_24A03D7EC(eventCopy);
}

- (void)echoWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_24A03DE30(eventCopy);
}

- (void)handleEventWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_24A03DEA4(eventCopy);
}

- (void)subscribeWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_24A03E30C(sub_24A041B38, v5);
}

- (void)publishWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_24A03E4B8(eventCopy);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v6 = objc_opt_self();
  connectionCopy = connection;
  selfCopy = self;
  interfaceWithProtocol_ = [v6 interfaceWithProtocol_];
  [connectionCopy setExportedInterface_];

  [connectionCopy setExportedObject_];
  [connectionCopy resume];

  return 1;
}

- (void)registerWithClient:(id)client name:(id)name with:(id)with
{
  v7 = _Block_copy(with);
  v8 = sub_24A046390();
  v10 = v9;
  _Block_copy(v7);
  clientCopy = client;
  selfCopy = self;
  sub_24A041444(clientCopy, v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

@end