@interface MRAVDistantOutputDeviceDescriptionImpl
- (MRAVDistantOutputDeviceDescriptionImpl)initWithDescriptor:(id)a3;
- (NSArray)subComponents;
@end

@implementation MRAVDistantOutputDeviceDescriptionImpl

- (NSArray)subComponents
{
  v2 = [(_MRAVOutputDeviceDescriptorProtobuf *)self->_descriptor allClusterMembers];
  v3 = [v2 msv_map:&__block_literal_global_129];

  return v3;
}

- (MRAVDistantOutputDeviceDescriptionImpl)initWithDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRAVDistantOutputDeviceDescriptionImpl;
  v6 = [(MRAVDistantOutputDeviceDescriptionImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, a3);
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