@interface HoverTextServiceAXUIService
- (_TtC17HoverTextServices27HoverTextServiceAXUIService)init;
- (id)userInterfaceClient:(id)a3 accessQueueForProcessingMessageWithIdentifier:(int64_t)a4;
- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3;
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

- (id)userInterfaceClient:(id)a3 accessQueueForProcessingMessageWithIdentifier:(int64_t)a4
{
  v4 = [objc_opt_self() mainAccessQueue];

  return v4;
}

- (void)connectionWithServiceWasInterruptedForUserInterfaceClient:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_254610C2C(a3);
}

@end