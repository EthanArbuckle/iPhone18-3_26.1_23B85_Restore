@interface DTProcessorTraceTapMessageHandler
- (DTProcessorTraceTapMessageHandler)init;
- (DTProcessorTraceTapMessageHandler)initWithConfig:(id)config;
- (id)messageReceived:(id)received;
@end

@implementation DTProcessorTraceTapMessageHandler

- (id)messageReceived:(id)received
{
  receivedCopy = received;
  selfCopy = self;
  v6 = sub_24800718C(receivedCopy);

  return v6;
}

- (DTProcessorTraceTapMessageHandler)initWithConfig:(id)config
{
  *(&self->super.super.isa + OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFile) = 0;
  v5 = OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFileURL;
  v6 = sub_248030778();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for ProcessorTraceTapMessageHandler();
  return [(DTTapMessageHandler *)&v8 initWithConfig:config];
}

- (DTProcessorTraceTapMessageHandler)init
{
  *(&self->super.super.isa + OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFile) = 0;
  v3 = OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFileURL;
  v4 = sub_248030778();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProcessorTraceTapMessageHandler();
  return [(DTProcessorTraceTapMessageHandler *)&v6 init];
}

@end