@interface MRAVOutputContext
+ (OS_dispatch_queue)notificationQueue;
- (BOOL)containsLocalDevice;
- (BOOL)containsOutputDevice:(id)a3;
- (BOOL)containsOutputDeviceUID:(id)a3;
- (BOOL)isVolumeMuted;
- (BOOL)supportsMultipleBluetoothOutputDevices;
- (BOOL)supportsVolumeControl;
- (MRAVOutputDevice)predictedOutputDevice;
- (NSArray)outputDeviceUIDs;
- (NSArray)outputDevices;
- (NSArray)outputDevicesSnapshot;
- (NSArray)personalDeviceUIDs;
- (NSArray)personalDevices;
- (NSArray)predictedOutputDeviceUIDs;
- (NSString)contextID;
- (float)volume;
- (id)outputDeviceForUID:(id)a3;
- (unsigned)type;
- (unsigned)volumeControlCapabilities;
- (void)_compareOutputDeviceList:(id)a3 withNewOutputDeviceList:(id)a4;
- (void)_notfiyOutputDeviceRemoved:(id)a3;
- (void)_notifyChangesInOutputDevicesWithAdded:(id)a3 removed:(id)a4 updated:(id)a5 previous:(id)a6 newDevices:(id)a7;
- (void)_notifyOutputDeviceAdded:(id)a3;
- (void)_notifyOutputDeviceChanged:(id)a3;
- (void)_reloadOutputDevices;
- (void)_reloadWithOutputDevices:(id)a3;
- (void)_scheduleOutputContextDeviceDidChangeNotification;
- (void)_scheduleOutputContextDevicesDidChangeNotification;
- (void)_scheduleOutputContextDidChangeNotification;
- (void)adjustVolume:(int64_t)a3 details:(id)a4;
- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5;
- (void)removeAllOutputDevicesWithCallbackQueue:(id)a3 block:(id)a4;
- (void)resetPredictedOutputDevice;
- (void)setOutputDevices:(id)a3;
- (void)setVolume:(float)a3 details:(id)a4;
- (void)setVolumeMuted:(BOOL)a3 details:(id)a4;
@end

@implementation MRAVOutputContext

- (NSArray)outputDevices
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_outputDevices copy];
  objc_sync_exit(v2);

  return v3;
}

- (NSArray)outputDevicesSnapshot
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSArray *)v2->_outputDevicesSnapshot copy];
  objc_sync_exit(v2);

  return v3;
}

+ (OS_dispatch_queue)notificationQueue
{
  if (notificationQueue___once != -1)
  {
    +[MRAVOutputContext notificationQueue];
  }

  v3 = notificationQueue_queue;

  return v3;
}

void __38__MRAVOutputContext_notificationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MRAVOutputContext.notificationQueue", v2);
  v1 = notificationQueue_queue;
  notificationQueue_queue = v0;
}

- (void)_scheduleOutputContextDidChangeNotification
{
  v3 = [objc_opt_class() notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRAVOutputContext__scheduleOutputContextDidChangeNotification__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(v3, block);
}

void __64__MRAVOutputContext__scheduleOutputContextDidChangeNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MRAVOutputContextDidChangeNotification" object:*(a1 + 32)];
}

- (void)_scheduleOutputContextDeviceDidChangeNotification
{
  v3 = [objc_opt_class() notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MRAVOutputContext__scheduleOutputContextDeviceDidChangeNotification__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_scheduleOutputContextDevicesDidChangeNotification
{
  v3 = [objc_opt_class() notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__MRAVOutputContext__scheduleOutputContextDevicesDidChangeNotification__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(v3, block);
}

- (NSString)contextID
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext contextID]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (unsigned)type
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext type]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setOutputDevices:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v4;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v13 = [MRAVDistantOutputDevice alloc];
        v14 = [v12 descriptor];
        v15 = [(MRAVDistantOutputDevice *)v13 initWithDescriptor:v14];
        [(NSArray *)v6 addObject:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v16 = self;
  objc_sync_enter(v16);
  outputDevices = v16->_outputDevices;
  v16->_outputDevices = v7;
  v18 = v7;

  outputDevicesSnapshot = v16->_outputDevicesSnapshot;
  v16->_outputDevicesSnapshot = v6;

  objc_sync_exit(v16);
  [v5 timeIntervalSinceNow];
  if (v20 < -0.1)
  {
    v21 = _MRLogForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MRAVOutputContext setOutputDevices:v5];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (NSArray)outputDeviceUIDs
{
  v2 = [(MRAVOutputContext *)self outputDevices];
  v3 = [v2 mr_compactMap:&__block_literal_global_49];

  return v3;
}

- (NSArray)personalDevices
{
  v2 = [(MRAVOutputContext *)self outputDevices];
  v3 = [v2 mr_compactMap:&__block_literal_global_130];

  return v3;
}

void *__36__MRAVOutputContext_personalDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPersonalRoute])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSArray)personalDeviceUIDs
{
  v2 = [(MRAVOutputContext *)self personalDevices];
  v3 = [v2 mr_compactMap:&__block_literal_global_132];

  return v3;
}

