@interface MRAVDistantOutputDevice
- (MRAVDistantOutputDevice)initWithCoder:(id)coder;
- (MRAVDistantOutputDevice)initWithDescriptor:(id)descriptor;
- (MRAVDistantOutputDevice)initWithSkeleton:(id)skeleton;
- (_MRAVOutputDeviceDescriptorProtobuf)generateDescriptor;
- (id)descriptor;
- (id)groupSessionInfo;
- (id)groupableOutputDevice;
- (id)logicalDeviceID;
- (id)primaryID;
- (id)rooms;
- (int64_t)hostDeviceClass;
@end

@implementation MRAVDistantOutputDevice

- (id)descriptor
{
  v2 = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_protobuf copy];

  return v2;
}

- (id)logicalDeviceID
{
  v3 = +[MRUserSettings currentSettings];
  useClusterDevices = [v3 useClusterDevices];

  if (useClusterDevices)
  {
    logicalDeviceID = 0;
  }

  else
  {
    logicalDeviceID = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_protobuf logicalDeviceID];
  }

  return logicalDeviceID;
}

- (id)rooms
{
  roomsLookupTable = [(MRAVOutputDevice *)self roomsLookupTable];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__MRAVDistantOutputDevice_rooms__block_invoke;
  v6[3] = &unk_1E769B7B0;
  v6[4] = self;
  v4 = [roomsLookupTable msv_map:v6];

  return v4;
}

- (id)primaryID
{
  if ([(_MRAVOutputDeviceDescriptorProtobuf *)self->_protobuf hasPrimaryUID])
  {
    [(_MRAVOutputDeviceDescriptorProtobuf *)self->_protobuf primaryUID];
  }

  else
  {
    [(MRAVDistantOutputDevice *)self uid];
  }
  v3 = ;

  return v3;
}

- (id)groupSessionInfo
{
  if ([(_MRAVOutputDeviceDescriptorProtobuf *)self->_protobuf hasGroupSessionInfo])
  {
    v3 = [MRGroupSessionInfo alloc];
    groupSessionInfo = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_protobuf groupSessionInfo];
    v5 = [(MRGroupSessionInfo *)v3 initWithProtobuf:groupSessionInfo];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_MRAVOutputDeviceDescriptorProtobuf)generateDescriptor
{
  v4.receiver = self;
  v4.super_class = MRAVDistantOutputDevice;
  descriptor = [(MRAVOutputDevice *)&v4 descriptor];

  return descriptor;
}

- (int64_t)hostDeviceClass
{
  hostDeviceClass = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_protobuf hostDeviceClass];

  return MRDeviceClassFromProtobuf(hostDeviceClass);
}

- (MRAVDistantOutputDevice)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    v35.receiver = self;
    v35.super_class = MRAVDistantOutputDevice;
    v6 = [(MRAVDistantOutputDevice *)&v35 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_protobuf, descriptor);
      modelSpecificInfoData = [(_MRAVOutputDeviceDescriptorProtobuf *)v7->_protobuf modelSpecificInfoData];
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
      v13 = MRCreateFromData(modelSpecificInfoData, v12);
      modelSpecificInfo = v7->_modelSpecificInfo;
      v7->_modelSpecificInfo = v13;

      sourceInfo = [descriptorCopy sourceInfo];
      v16 = -[MRAVOutputDeviceSourceInfo initWithMultipleBuiltInDevices:sourceType:]([MRAVOutputDeviceSourceInfo alloc], "initWithMultipleBuiltInDevices:sourceType:", [sourceInfo multipleBuiltInDevices], 0);
      sourceInfo = v7->_sourceInfo;
      v7->_sourceInfo = v16;

      clusterCompositions = [descriptorCopy clusterCompositions];
      v19 = [clusterCompositions mr_map:&__block_literal_global_13];
      clusterComposition = v7->_clusterComposition;
      v7->_clusterComposition = v19;

      activatedClusterMembers = [descriptorCopy activatedClusterMembers];
      v22 = [activatedClusterMembers msv_map:&__block_literal_global_8];
      activatedClusterMemebers = v7->_activatedClusterMemebers;
      v7->_activatedClusterMemebers = v22;

      allClusterMembers = [descriptorCopy allClusterMembers];
      v25 = [allClusterMembers msv_map:&__block_literal_global_11];
      allClusterMembers = v7->_allClusterMembers;
      v7->_allClusterMembers = v25;

      roomsLookupTable = [(MRAVOutputDevice *)v7 roomsLookupTable];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __46__MRAVDistantOutputDevice_initWithDescriptor___block_invoke_4;
      v33[3] = &unk_1E769B7B0;
      v28 = v7;
      v34 = v28;
      v29 = [roomsLookupTable msv_map:v33];
      rooms = v28->_rooms;
      v28->_rooms = v29;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

