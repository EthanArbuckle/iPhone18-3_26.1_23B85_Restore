@interface CSAttSiriMotionNode
- (CSAttSiriController)attSiriController;
- (CSAttSiriMotionNode)initWithAttSiriController:(id)a3;
- (void)_hasDeviceMotionAvailable:(id)a3;
- (void)addReceiver:(id)a3;
- (void)removeReceiver:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation CSAttSiriMotionNode

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (void)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ECFE0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_hasDeviceMotionAvailable:(id)a3
{
  v27[0] = @"timestamp";
  v4 = a3;
  v24 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
  v28[0] = v24;
  v27[1] = @"pitch";
  v23 = [v4 attitude];
  [v23 pitch];
  v22 = [NSNumber numberWithDouble:?];
  v28[1] = v22;
  v27[2] = @"yaw";
  v21 = [v4 attitude];
  [v21 yaw];
  v20 = [NSNumber numberWithDouble:?];
  v28[2] = v20;
  v27[3] = @"roll";
  v19 = [v4 attitude];
  [v19 roll];
  v5 = [NSNumber numberWithDouble:?];
  v28[3] = v5;
  v27[4] = @"x";
  [v4 userAcceleration];
  v6 = [NSNumber numberWithDouble:?];
  v28[4] = v6;
  v27[5] = @"y";
  [v4 userAcceleration];
  v8 = [NSNumber numberWithDouble:v7];
  v28[5] = v8;
  v27[6] = @"z";
  [v4 userAcceleration];
  v10 = v9;

  v11 = [NSNumber numberWithDouble:v10];
  v28[6] = v11;
  v27[7] = @"wakeGestureHostTime";
  v12 = [NSNumber numberWithUnsignedLongLong:[(CSGestureMonitor *)self->_monitor wakeGestureTimestamp]];
  v28[7] = v12;
  v27[8] = @"isHandHeld";
  v13 = [NSNumber numberWithBool:[(CSGestureMonitor *)self->_monitor isTriggerHandheld]];
  v28[8] = v13;
  v27[9] = @"vehicleConnected";
  v14 = [NSNumber numberWithBool:[(CMMotionActivity *)self->_motionActivity isVehicleConnected]];
  v28[9] = v14;
  v27[10] = @"vehicleMotionHint";
  v15 = [NSNumber numberWithBool:[(CMMotionActivity *)self->_motionActivity isVehicleMotionHint]];
  v28[10] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:11];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ED3C8;
  block[3] = &unk_100253C48;
  block[4] = self;
  v26 = v16;
  v18 = v16;
  dispatch_async(queue, block);
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ED560;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ED888;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)addReceiver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ED974;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSAttSiriMotionNode)initWithAttSiriController:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSAttSiriMotionNode;
  v5 = [(CSAttSiriMotionNode *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_create("CSAttSiriMotionNode queue", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v5->_type = 11;
    v8 = +[NSHashTable weakObjectsHashTable];
    receivers = v5->_receivers;
    v5->_receivers = v8;

    v5->_isReady = 0;
    requiredNodes = v5->_requiredNodes;
    v5->_requiredNodes = 0;

    objc_storeWeak(&v5->_attSiriController, v4);
    mhId = v5->_mhId;
    v5->_mhId = 0;
  }

  return v5;
}

@end