- (BOOL)containsOutputDevice:(id)a3
{
  v4 = [a3 uid];
  LOBYTE(self) = [(MRAVOutputContext *)self containsOutputDeviceUID:v4];

  return self;
}

- (BOOL)containsOutputDeviceUID:(id)a3
{
  v3 = [(MRAVOutputContext *)self outputDeviceForUID:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)outputDeviceForUID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MRAVOutputContext *)self outputDevices];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 containsUID:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)containsLocalDevice
{
  v2 = [(MRAVOutputContext *)self outputDevices];
  v3 = [v2 msv_firstWhere:&__block_literal_global_135];
  v4 = v3 != 0;

  return v4;
}

- (MRAVOutputDevice)predictedOutputDevice
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext predictedOutputDevice]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (NSArray)predictedOutputDeviceUIDs
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext predictedOutputDeviceUIDs]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (unsigned)volumeControlCapabilities
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext volumeControlCapabilities]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)supportsVolumeControl
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext supportsVolumeControl]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (float)volume
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext volume]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setVolume:(float)a3 details:(id)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext setVolume:details:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)setVolumeMuted:(BOOL)a3 details:(id)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext setVolumeMuted:details:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)isVolumeMuted
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext isVolumeMuted]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)adjustVolume:(int64_t)a3 details:(id)a4
{
  v4 = a4;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext adjustVolume:details:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)supportsMultipleBluetoothOutputDevices
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext supportsMultipleBluetoothOutputDevices]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D930];
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext modifyTopologyWithRequest:withReplyQueue:completion:]"];
  v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_reloadOutputDevices
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext _reloadOutputDevices]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)_reloadWithOutputDevices:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [(MRAVOutputContext *)self outputDevicesSnapshot];
  v7 = [v4 setWithArray:v6];

  [(MRAVOutputContext *)self setOutputDevices:v5];
  v8 = MEMORY[0x1E695DFD8];
  v9 = [(MRAVOutputContext *)self outputDevicesSnapshot];
  v10 = [v8 setWithArray:v9];

  v11 = [v5 count];
  if (v11 != [v10 count])
  {
    v12 = _MRLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [MRAVOutputContext _reloadWithOutputDevices:v12];
    }
  }

  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [v7 allObjects];
  v15 = [v14 mr_allOutputDevices];
  v16 = [v10 allObjects];
  v17 = [v16 mr_allOutputDevices];
  [(MRAVOutputContext *)self _compareOutputDeviceList:v15 withNewOutputDeviceList:v17];

  [v13 timeIntervalSinceNow];
  if (v18 < -0.1)
  {
    v19 = _MRLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MRAVOutputContext _reloadWithOutputDevices:v13];
    }
  }
}

