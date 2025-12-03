@interface MRDAirPlayLeaderInfoPublisher
- (BOOL)isValidOutputDevice:(id)device;
- (MRDAirPlayLeaderInfoPublisher)init;
- (MRDAirPlayLeaderInfoPublisher)initWithOrigin:(id)origin outputContext:(id)context;
- (MRDeviceInfo)deviceInfo;
- (id)currentData;
- (void)handleDeviceInfoDidChange:(id)change;
- (void)publish;
- (void)publishToOutputDevices:(id)devices;
- (void)setDeviceInfo:(id)info;
@end

@implementation MRDAirPlayLeaderInfoPublisher

- (MRDAirPlayLeaderInfoPublisher)initWithOrigin:(id)origin outputContext:(id)context
{
  originCopy = origin;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = MRDAirPlayLeaderInfoPublisher;
  v9 = [(MRDAirPlayLeaderInfoPublisher *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_origin, origin);
    objc_storeStrong(&v10->_outputContext, context);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.MediaRemote.MRDAirPlayLeaderInfoPublisher", v11);
    workerQueue = v10->_workerQueue;
    v10->_workerQueue = v12;

    v14 = +[MRDMediaRemoteServer server];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100090CC4;
    v16[3] = &unk_1004B6D08;
    v17 = v10;
    [v14 addMediaRemoteSeverStartedHandler:v16];
  }

  return v10;
}

- (MRDAirPlayLeaderInfoPublisher)init
{
  v3 = +[MROrigin localOrigin];
  v4 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];
  v5 = [(MRDAirPlayLeaderInfoPublisher *)self initWithOrigin:v3 outputContext:v4];

  return v5;
}

- (MRDeviceInfo)deviceInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deviceInfo;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setDeviceInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_deviceInfo;
  v7 = infoCopy;
  v11 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    v8 = [(MRDeviceInfo *)v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(MRDeviceInfo *)v11 copy];
      deviceInfo = selfCopy->_deviceInfo;
      selfCopy->_deviceInfo = v9;

      [(MRDAirPlayLeaderInfoPublisher *)selfCopy publish];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)handleDeviceInfoDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = MRGetOriginFromUserInfo();

  origin = [(MRDAirPlayLeaderInfoPublisher *)self origin];
  v7 = [v5 isEqual:origin];

  if (v7)
  {
    userInfo2 = [changeCopy userInfo];
    v9 = MRGetDeviceInfoFromUserInfo();
    [(MRDAirPlayLeaderInfoPublisher *)self setDeviceInfo:v9];
  }
}

- (BOOL)isValidOutputDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy deviceType] == 1 && objc_msgSend(deviceCopy, "deviceSubtype") != 1;

  return v4;
}

- (id)currentData
{
  v3 = objc_alloc_init(_MRAirPlayLeaderInfoProtobuf);
  deviceInfo = [(MRDAirPlayLeaderInfoPublisher *)self deviceInfo];
  protobuf = [deviceInfo protobuf];
  [v3 setDeviceInfo:protobuf];

  data = [v3 data];

  return data;
}

- (void)publishToOutputDevices:(id)devices
{
  devicesCopy = devices;
  workerQueue = [(MRDAirPlayLeaderInfoPublisher *)self workerQueue];
  dispatch_assert_queue_V2(workerQueue);

  if ([devicesCopy count])
  {
    currentData = [(MRDAirPlayLeaderInfoPublisher *)self currentData];
    if (currentData)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = devicesCopy;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            avOutputDevice = [*(*(&v13 + 1) + 8 * v11) avOutputDevice];
            [avOutputDevice setMediaRemoteData:currentData completionHandler:&stru_1004B95E0];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)publish
{
  workerQueue = [(MRDAirPlayLeaderInfoPublisher *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000912EC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

@end