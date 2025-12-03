@interface DSRemotePairingWrapper
- (DSRemotePairingWrapper)init;
- (id)removeAllPairedDevices;
- (void)removeSelectedDevices:(id)devices onQueue:(id)queue withCompletion:(id)completion;
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
  remotePairing = [(DSRemotePairingWrapper *)self remotePairing];
  removeAllPairedDevices = [remotePairing removeAllPairedDevices];

  return removeAllPairedDevices;
}

- (void)removeSelectedDevices:(id)devices onQueue:(id)queue withCompletion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  devicesCopy = devices;
  remotePairing = [(DSRemotePairingWrapper *)self remotePairing];
  [remotePairing removeSelectedDevices:devicesCopy invokingCompletionHandlerOn:queueCopy completion:completionCopy];
}

@end