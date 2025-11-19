@interface AXLTTranscribedDataReceiver
- (AXLTTranscribedDataReceiver)initWithRequestType:(int64_t)a3 targetPID:(int)a4 handler:(id)a5 audioInfoBlock:(id)a6;
@end

@implementation AXLTTranscribedDataReceiver

- (AXLTTranscribedDataReceiver)initWithRequestType:(int64_t)a3 targetPID:(int)a4 handler:(id)a5 audioInfoBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = AXLTTranscribedDataReceiver;
  v12 = [(AXLTTranscribedDataReceiver *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_requestType = a3;
    v12->_targetPID = a4;
    v14 = _Block_copy(v10);
    callbackBlock = v13->_callbackBlock;
    v13->_callbackBlock = v14;

    v16 = _Block_copy(v11);
    audioInfoBlock = v13->_audioInfoBlock;
    v13->_audioInfoBlock = v16;
  }

  return v13;
}

@end