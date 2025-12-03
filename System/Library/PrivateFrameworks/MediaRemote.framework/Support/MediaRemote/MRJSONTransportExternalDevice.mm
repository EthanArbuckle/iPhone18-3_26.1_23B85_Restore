@interface MRJSONTransportExternalDevice
- (id)_onWorkerQueue_createClientConnectionWithTransport:(id)transport;
@end

@implementation MRJSONTransportExternalDevice

- (id)_onWorkerQueue_createClientConnectionWithTransport:(id)transport
{
  v3 = qword_100529388;
  transportCopy = transport;
  if (v3 != -1)
  {
    sub_1003A8474();
  }

  v5 = [MRExternalJSONClientConnection alloc];
  v6 = [v5 initWithConnection:transportCopy replyQueue:qword_100529380];

  return v6;
}

@end