@interface MRAVDistantOutputDeviceDescriptionImpl
- (MRAVDistantOutputDeviceDescriptionImpl)initWithDescriptor:(id)descriptor;
- (NSArray)subComponents;
@end

@implementation MRAVDistantOutputDeviceDescriptionImpl

- (NSArray)subComponents
{
  allClusterMembers = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_descriptor allClusterMembers];
  v3 = [allClusterMembers msv_map:&__block_literal_global_129];

  return v3;
}

- (MRAVDistantOutputDeviceDescriptionImpl)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = MRAVDistantOutputDeviceDescriptionImpl;
  v6 = [(MRAVDistantOutputDeviceDescriptionImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, descriptor);
  }

  return v7;
}

MRAVOutputDeviceDescription *__55__MRAVDistantOutputDeviceDescriptionImpl_subComponents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRAVOutputDeviceDescription alloc] initWithDescriptor:v2];

  return v3;
}

@end