- (void)_compareOutputDeviceList:(id)a3 withNewOutputDeviceList:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v53;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v12 = v6;
        v13 = [v12 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v49;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v49 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v48 + 1) + 8 * j);
              if ([v11 isEqualFuzzy:v17])
              {
                [v38 addObject:v17];

                goto LABEL_16;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v48 objects:v58 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        [v37 addObject:v11];
LABEL_16:
        ;
      }

      v8 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v44 + 1) + 8 * k);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v24 = obj;
        v25 = [v24 countByEnumeratingWithState:&v40 objects:v56 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v41;
          while (2)
          {
            for (m = 0; m != v26; ++m)
            {
              if (*v41 != v27)
              {
                objc_enumerationMutation(v24);
              }

              if ([*(*(&v40 + 1) + 8 * m) isEqualFuzzy:v23])
              {

                goto LABEL_33;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v40 objects:v56 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        [v36 addObject:v23];
LABEL_33:
        ;
      }

      v20 = [v18 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v20);
  }

  v29 = [objc_opt_class() notificationQueue];
  v30 = v18;
  v31 = obj;
  v32 = v38;
  v33 = v37;
  v34 = v36;
  msv_dispatch_async_on_queue();

  v35 = *MEMORY[0x1E69E9840];
}

void __70__MRAVOutputContext__compareOutputDeviceList_withNewOutputDeviceList___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] now];
  [*(a1 + 32) _notifyChangesInOutputDevicesWithAdded:*(a1 + 40) removed:*(a1 + 48) updated:*(a1 + 56) previous:*(a1 + 64) newDevices:*(a1 + 72)];
  [v2 timeIntervalSinceNow];
  if (v3 < -0.1)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__MRAVOutputContext__compareOutputDeviceList_withNewOutputDeviceList___block_invoke_cold_1(v2);
    }
  }
}

- (void)_notifyChangesInOutputDevicesWithAdded:(id)a3 removed:(id)a4 updated:(id)a5 previous:(id)a6 newDevices:(id)a7
{
  v60 = a2;
  v100 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  [v17 postNotificationName:@"kMRAVOutputContextDevicesDidChangeNotification" object:self];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v87 objects:v99 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v88;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v88 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(MRAVOutputContext *)self _notfiyOutputDeviceRemoved:*(*(&v87 + 1) + 8 * i), v60];
      }

      v20 = [v18 countByEnumeratingWithState:&v87 objects:v99 count:16];
    }

    while (v20);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v12;
  v23 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v84;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v84 != v25)
        {
          objc_enumerationMutation(obj);
        }

        [(MRAVOutputContext *)self _notifyOutputDeviceAdded:*(*(&v83 + 1) + 8 * j), v60];
      }

      v24 = [obj countByEnumeratingWithState:&v83 objects:v98 count:16];
    }

    while (v24);
  }

  if ([obj count] || objc_msgSend(v18, "count"))
  {
    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 postNotificationName:@"MRAVOutputContextOutputDevicesDidChangeNotification" object:self userInfo:0];
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v63 = v16;
  v28 = [v63 countByEnumeratingWithState:&v79 objects:v97 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = *v80;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v80 != v31)
        {
          objc_enumerationMutation(v63);
        }

        v30 += [*(*(&v79 + 1) + 8 * k) isPersonalRoute];
      }

      v29 = [v63 countByEnumeratingWithState:&v79 objects:v97 count:16];
    }

    while (v29);
  }

  else
  {
    v30 = 0;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v66 = v15;
  v33 = [v66 countByEnumeratingWithState:&v75 objects:v96 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v76;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v76 != v36)
        {
          objc_enumerationMutation(v66);
        }

        v35 += [*(*(&v75 + 1) + 8 * m) isPersonalRoute];
      }

      v34 = [v66 countByEnumeratingWithState:&v75 objects:v96 count:16];
    }

    while (v34);
  }

  else
  {
    v35 = 0;
  }

  if (v30 > v35)
  {
    v38 = [MEMORY[0x1E696AD88] defaultCenter];
    [v38 postNotificationName:@"MRAVOutputContextDidAddPersonalDeviceNotification" object:self];
  }

  v61 = v18;
  if (v30 < v35)
  {
    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 postNotificationName:@"MRAVOutputContextDidRemovePersonalDeviceNotification" object:self];
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v62 = v14;
  v65 = [v62 countByEnumeratingWithState:&v71 objects:v95 count:16];
  if (v65)
  {
    v40 = *v72;
    do
    {
      v41 = 0;
      do
      {
        if (*v72 != v40)
        {
          objc_enumerationMutation(v62);
        }

        v42 = *(*(&v71 + 1) + 8 * v41);
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __96__MRAVOutputContext__notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices___block_invoke;
        v70[3] = &unk_1E769CDC0;
        v70[4] = v42;
        v43 = [v66 msv_firstWhere:{v70, v60, v61}];
        if (!v43)
        {
          [MRAVOutputContext _notifyChangesInOutputDevicesWithAdded:v60 removed:self updated:? previous:? newDevices:?];
        }

        if (_notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices__onceToken != -1)
        {
          [MRAVOutputContext _notifyChangesInOutputDevicesWithAdded:removed:updated:previous:newDevices:];
        }

        v68 = 0;
        v69 = 0;
        v67 = 0;
        v44 = [v43 isEqualToOutputDevice:v42 denyList:_notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices__denyList addedProperties:&v69 removedProperties:&v68 changedProperties:&v67];
        v45 = v69;
        v46 = v68;
        v47 = v67;
        if ((v44 & 1) == 0)
        {
          if ([(MRAVOutputContext *)self shouldLog])
          {
            v48 = _MRLogForCategory(0);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = [v42 debugName];
              *buf = 138543618;
              v92 = v49;
              v93 = 2114;
              v94 = self;
              _os_log_impl(&dword_1A2860000, v48, OS_LOG_TYPE_DEFAULT, "[OutputContext] Updated outputDevice %{public}@ for context: %{public}@", buf, 0x16u);
            }

            if ([v45 count])
            {
              v50 = +[MRUserSettings currentSettings];
              v51 = [v50 verboseOutputContextLogging];

              if (v51)
              {
                v52 = MRLogCategoryOutputContextUpdates();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v92 = v45;
                  _os_log_impl(&dword_1A2860000, v52, OS_LOG_TYPE_DEFAULT, "[OutputContext] Added Fields: %{public}@", buf, 0xCu);
                }
              }
            }

            if ([v46 count])
            {
              v53 = +[MRUserSettings currentSettings];
              v54 = [v53 verboseOutputContextLogging];

              if (v54)
              {
                v55 = MRLogCategoryOutputContextUpdates();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v92 = v46;
                  _os_log_impl(&dword_1A2860000, v55, OS_LOG_TYPE_DEFAULT, "[OutputContext] Removed Fields: %{public}@", buf, 0xCu);
                }
              }
            }

            if ([v47 count])
            {
              v56 = +[MRUserSettings currentSettings];
              v57 = [v56 verboseOutputContextLogging];

              if (v57)
              {
                v58 = MRLogCategoryOutputContextUpdates();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v92 = v47;
                  _os_log_impl(&dword_1A2860000, v58, OS_LOG_TYPE_DEFAULT, "[OutputContext] Changed Values: %{public}@", buf, 0xCu);
                }
              }
            }
          }

          [(MRAVOutputContext *)self _notifyOutputDeviceChanged:v42];
        }

        ++v41;
      }

      while (v65 != v41);
      v65 = [v62 countByEnumeratingWithState:&v71 objects:v95 count:16];
    }

    while (v65);
  }

  v59 = *MEMORY[0x1E69E9840];
}

