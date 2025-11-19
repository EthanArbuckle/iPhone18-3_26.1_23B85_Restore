@interface DSRemotePairingWrapper
- (DSRemotePairingWrapper)init;
- (id)removeAllPairedDevices;
- (void)removeSelectedDevices:(id)a3 onQueue:(id)a4 withCompletion:(id)a5;
@end

@implementation DSRemotePairingWrapper

- (DSRemotePairingWrapper)init
{
  v3 = objc_alloc_init(_TtC15DSRemotePairing13RemotePairing);
  [(DSRemotePairingWrapper *)self setRemotePairing:v3];

  return self;
}

- (id)removeAllPairedDevices
{
  v2 = [(DSRemotePairingWrapper *)self remotePairing];
  v3 = [v2 removeAllPairedDevices];

  return v3;
}

- (void)removeSelectedDevices:(id)a3 onQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DSRemotePairingWrapper *)self remotePairing];
  [v11 removeSelectedDevices:v10 invokingCompletionHandlerOn:v9 completion:v8];
}

@end