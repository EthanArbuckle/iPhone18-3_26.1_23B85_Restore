@interface DelegateTrampoline_CBPairingAgentDelegate
- (_TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate)init;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
@end

@implementation DelegateTrampoline_CBPairingAgentDelegate

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  selfCopy = self;
  sub_24AC75228(agent, pairingCopy);
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  selfCopy = self;
  errorCopy = error;
  sub_24AC755C0(agent, pairing, error);
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  agentCopy = agent;
  unpairCopy = unpair;
  selfCopy = self;
  sub_24AC75A88(agent, unpair);
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  selfCopy = self;
  sub_24AC75F28(agent, pairing, type, passkey);
}

- (_TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end