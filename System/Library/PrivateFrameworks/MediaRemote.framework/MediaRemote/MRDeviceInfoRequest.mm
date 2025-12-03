@interface MRDeviceInfoRequest
+ (MRDeviceInfo)localDeviceInfo;
+ (id)cachedDeviceInfoForOrigin:(id)origin;
+ (id)deviceInfoForOrigin:(id)origin;
+ (void)deviceInfoForOrigin:(id)origin queue:(id)queue completion:(id)completion;
+ (void)deviceInfoForUID:(id)d queue:(id)queue completion:(id)completion;
@end

@implementation MRDeviceInfoRequest

+ (MRDeviceInfo)localDeviceInfo
{
  v2 = objc_opt_class();
  v3 = +[MROrigin localOrigin];
  v4 = [v2 deviceInfoForOrigin:v3];

  return v4;
}

+ (id)deviceInfoForOrigin:(id)origin
{
  originCopy = origin;
  if (originCopy)
  {
    origin = originCopy;
    goto LABEL_4;
  }

  v6 = +[MRMediaRemoteServiceClient sharedServiceClient];
  activePlayerPath = [v6 activePlayerPath];
  origin = [activePlayerPath origin];

  if (origin)
  {
LABEL_4:
    v8 = [self cachedDeviceInfoForOrigin:origin];
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v9 = [[MRPlayerPath alloc] initWithOrigin:origin client:0 player:0];
  v10 = MRGetSharedService();
  v8 = MRMediaRemoteServiceCopyDeviceInfo(v10, v9);

LABEL_6:
  v11 = [v8 copy];

  return v11;
}

+ (id)cachedDeviceInfoForOrigin:(id)origin
{
  originCopy = origin;
  if (!originCopy)
  {
    [(MRDeviceInfoRequest *)a2 cachedDeviceInfoForOrigin:self];
  }

  v6 = [[MRPlayerPath alloc] initWithOrigin:originCopy client:0 player:0];
  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 originClientRequestsForPlayerPath:v6];

  deviceInfo = [v8 deviceInfo];
  if (!deviceInfo)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __49__MRDeviceInfoRequest_cachedDeviceInfoForOrigin___block_invoke;
    v15 = &unk_1E769C018;
    selfCopy = self;
    v16 = originCopy;
    if (cachedDeviceInfoForOrigin__onceToken != -1)
    {
      dispatch_once(&cachedDeviceInfoForOrigin__onceToken, &v12);
    }
  }

  v10 = [deviceInfo copy];

  return v10;
}

void __49__MRDeviceInfoRequest_cachedDeviceInfoForOrigin___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = qos_class_self();
  v5 = dispatch_get_global_queue(v4, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__MRDeviceInfoRequest_cachedDeviceInfoForOrigin___block_invoke_2;
  v8[3] = &unk_1E76A46D8;
  v7 = *(a1 + 32);
  v6 = v7;
  v9 = v7;
  [v2 deviceInfoForOrigin:v3 queue:v5 completion:v8];
}

void __49__MRDeviceInfoRequest_cachedDeviceInfoForOrigin___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v4 = [v3 notificationClient];
    v5 = [v4 notificationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MRDeviceInfoRequest_cachedDeviceInfoForOrigin___block_invoke_3;
    block[3] = &unk_1E769C018;
    v7 = *(a1 + 32);
    v6 = v7;
    v9 = v7;
    dispatch_async(v5, block);
  }
}

void __49__MRDeviceInfoRequest_cachedDeviceInfoForOrigin___block_invoke_3(uint64_t a1)
{
  v7 = [*(a1 + 40) cachedDeviceInfoForOrigin:*(a1 + 32)];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [[MRPlayerPath alloc] initWithOrigin:*(a1 + 32) client:0 player:0];
  MRAddPlayerPathToUserInfo(v2, v3);

  MRAddDeviceInfoToUserInfo(v2, v7);
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v5 = [v4 notificationClient];
  v6 = MRCreateDecodedUserInfo(v2);
  [v5 postNotification:@"kMRDeviceInfoDidChangeNotification" userInfo:v6 object:0];
}

