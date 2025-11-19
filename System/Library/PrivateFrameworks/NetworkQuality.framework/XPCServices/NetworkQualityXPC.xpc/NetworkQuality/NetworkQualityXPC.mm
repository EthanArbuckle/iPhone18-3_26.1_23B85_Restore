@interface NetworkQualityXPC
- (NetworkQualityXPC)init;
- (void)findLocalMeasurementEndpoints:(id)a3;
- (void)performMeasurementWithConfiguration:(id)a3 reply:(id)a4;
- (void)progress:(id)a3;
@end

@implementation NetworkQualityXPC

- (NetworkQualityXPC)init
{
  v7.receiver = self;
  v7.super_class = NetworkQualityXPC;
  v2 = [(NetworkQualityXPC *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.network-quality.NetworkQualityXPC", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_stopProcessing = 0;
  }

  return v2;
}

- (void)performMeasurementWithConfiguration:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000103C;
  block[3] = &unk_1000042B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)progress:(id)a3
{
  progress = self->_progress;
  v4 = [(NSProgress *)progress completedUnitCount]+ 1;

  [(NSProgress *)progress setCompletedUnitCount:v4];
}

- (void)findLocalMeasurementEndpoints:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000012F8;
  block[3] = &unk_100004308;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

@end