@interface IntentClientRequestHandler
- (_TtC7imagent26IntentClientRequestHandler)init;
- (void)requestContactsForIdentifiers:(id)identifiers reply:(id)reply;
@end

@implementation IntentClientRequestHandler

- (_TtC7imagent26IntentClientRequestHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7imagent26IntentClientRequestHandler_requiredCapabilities) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7imagent26IntentClientRequestHandler_requiredEntitlements) = &off_1000824F8;
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntentClientRequestHandler();
  return [(IntentClientRequestHandler *)&v3 init];
}

- (void)requestContactsForIdentifiers:(id)identifiers reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_1000541B4();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_100038094(v6, sub_1000382F8, v7);
}

@end