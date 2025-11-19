@interface CSAttSiriEagerMitigator
- (CSAttSiriEagerMitigator)init;
- (void)_attSiriUresNode:(id)a3 tcuGeneratedForRequestId:(id)a4 withNldaScore:(float)a5 withProcessedAudioDuration:(double)a6;
- (void)attSiriUresNode:(id)a3 tcuGeneratedForRequestId:(id)a4 withNldaScore:(float)a5 withProcessedAudioDuration:(double)a6;
- (void)requestEndedForId:(id)a3;
- (void)requestStartedWithId:(id)a3 forRecordContext:(id)a4;
- (void)setPrefetchedAsset:(id)a3;
@end

@implementation CSAttSiriEagerMitigator

- (void)attSiriUresNode:(id)a3 tcuGeneratedForRequestId:(id)a4 withNldaScore:(float)a5 withProcessedAudioDuration:(double)a6
{
  v9 = a4;
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000170D4;
  v12[3] = &unk_10024E570;
  v12[4] = self;
  v13 = v9;
  v14 = a6;
  v15 = a5;
  v11 = v9;
  dispatch_async(queue, v12);
}

- (void)requestEndedForId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000172C0;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)requestStartedWithId:(id)a3 forRecordContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000173E0;
  block[3] = &unk_100253680;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)setPrefetchedAsset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017604;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)_attSiriUresNode:(id)a3 tcuGeneratedForRequestId:(id)a4 withNldaScore:(float)a5 withProcessedAudioDuration:(double)a6
{
  v10 = a3;
  v11 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017814;
  block[3] = &unk_10024E598;
  block[4] = self;
  v16 = v11;
  v17 = v10;
  v19 = a5;
  v18 = a6;
  v13 = v10;
  v14 = v11;
  dispatch_async(queue, block);
}

@end