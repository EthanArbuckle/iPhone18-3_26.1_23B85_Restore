@interface MRAVRoomOutputDevice
+ (id)calculateOutputDeviceIDFromOutputDeviceID:(id)d withRoomID:(id)iD;
- (BOOL)containsUID:(id)d;
- (BOOL)isVolumeMuted;
- (MRAVRoomOutputDevice)initWithOutputDevice:(id)device memberOutputDevices:(id)devices;
- (float)volume;
- (id)clusterComposition;
- (id)modelID;
- (id)parentUID;
- (id)primaryID;
- (id)roomID;
- (id)roomName;
- (unsigned)deviceType;
- (unsigned)volumeCapabilities;
- (void)adjustVolume:(int64_t)volume details:(id)details;
@end

@implementation MRAVRoomOutputDevice

- (MRAVRoomOutputDevice)initWithOutputDevice:(id)device memberOutputDevices:(id)devices
{
  deviceCopy = device;
  devicesCopy = devices;
  v22.receiver = self;
  v22.super_class = MRAVRoomOutputDevice;
  v9 = [(MRAVRoomOutputDevice *)&v22 init];
  if (v9)
  {
    if (!deviceCopy)
    {
      [MRAVRoomOutputDevice initWithOutputDevice:memberOutputDevices:];
    }

    if (![devicesCopy count])
    {
      [MRAVRoomOutputDevice initWithOutputDevice:memberOutputDevices:];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v9->_concreteOutputDevice, device);
    }

    objc_storeStrong(&v9->_outputDevice, device);
    objc_storeStrong(&v9->_roomMemberOutputDevices, devices);
    v10 = objc_opt_class();
    primaryID = [(MRAVRoomOutputDevice *)v9 primaryID];
    roomID = [(MRAVRoomOutputDevice *)v9 roomID];
    v13 = [v10 calculateOutputDeviceIDFromOutputDeviceID:primaryID withRoomID:roomID];
    uid = v9->_uid;
    v9->_uid = v13;

    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    debugName = [(MRAVOutputDevice *)v9->_outputDevice debugName];
    roomID2 = [(MRAVRoomOutputDevice *)v9 roomID];
    roomName = [(MRAVRoomOutputDevice *)v9 roomName];
    v19 = [v15 initWithFormat:@"<outputDevice=%@, room=%@:%@>", debugName, roomID2, roomName];
    label = v9->_label;
    v9->_label = v19;
  }

  return v9;
}

+ (id)calculateOutputDeviceIDFromOutputDeviceID:(id)d withRoomID:(id)iD
{
  v5 = MEMORY[0x1E696AEC0];
  iDCopy = iD;
  dCopy = d;
  iDCopy = [[v5 alloc] initWithFormat:@"%@/%@", dCopy, iDCopy];

  return iDCopy;
}

- (id)parentUID
{
  outputDevice = [(MRAVRoomOutputDevice *)self outputDevice];
  v3 = [outputDevice uid];

  return v3;
}

- (id)primaryID
{
  outputDevice = [(MRAVRoomOutputDevice *)self outputDevice];
  primaryID = [outputDevice primaryID];

  return primaryID;
}

- (BOOL)containsUID:(id)d
{
  dCopy = d;
  v5 = [(MRAVRoomOutputDevice *)self uid];
  if ([dCopy isEqualToString:v5])
  {
    v6 = 1;
  }

  else
  {
    clusterComposition = [(MRAVRoomOutputDevice *)self clusterComposition];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__MRAVRoomOutputDevice_containsUID___block_invoke;
    v9[3] = &unk_1E769A150;
    v10 = dCopy;
    v6 = [clusterComposition mr_any:v9];
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
  roomMemberOutputDevice = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  modelID = [roomMemberOutputDevice modelID];

  return modelID;
}

- (unsigned)deviceType
{
  roomMemberOutputDevice = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  deviceType = [roomMemberOutputDevice deviceType];

  return deviceType;
}

- (id)roomID
{
  roomMemberOutputDevice = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  roomID = [roomMemberOutputDevice roomID];

  return roomID;
}

- (id)roomName
{
  roomMemberOutputDevice = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  roomName = [roomMemberOutputDevice roomName];

  return roomName;
}

- (id)clusterComposition
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  clusterComposition = selfCopy->_clusterComposition;
  if (!clusterComposition)
  {
    v4 = [(NSArray *)selfCopy->_roomMemberOutputDevices msv_map:&__block_literal_global_73];
    v5 = selfCopy->_clusterComposition;
    selfCopy->_clusterComposition = v4;

    clusterComposition = selfCopy->_clusterComposition;
  }

  v6 = [(NSArray *)clusterComposition copy];
  objc_sync_exit(selfCopy);

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
  roomMemberOutputDevice = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  [roomMemberOutputDevice volume];
  v4 = v3;

  return v4;
}

- (BOOL)isVolumeMuted
{
  roomMemberOutputDevice = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  isVolumeMuted = [roomMemberOutputDevice isVolumeMuted];

  return isVolumeMuted;
}

- (unsigned)volumeCapabilities
{
  roomMemberOutputDevice = [(MRAVRoomOutputDevice *)self roomMemberOutputDevice];
  volumeCapabilities = [roomMemberOutputDevice volumeCapabilities];

  return volumeCapabilities;
}

- (void)adjustVolume:(int64_t)volume details:(id)details
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AD60];
  detailsCopy = details;
  v9 = [v7 alloc];
  requestID = [detailsCopy requestID];

  v11 = [v9 initWithFormat:@"%@<%@>", @"MRAVRoomOutputDevice.adjustVolume", requestID];
  v12 = MRMediaRemoteVolumeControlAdjustmentDescription(volume);

  if (v12)
  {
    v13 = MRMediaRemoteVolumeControlAdjustmentDescription(volume);
    [v11 appendFormat:@" to %@", v13];
  }

  debugName = [(MRAVRoomOutputDevice *)self debugName];

  if (debugName)
  {
    debugName2 = [(MRAVRoomOutputDevice *)self debugName];
    [v11 appendFormat:@" for %@", debugName2];
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

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MRAVRoomOutputDevice.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"NO"}];

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