@interface BUBufferedReadChannelHelper
- (BUBufferedReadChannel)bufferedReadChannel;
- (BUBufferedReadChannelHelper)init;
- (BUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)channel;
- (void)readWithHandler:(id)handler;
@end

@implementation BUBufferedReadChannelHelper

- (BUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)channel
{
  channelCopy = channel;
  v8.receiver = self;
  v8.super_class = BUBufferedReadChannelHelper;
  v5 = [(BUBufferedReadChannelHelper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_bufferedReadChannel, channelCopy);
  }

  return v6;
}

- (BUBufferedReadChannelHelper)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%@: %s", @"Do not call method", "[BUBufferedReadChannelHelper init]");
  v6 = objc_msgSend_exceptionWithName_reason_userInfo_(v2, v5, v3, v4, 0);
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_bufferedReadChannel);
  objc_msgSend_setStreamReadChannelSourceHandler_(WeakRetained, v5, handlerCopy);
}

- (BUBufferedReadChannel)bufferedReadChannel
{
  WeakRetained = objc_loadWeakRetained(&self->_bufferedReadChannel);

  return WeakRetained;
}

@end