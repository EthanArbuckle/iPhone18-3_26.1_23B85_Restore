@interface NetworkQualityXPC
- (NetworkQualityXPC)init;
- (void)findLocalMeasurementEndpoints:(id)endpoints;
- (void)performMeasurementWithConfiguration:(id)configuration reply:(id)reply;
- (void)progress:(id)progress;
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

- (void)performMeasurementWithConfiguration:(id)configuration reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000103C;
  block[3] = &unk_1000042B8;
  block[4] = self;
  v12 = configurationCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (void)progress:(id)progress
{
  progress = self->_progress;
  v4 = [(NSProgress *)progress completedUnitCount]+ 1;

  [(NSProgress *)progress setCompletedUnitCount:v4];
}

- (void)findLocalMeasurementEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000012F8;
  block[3] = &unk_100004308;
  v8 = endpointsCopy;
  v6 = endpointsCopy;
  dispatch_async(queue, block);
}

@end