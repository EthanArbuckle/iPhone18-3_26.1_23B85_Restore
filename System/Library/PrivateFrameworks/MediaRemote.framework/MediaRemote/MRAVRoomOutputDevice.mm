@interface MRAVRoomOutputDevice
+ (id)calculateOutputDeviceIDFromOutputDeviceID:(id)a3 withRoomID:(id)a4;
- (BOOL)containsUID:(id)a3;
- (BOOL)isVolumeMuted;
- (MRAVRoomOutputDevice)initWithOutputDevice:(id)a3 memberOutputDevices:(id)a4;
- (float)volume;
- (id)clusterComposition;
- (id)modelID;
- (id)parentUID;
- (id)primaryID;
- (id)roomID;
- (id)roomName;
- (unsigned)deviceType;
- (unsigned)volumeCapabilities;
- (void)adjustVolume:(int64_t)a3 details:(id)a4;
@end

@implementation MRAVRoomOutputDevice

- (MRAVRoomOutputDevice)initWithOutputDevice:(id)a3 memberOutputDevices:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = MRAVRoomOutputDevice;
  v9 = [(MRAVRoomOutputDevice *)&v22 init];
  if (v9)
  {
    if (!v7)
    {
      [MRAVRoomOutputDevice initWithOutputDevice:memberOutputDevices:];
    }

    if (![v8 count])
    {
      [MRAVRoomOutputDevice initWithOutputDevice:memberOutputDevices:];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v9->_concreteOutputDevice, a3);
    }

    objc_storeStrong(&v9->_outputDevice, a3);
    objc_storeStrong(&v9->_roomMemberOutputDevices, a4);
    v10 = objc_opt_class();
    v11 = [(MRAVRoomOutputDevice *)v9 primaryID];
    v12 = [(MRAVRoomOutputDevice *)v9 roomID];
    v13 = [v10 calculateOutputDeviceIDFromOutputDeviceID:v11 withRoomID:v12];
    uid = v9->_uid;
    v9->_uid = v13;

    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [(MRAVOutputDevice *)v9->_outputDevice debugName];
    v17 = [(MRAVRoomOutputDevice *)v9 roomID];
    v18 = [(MRAVRoomOutputDevice *)v9 roomName];
    v19 = [v15 initWithFormat:@"<outputDevice=%@, room=%@:%@>", v16, v17, v18];
    label = v9->_label;
    v9->_label = v19;
  }

  return v9;
}

+ (id)calculateOutputDeviceIDFromOutputDeviceID:(id)a3 withRoomID:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFormat:@"%@/%@", v7, v6];

  return v8;
}

- (id)parentUID
{
  v2 = [(MRAVRoomOutputDevice *)self outputDevice];
  v3 = [v2 uid];

  return v3;
}

- (id)primaryID
{
  v2 = [(MRAVRoomOutputDevice *)self outputDevice];
  v3 = [v2 primaryID];

  return v3;
}

- (BOOL)containsUID:(id)a3
{
  v4 = a3;
  v5 = [(MRAVRoomOutputDevice *)self uid];
  if ([v4 isEqualToString:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(MRAVRoomOutputDevice *)self clusterComposition];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__MRAVRoomOutputDevice_containsUID___block_invoke;
    v9[3] = &unk_1E769A150;
    v10 = v4;
    v6 = [v7 mr_any:v9];
  }

  return v6;
}

uint64_t __36__MRAVRoomOutputDevice_containsUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uid];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)modelID
{
  v2 = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  v3 = [v2 modelID];

  return v3;
}

- (unsigned)deviceType
{
  v2 = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  v3 = [v2 deviceType];

  return v3;
}

- (id)roomID
{
  v2 = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  v3 = [v2 roomID];

  return v3;
}

- (id)roomName
{
  v2 = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  v3 = [v2 roomName];

  return v3;
}

- (id)clusterComposition
{
  v2 = self;
  objc_sync_enter(v2);
  clusterComposition = v2->_clusterComposition;
  if (!clusterComposition)
  {
    v4 = [(NSArray *)v2->_roomMemberOutputDevices msv_map:&__block_literal_global_73];
    v5 = v2->_clusterComposition;
    v2->_clusterComposition = v4;

    clusterComposition = v2->_clusterComposition;
  }

  v6 = [(NSArray *)clusterComposition copy];
  objc_sync_exit(v2);

  return v6;
}

MRAVOutputDeviceDescription *__42__MRAVRoomOutputDevice_clusterComposition__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MRAVOutputDeviceDescription alloc];
  v4 = [v2 deviceType];
  v5 = [v2 deviceSubtype];
  v6 = [v2 uid];
  v7 = [v2 name];
  v8 = [v2 modelID];

  v9 = [(MRAVOutputDeviceDescription *)v3 initWithDeviceType:v4 deviceSubtype:v5 uid:v6 name:v7 modelID:v8];

  return v9;
}

- (float)volume
{
  v2 = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  [v2 volume];
  v4 = v3;

  return v4;
}

- (BOOL)isVolumeMuted
{
  v2 = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  v3 = [v2 isVolumeMuted];

  return v3;
}

- (unsigned)volumeCapabilities
{
  v2 = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  v3 = [v2 volumeCapabilities];

  return v3;
}

- (void)adjustVolume:(int64_t)a3 details:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD60];
  v8 = a4;
  v9 = [v7 alloc];
  v10 = [v8 requestID];

  v11 = [v9 initWithFormat:@"%@<%@>", @"MRAVRoomOutputDevice.adjustVolume", v10];
  v12 = MRMediaRemoteVolumeControlAdjustmentDescription(a3);

  if (v12)
  {
    v13 = MRMediaRemoteVolumeControlAdjustmentDescription(a3);
    [v11 appendFormat:@" to %@", v13];
  }

  v14 = [(MRAVRoomOutputDevice *)self debugName];

  if (v14)
  {
    v15 = [(MRAVRoomOutputDevice *)self debugName];
    [v11 appendFormat:@" for %@", v15];
  }

  v16 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v11;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (!self->_concreteOutputDevice)
  {
    [MRAVRoomOutputDevice adjustVolume:details:];
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"MRAVRoomOutputDevice.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)initWithOutputDevice:memberOutputDevices:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"outputDevice" object:? file:? lineNumber:? description:?];
}

- (void)initWithOutputDevice:memberOutputDevices:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"roomMemberOutputDevices.count > 0" object:? file:? lineNumber:? description:?];
}

- (void)adjustVolume:details:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"_concreteOutputDevice" object:? file:? lineNumber:? description:?];
}

- (void)setVolumeMuted:details:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"_concreteOutputDevice" object:? file:? lineNumber:? description:?];
}

@end