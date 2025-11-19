@interface MRJSONTransportExternalDevice
- (id)_onWorkerQueue_createClientConnectionWithTransport:(id)a3;
@end

@implementation MRJSONTransportExternalDevice

- (id)_onWorkerQueue_createClientConnectionWithTransport:(id)a3
{
  v3 = qword_100529388;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1003A8474();
  }

  v5 = [MRExternalJSONClientConnection alloc];
  v6 = [v5 initWithConnection:v4 replyQueue:qword_100529380];

  return v6;
}

@end