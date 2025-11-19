@interface IPLocalStateUpdateStream
- (IPLocalStateUpdateStream)initWithSourceDeliveryQueue:(id)a3;
- (void)sink:(id)a3 sendMessage:(id)a4;
@end

@implementation IPLocalStateUpdateStream

- (IPLocalStateUpdateStream)initWithSourceDeliveryQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = IPLocalStateUpdateStream;
  v6 = [(IPLocalStateUpdateStream *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asyncDeliveryQueue, a3);
    v8 = [[IPLocalStateUpdateStreamSource alloc] initWithUpdateStream:v7];
    source = v7->_source;
    v7->_source = v8;

    v10 = [[IPLocalStateUpdateStreamSink alloc] initWithUpdateStream:v7];
    sink = v7->_sink;
    v7->_sink = v10;
  }

  return v7;
}

- (void)sink:(id)a3 sendMessage:(id)a4
{
  v5 = a4;
  asyncDeliveryQueue = self->_asyncDeliveryQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__IPLocalStateUpdateStream_sink_sendMessage___block_invoke;
  v8[3] = &unk_2797B1E00;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(asyncDeliveryQueue, v8);
}

@end