void __96__MRAVOutputContext__notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices___block_invoke_2()
{
  v0 = _notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices__denyList;
  _notifyChangesInOutputDevicesWithAdded_removed_updated_previous_newDevices__denyList = &unk_1F1577518;
}

- (void)_notfiyOutputDeviceRemoved:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MRAVOutputContext *)self shouldLog])
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 debugName];
      *buf = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = self;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed removed outputDevice %{public}@ for context: %{public}@", buf, 0x16u);
    }
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v18 = @"MRAVOutputContextOutputDeviceUserInfoKey";
  v19 = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v7 postNotificationName:@"MRAVOutputContextDidRemoveOutputDeviceNotification" object:self userInfo:v8];

  if ([v4 isLocalDevice])
  {
    if ([(MRAVOutputContext *)self shouldLog])
    {
      v9 = +[MRUserSettings currentSettings];
      v10 = [v9 verboseOutputContextLogging];

      if (v10)
      {
        v11 = MRLogCategoryOutputContextUpdates();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v4 debugName];
          *buf = 138543618;
          v21 = v12;
          v22 = 2114;
          v23 = self;
          _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed removed localOutputDevice %{public}@ for context: %{public}@", buf, 0x16u);
        }
      }
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = @"MRAVOutputContextOutputDeviceUserInfoKey";
    v17 = v4;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v13 postNotificationName:@"MRAVOutputContextDidRemoveLocalDeviceNotification" object:self userInfo:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_notifyOutputDeviceAdded:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MRAVOutputContext *)self shouldLog])
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 debugName];
      *buf = 138543618;
      v25 = v6;
      v26 = 2114;
      v27 = self;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed added outputDevice %{public}@ for context: %{public}@", buf, 0x16u);
    }

    v7 = +[MRUserSettings currentSettings];
    v8 = [v7 verboseOutputContextLogging];

    if (v8)
    {
      v9 = MRLogCategoryOutputContextUpdates();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v4 descriptor];
        *buf = 138543618;
        v25 = v10;
        v26 = 2114;
        v27 = self;
        _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed added outputDevice %{public}@ for context: %{public}@", buf, 0x16u);
      }
    }
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v22 = @"MRAVOutputContextOutputDeviceUserInfoKey";
  v23 = v4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [v11 postNotificationName:@"MRAVOutputContextDidAddOutputDeviceNotification" object:self userInfo:v12];

  if ([v4 isLocalDevice])
  {
    if ([(MRAVOutputContext *)self shouldLog])
    {
      v13 = +[MRUserSettings currentSettings];
      v14 = [v13 verboseOutputContextLogging];

      if (v14)
      {
        v15 = MRLogCategoryOutputContextUpdates();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v4 debugName];
          *buf = 138543618;
          v25 = v16;
          v26 = 2114;
          v27 = self;
          _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[OutputContext] Observed added localOutputDevice %{public}@ for context: %{public}@", buf, 0x16u);
        }
      }
    }

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = @"MRAVOutputContextOutputDeviceUserInfoKey";
    v21 = v4;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [v17 postNotificationName:@"MRAVOutputContextDidAddLocalDeviceNotification" object:self userInfo:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_notifyOutputDeviceChanged:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = @"MRAVOutputContextOutputDeviceUserInfoKey";
  v13[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v5 postNotificationName:@"MRAVOutputContextOutputDeviceDidChangeNotification" object:self userInfo:v6];

  if ([v4 isLocalDevice])
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = @"MRAVOutputContextOutputDeviceUserInfoKey";
    v11 = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [v7 postNotificationName:@"MRAVOutputContextLocalDeviceDidChangeNotification" object:self userInfo:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __94__MRAVOutputContext_Deprecated__addOutputDevices_initiator_fadeAudio_withCallbackQueue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __103__MRAVOutputContext_Deprecated__setOutputDevices_initiator_password_fadeAudio_withCallbackQueue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __97__MRAVOutputContext_Deprecated__removeOutputDevices_initiator_fadeAudio_withCallbackQueue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeAllOutputDevicesWithCallbackQueue:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"API"];
  v9 = [MRGroupTopologyModificationRequest alloc];
  v10 = [(MRAVOutputContext *)self outputDevices];
  v11 = [(MRGroupTopologyModificationRequest *)v9 initWithRequestDetails:v8 type:2 outputDevices:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__MRAVOutputContext_Deprecated__removeAllOutputDevicesWithCallbackQueue_block___block_invoke;
  v13[3] = &unk_1E769AD80;
  v14 = v6;
  v12 = v6;
  [(MRAVOutputContext *)self modifyTopologyWithRequest:v11 withReplyQueue:v7 completion:v13];
}

uint64_t __79__MRAVOutputContext_Deprecated__removeAllOutputDevicesWithCallbackQueue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)resetPredictedOutputDevice
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRAVOutputContext(Deprecated) resetPredictedOutputDevice]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setOutputDevices:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 timeIntervalSinceNow];
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[OutputContext] setOutputDevices took %lf seconds", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_reloadWithOutputDevices:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 timeIntervalSinceNow];
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[OutputContext] CompareOutputDeviceList took %lf seconds", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __70__MRAVOutputContext__compareOutputDeviceList_withNewOutputDeviceList___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [a1 timeIntervalSinceNow];
  OUTLINED_FUNCTION_1_16(v1);
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[OutputContext] NotifyChanges took %lf seconds", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_notifyChangesInOutputDevicesWithAdded:(uint64_t)a1 removed:(uint64_t)a2 updated:previous:newDevices:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVOutputContext.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"previousOutputDevice"}];
}

@end