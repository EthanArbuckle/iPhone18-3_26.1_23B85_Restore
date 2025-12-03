@interface HoverTextServiceAXUIService
- (_TtC17HoverTextServices27HoverTextServiceAXUIService)init;
- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client;
@end

@implementation HoverTextServiceAXUIService

- (_TtC17HoverTextServices27HoverTextServiceAXUIService)init
{
  *(&self->super.isa + OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService__client) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService_hoverTextEnabled) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17HoverTextServices27HoverTextServiceAXUIService_hoverTextTypingEnabled) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for HoverTextServiceAXUIService();
  return [(HoverTextServiceAXUIService *)&v3 init];
}

- (id)userInterfaceClient:(id)client accessQueueForProcessingMessageWithIdentifier:(int64_t)identifier
{
  mainAccessQueue = [objc_opt_self() mainAccessQueue];

  return mainAccessQueue;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  sub_254610C2C(client);
}

@end