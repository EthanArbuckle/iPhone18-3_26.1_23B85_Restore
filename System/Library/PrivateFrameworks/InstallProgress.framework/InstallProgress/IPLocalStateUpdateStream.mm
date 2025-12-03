@interface IPLocalStateUpdateStream
- (IPLocalStateUpdateStream)initWithSourceDeliveryQueue:(id)queue;
- (void)sink:(id)sink sendMessage:(id)message;
@end

@implementation IPLocalStateUpdateStream

- (IPLocalStateUpdateStream)initWithSourceDeliveryQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = IPLocalStateUpdateStream;
  v6 = [(IPLocalStateUpdateStream *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asyncDeliveryQueue, queue);
    v8 = [[IPLocalStateUpdateStreamSource alloc] initWithUpdateStream:v7];
    source = v7->_source;
    v7->_source = v8;

    v10 = [[IPLocalStateUpdateStreamSink alloc] initWithUpdateStream:v7];
    sink = v7->_sink;
    v7->_sink = v10;
  }

  return v7;
}

- (void)sink:(id)sink sendMessage:(id)message
{
  messageCopy = message;
  asyncDeliveryQueue = self->_asyncDeliveryQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__IPLocalStateUpdateStream_sink_sendMessage___block_invoke;
  v8[3] = &unk_2797B1E00;
  v8[4] = self;
  v9 = messageCopy;
  v7 = messageCopy;
  dispatch_async(asyncDeliveryQueue, v8);
}

@end