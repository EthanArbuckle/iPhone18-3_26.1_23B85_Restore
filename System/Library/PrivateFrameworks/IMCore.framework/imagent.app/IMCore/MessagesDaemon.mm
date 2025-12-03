@interface MessagesDaemon
- (ParentalControlsProtocol)parentalControls;
- (id)intentProcessor;
- (void)notifyClientsNewSetupInfoAvailableWithRequiredCapabilities:(unint64_t)capabilities;
- (void)setCurrentMessageContext:(id)context;
- (void)setIMessageIDSHandler:(id)handler;
- (void)setParentalControls:(id)controls;
@end

@implementation MessagesDaemon

- (ParentalControlsProtocol)parentalControls
{
  swift_beginAccess();
  parentalControls = self->parentalControls;
  v4 = swift_unknownObjectRetain();

  return v4;
}

- (void)setParentalControls:(id)controls
{
  swift_beginAccess();
  parentalControls = self->parentalControls;
  self->parentalControls = controls;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)setCurrentMessageContext:(id)context
{
  swift_beginAccess();
  currentMessageContext = self->currentMessageContext;
  self->currentMessageContext = context;
  contextCopy = context;
}

- (void)setIMessageIDSHandler:(id)handler
{
  swift_beginAccess();
  iMessageIDSHandler = self->iMessageIDSHandler;
  self->iMessageIDSHandler = handler;
  handlerCopy = handler;
}

- (void)notifyClientsNewSetupInfoAvailableWithRequiredCapabilities:(unint64_t)capabilities
{
  v3 = *&self->connectionManager[32];
  sub_10003526C(self->connectionManager, *&self->connectionManager[24]);

  sub_100053F04();
}

- (id)intentProcessor
{
  v2 = *(*self->_TtCs12_SwiftObject_opaque + 264);

  v2(v7, v3);

  sub_100036B88(v7, &v6, &qword_10008A4B0, &qword_10005E4C8);
  sub_1000334C8(&qword_10008A4B0, &qword_10005E4C8);
  v4 = sub_100054434();
  sub_100036BF0(v7, &qword_10008A4B0, &qword_10005E4C8);

  return v4;
}

@end