@interface MRAVOutputDeviceDescription
- (BOOL)containsUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MRAVOutputDeviceDescription)initWithAVDescription:(id)a3;
- (MRAVOutputDeviceDescription)initWithDescriptor:(id)a3;
- (NSString)composedTypeDescription;
- (_MRAVOutputDeviceDescriptorProtobuf)descriptor;
- (id)description;
- (unint64_t)hash;
@end

@implementation MRAVOutputDeviceDescription

- (_MRAVOutputDeviceDescriptorProtobuf)descriptor
{
  v3 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
  v4 = [(MRAVOutputDeviceDescription *)self uid];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setUniqueIdentifier:v4];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setDeviceSubType:[(MRAVOutputDeviceDescription *)self deviceSubtype]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setDeviceType:[(MRAVOutputDeviceDescription *)self deviceType]];
  v5 = [(MRAVOutputDeviceDescription *)self name];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setName:v5];

  v6 = [(MRAVOutputDeviceDescription *)self modelID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setModelID:v6];

  v7 = [(MRAVOutputDeviceDescription *)self roomName];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setRoomName:v7];

  v8 = [(MRAVOutputDeviceDescription *)self roomID];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setRoomID:v8];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setClusterType:[(MRAVOutputDeviceDescription *)self clusterType]];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setIsClusterLeader:[(MRAVOutputDeviceDescription *)self isClusterLeader]];
  v9 = [(MRAVOutputDeviceDescription *)self subComponents];
  v10 = [v9 msv_map:&__block_literal_global_1];
  v11 = [v10 mutableCopy];
  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setAllClusterMembers:v11];

  [(_MRAVOutputDeviceDescriptorProtobuf *)v3 setEngageOnClusterActivate:[(MRAVOutputDeviceDescription *)self supportsEngageOnClusterActivation]];

  return v3;
}

- (MRAVOutputDeviceDescription)initWithAVDescription:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRAVOutputDeviceDescription;
  v5 = [(MRAVOutputDeviceDescription *)&v11 init];
  if (v5)
  {
    v6 = [[MRAVConcreteOutputDeviceDescriptionImpl alloc] initWithAVDescription:v4];
    impl = v5->_impl;
    v5->_impl = v6;

    v8 = [(MRAVOutputDeviceDescriptionImpl *)v5->_impl subComponents];
    subComponents = v5->_subComponents;
    v5->_subComponents = v8;
  }

  return v5;
}

- (MRAVOutputDeviceDescription)initWithDescriptor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRAVOutputDeviceDescription;
  v5 = [(MRAVOutputDeviceDescription *)&v11 init];
  if (v5)
  {
    v6 = [[MRAVDistantOutputDeviceDescriptionImpl alloc] initWithDescriptor:v4];
    impl = v5->_impl;
    v5->_impl = v6;

    v8 = [(MRAVOutputDeviceDescriptionImpl *)v5->_impl subComponents];
    subComponents = v5->_subComponents;
    v5->_subComponents = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRAVOutputDeviceDescription *)self name];
  v6 = [(MRAVOutputDeviceDescription *)self uid];
  v7 = MRAVOutputDeviceTypeCopyDescription([(MRAVOutputDeviceDescription *)self deviceType]);
  v8 = MRAVOutputDeviceSubtypeCopyDescription([(MRAVOutputDeviceDescription *)self deviceSubtype]);
  v9 = [(MRAVOutputDeviceDescription *)self modelID];
  v10 = [(MRAVOutputDeviceDescription *)self roomName];
  v11 = [(MRAVOutputDeviceDescription *)self roomID];
  v12 = [(MRAVOutputDeviceDescription *)self clusterType]- 1;
  if (v12 > 2)
  {
    v13 = @"None";
  }

  else
  {
    v13 = off_1E769A190[v12];
  }

  v14 = [v3 stringWithFormat:@"<%@:%p %@:%@ %@:%@:%@ room=%@:%@ clusterType=%@>", v4, self, v5, v6, v7, v8, v9, v10, v11, v13];

  return v14;
}

- (NSString)composedTypeDescription
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = MRAVOutputDeviceTypeCopyDescription([(MRAVOutputDeviceDescription *)self deviceType]);
  [v3 addObject:v4];

  if ([(MRAVOutputDeviceDescription *)self deviceType]== 1)
  {
    [v3 addObject:@"2"];
  }

  v5 = MRAVOutputDeviceSubtypeCopyDescription([(MRAVOutputDeviceDescription *)self deviceSubtype]);
  [v3 addObject:v5];

  v6 = [v3 componentsJoinedByString:@" "];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRAVOutputDeviceDescription *)self uid];
      v7 = [(MRAVOutputDeviceDescription *)v5 uid];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(MRAVOutputDeviceDescription *)self uid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)containsUID:(id)a3
{
  v4 = a3;
  v5 = [(MRAVOutputDeviceDescription *)self uid];
  if ([v5 isEqualToString:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(MRAVOutputDeviceDescription *)self subComponents];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__MRAVOutputDeviceDescription_containsUID___block_invoke;
    v10[3] = &unk_1E769A150;
    v11 = v4;
    v8 = [v7 msv_firstWhere:v10];
    v6 = v8 != 0;
  }

  return v6;
}

@end