+ (void)deviceInfoForOrigin:(id)origin queue:(id)queue completion:(id)completion
{
  originCopy = origin;
  queueCopy = queue;
  completionCopy = completion;
  if (completionCopy)
  {
    if (!queueCopy)
    {
      queueCopy = MEMORY[0x1E69E96A0];
      v10 = MEMORY[0x1E69E96A0];
    }

    kdebug_trace();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__MRDeviceInfoRequest_deviceInfoForOrigin_queue_completion___block_invoke;
    v21[3] = &unk_1E76A4728;
    queueCopy = queueCopy;
    v22 = queueCopy;
    v23 = completionCopy;
    v11 = MEMORY[0x1A58E3570](v21);
    v12 = v11;
    if (originCopy)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__MRDeviceInfoRequest_deviceInfoForOrigin_queue_completion___block_invoke_4;
      block[3] = &unk_1E769AB28;
      v13 = &v20;
      v20 = v11;
      v19 = originCopy;
      v14 = v12;
      dispatch_async(queueCopy, block);
    }

    else
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __60__MRDeviceInfoRequest_deviceInfoForOrigin_queue_completion___block_invoke_5;
      v16[3] = &unk_1E76A4750;
      v13 = &v17;
      v17 = v11;
      v15 = v11;
      MRMediaRemoteGetActiveOrigin(queueCopy, v16);
    }
  }
}

void __60__MRDeviceInfoRequest_deviceInfoForOrigin_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MRPlayerPath alloc] initWithOrigin:v3 client:0 player:0];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __60__MRDeviceInfoRequest_deviceInfoForOrigin_queue_completion___block_invoke_2;
  v12 = &unk_1E76A4700;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v5 = MEMORY[0x1A58E3570](&v9);
  if (v3)
  {
    v6 = [MRNowPlayingOriginClientManager sharedManager:v9];
    v7 = [v6 originClientRequestsForPlayerPath:v4];

    [v7 handleDeviceInfoRequestWithCompletion:v5];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = [v8 initWithMRError:{5, v9, v10, v11, v12, v13}];
    (v5)[2](v5, 0, v7);
  }
}

void __60__MRDeviceInfoRequest_deviceInfoForOrigin_queue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MRDeviceInfoRequest_deviceInfoForOrigin_queue_completion___block_invoke_3;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

+ (void)deviceInfoForUID:(id)d queue:(id)queue completion:(id)completion
{
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRDeviceInfoRequest deviceInfoForUID:a2 queue:self completion:?];
    if (queueCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!queueCopy)
  {
LABEL_3:
    queueCopy = MEMORY[0x1E69E96A0];
    v12 = MEMORY[0x1E69E96A0];
  }

LABEL_4:
  v13 = [[MRDestination alloc] initWithOutputDeviceUID:dCopy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__MRDeviceInfoRequest_deviceInfoForUID_queue_completion___block_invoke;
  v16[3] = &unk_1E76A4778;
  v17 = queueCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = queueCopy;
  [MRDestinationResolver resolveDestination:v13 level:0 timeout:v16 completion:7.0];
}

void __57__MRDeviceInfoRequest_deviceInfoForUID_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 origin];
  v7 = *(a1 + 32);
  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__MRDeviceInfoRequest_deviceInfoForUID_queue_completion___block_invoke_2;
    v12[3] = &unk_1E769C298;
    v8 = &v13;
    v13 = *(a1 + 40);
    MRMediaRemoteGetDeviceInfo(v6, v7, v12);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MRDeviceInfoRequest_deviceInfoForUID_queue_completion___block_invoke_3;
    block[3] = &unk_1E769AB28;
    v8 = &v11;
    v11 = *(a1 + 40);
    v10 = v5;
    dispatch_async(v7, block);
  }
}

void __57__MRDeviceInfoRequest_deviceInfoForUID_queue_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:5];
    (*(v1 + 16))(v1, 0, v4);
  }
}

+ (void)cachedDeviceInfoForOrigin:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRDeviceInfoRequest.m" lineNumber:46 description:@"origin cannot be nil"];
}

+ (void)deviceInfoForUID:(uint64_t)a1 queue:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRDeviceInfoRequest.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

@end