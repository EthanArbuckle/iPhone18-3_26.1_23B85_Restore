@interface SnippetService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC16EncoreXPCService14SnippetService)init;
- (void)echoWithEvent:(id)event;
- (void)handleEventWithEvent:(id)event;
- (void)publishWithEvent:(id)event;
- (void)subscribeWithCompletion:(id)completion;
@end

@implementation SnippetService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_24A043E18();

  return v9 & 1;
}

- (void)subscribeWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_24A04344C(sub_24A0443A8, v5);
}

- (void)handleEventWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_24A0435F8(eventCopy);
}

- (void)publishWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_24A043A60(eventCopy);
}

- (void)echoWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_24A043ADC(eventCopy);
}

- (_TtC16EncoreXPCService14SnippetService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end