MRAVOutputDeviceDescription *__46__MRAVDistantOutputDevice_initWithDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVOutputDeviceDescription alloc] initWithDescriptor:v2];

  return v3;
}

MRAVDistantOutputDevice *__46__MRAVDistantOutputDevice_initWithDescriptor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v2];

  return v3;
}

MRAVOutputDeviceDescription *__46__MRAVDistantOutputDevice_initWithDescriptor___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVOutputDeviceDescription alloc] initWithDescriptor:v2];

  return v3;
}

MRAVRoomOutputDevice *__46__MRAVDistantOutputDevice_initWithDescriptor___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[MRAVRoomOutputDevice alloc] initWithOutputDevice:*(a1 + 32) memberOutputDevices:v4];

  return v5;
}

- (MRAVDistantOutputDevice)initWithSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  v5 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
  uniqueIdentifier = [skeletonCopy uniqueIdentifier];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v5 setUniqueIdentifier:uniqueIdentifier];

  name = [skeletonCopy name];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v5 setName:name];

  -[_MRAVOutputDeviceDescriptorProtobuf setDeviceType:](v5, "setDeviceType:", [skeletonCopy deviceType]);
  -[_MRAVOutputDeviceDescriptorProtobuf setDeviceSubType:](v5, "setDeviceSubType:", [skeletonCopy deviceSubType]);
  modelID = [skeletonCopy modelID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v5 setModelID:modelID];

  if ([skeletonCopy isVolumeControlAvailable])
  {
    -[_MRAVOutputDeviceDescriptorProtobuf setIsVolumeControlAvailable:](v5, "setIsVolumeControlAvailable:", [skeletonCopy isVolumeControlAvailable]);
    [skeletonCopy volume];
    [(_MRAVOutputDeviceDescriptorProtobuf *)v5 setVolume:?];
  }

  -[_MRAVOutputDeviceDescriptorProtobuf setVolumeCapabilities:](v5, "setVolumeCapabilities:", [skeletonCopy volumeCapabilities]);
  -[_MRAVOutputDeviceDescriptorProtobuf setHostDeviceClass:](v5, "setHostDeviceClass:", [skeletonCopy hostDeviceClass]);
  v9 = [(MRAVDistantOutputDevice *)self initWithDescriptor:v5];

  return v9;
}

- (MRAVDistantOutputDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v6 = [(MRAVDistantOutputDevice *)self initWithDescriptor:v5];
  return v6;
}

MRAVRoomOutputDevice *__32__MRAVDistantOutputDevice_rooms__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[MRAVRoomOutputDevice alloc] initWithOutputDevice:*(a1 + 32) memberOutputDevices:v4];

  return v5;
}

- (id)groupableOutputDevice
{
  if ([(MRAVDistantOutputDevice *)self isGroupable])
  {
    selfCopy = self;
  }

  else
  {
    descriptor = [(MRAVDistantOutputDevice *)self descriptor];
    [descriptor setIsGroupable:1];
    selfCopy = [objc_alloc(objc_opt_class()) initWithDescriptor:descriptor];
  }

  return selfCopy;
}

@end