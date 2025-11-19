@interface DelegateTrampoline_CBPairingAgentDelegate
- (_TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate)init;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
@end

@implementation DelegateTrampoline_CBPairingAgentDelegate

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_24AC75228(a3, v8);
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  v12 = a5;
  sub_24AC755C0(a3, a4, a5);
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_24AC75A88(a3, a4);
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  sub_24AC75F28(a3, a4, a5, a6);
}

- (_TtC15FindMyBluetoothP33_FB9F492088B4C388E3479FD29311B1A941DelegateTrampoline_CBPairingAgentDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end