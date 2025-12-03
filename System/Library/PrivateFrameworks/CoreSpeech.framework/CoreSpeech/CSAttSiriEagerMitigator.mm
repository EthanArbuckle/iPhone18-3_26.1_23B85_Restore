@interface CSAttSiriEagerMitigator
- (CSAttSiriEagerMitigator)init;
- (void)_attSiriUresNode:(id)node tcuGeneratedForRequestId:(id)id withNldaScore:(float)score withProcessedAudioDuration:(double)duration;
- (void)attSiriUresNode:(id)node tcuGeneratedForRequestId:(id)id withNldaScore:(float)score withProcessedAudioDuration:(double)duration;
- (void)requestEndedForId:(id)id;
- (void)requestStartedWithId:(id)id forRecordContext:(id)context;
- (void)setPrefetchedAsset:(id)asset;
@end

@implementation CSAttSiriEagerMitigator

- (void)attSiriUresNode:(id)node tcuGeneratedForRequestId:(id)id withNldaScore:(float)score withProcessedAudioDuration:(double)duration
{
  idCopy = id;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000170D4;
  v12[3] = &unk_10024E570;
  v12[4] = self;
  v13 = idCopy;
  durationCopy = duration;
  scoreCopy = score;
  v11 = idCopy;
  dispatch_async(queue, v12);
}

- (void)requestEndedForId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000172C0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)requestStartedWithId:(id)id forRecordContext:(id)context
{
  idCopy = id;
  contextCopy = context;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000173E0;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = contextCopy;
  v13 = idCopy;
  v9 = idCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (void)setPrefetchedAsset:(id)asset
{
  assetCopy = asset;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017604;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = assetCopy;
  v6 = assetCopy;
  dispatch_async(queue, v7);
}

- (CSAttSiriEagerMitigator)init
{
  v6.receiver = self;
  v6.super_class = CSAttSiriEagerMitigator;
  v2 = [(CSAttSiriEagerMitigator *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSAttSiriEagerMitigator queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)_attSiriUresNode:(id)node tcuGeneratedForRequestId:(id)id withNldaScore:(float)score withProcessedAudioDuration:(double)duration
{
  nodeCopy = node;
  idCopy = id;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017814;
  block[3] = &unk_10024E598;
  block[4] = self;
  v16 = idCopy;
  v17 = nodeCopy;
  scoreCopy = score;
  durationCopy = duration;
  v13 = nodeCopy;
  v14 = idCopy;
  dispatch_async(queue, block);
}

@end