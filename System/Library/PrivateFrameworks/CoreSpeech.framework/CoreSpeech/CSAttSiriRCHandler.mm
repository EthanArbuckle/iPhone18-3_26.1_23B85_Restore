@interface CSAttSiriRCHandler
- (CSAttSiriEndpointerNode)endpointerNode;
- (CSAttSiriRCHandler)initWithEndpointerNode:(id)node uresNode:(id)uresNode;
- (CSAttSiriUresNode)uresNode;
- (void)addResultCandidateReceiver:(id)receiver;
- (void)getMitigationDecisionForRCIdWithCompletion:(unint64_t)completion requestId:(id)id completion:(id)a5;
@end

@implementation CSAttSiriRCHandler

- (CSAttSiriUresNode)uresNode
{
  WeakRetained = objc_loadWeakRetained(&self->_uresNode);

  return WeakRetained;
}

- (CSAttSiriEndpointerNode)endpointerNode
{
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);

  return WeakRetained;
}

- (void)getMitigationDecisionForRCIdWithCompletion:(unint64_t)completion requestId:(id)id completion:(id)a5
{
  idCopy = id;
  v9 = a5;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[CSAttSiriRCHandler getMitigationDecisionForRCIdWithCompletion:requestId:completion:]";
    v15 = 2048;
    completionCopy = completion;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s rcId: %lu", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_uresNode);
  v12 = [WeakRetained getMitigationDecisionForRCId:completion forRequestId:idCopy];

  if (v9)
  {
    v9[2](v9, v12);
  }
}

- (void)addResultCandidateReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E7568;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (CSAttSiriRCHandler)initWithEndpointerNode:(id)node uresNode:(id)uresNode
{
  nodeCopy = node;
  uresNodeCopy = uresNode;
  v15.receiver = self;
  v15.super_class = CSAttSiriRCHandler;
  v8 = [(CSAttSiriRCHandler *)&v15 init];
  if (v8)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[CSAttSiriRCHandler initWithEndpointerNode:uresNode:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    objc_storeWeak(&v8->_endpointerNode, nodeCopy);
    objc_storeWeak(&v8->_uresNode, uresNodeCopy);
    v10 = +[NSHashTable weakObjectsHashTable];
    resultCandidateReceivers = v8->_resultCandidateReceivers;
    v8->_resultCandidateReceivers = v10;

    v12 = [CSUtils getSerialQueueWithQOS:33 name:@"AttSiriRCHandler Queue" fixedPriority:kCSDefaultSerialQueueFixedPriority];
    queue = v8->_queue;
    v8->_queue = v12;
  }

  return v8;
}

@end