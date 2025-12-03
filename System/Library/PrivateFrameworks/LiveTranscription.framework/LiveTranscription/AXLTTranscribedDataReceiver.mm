@interface AXLTTranscribedDataReceiver
- (AXLTTranscribedDataReceiver)initWithRequestType:(int64_t)type targetPID:(int)d handler:(id)handler audioInfoBlock:(id)block;
@end

@implementation AXLTTranscribedDataReceiver

- (AXLTTranscribedDataReceiver)initWithRequestType:(int64_t)type targetPID:(int)d handler:(id)handler audioInfoBlock:(id)block
{
  handlerCopy = handler;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = AXLTTranscribedDataReceiver;
  v12 = [(AXLTTranscribedDataReceiver *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_requestType = type;
    v12->_targetPID = d;
    v14 = _Block_copy(handlerCopy);
    callbackBlock = v13->_callbackBlock;
    v13->_callbackBlock = v14;

    v16 = _Block_copy(blockCopy);
    audioInfoBlock = v13->_audioInfoBlock;
    v13->_audioInfoBlock = v16;
  }

  return v13;
}

@end