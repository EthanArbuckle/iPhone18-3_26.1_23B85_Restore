@interface MRDPauseOutputDevicesRequestOperation
- (NSSet)relevantOutputDeviceUIDs;
@end

@implementation MRDPauseOutputDevicesRequestOperation

- (NSSet)relevantOutputDeviceUIDs
{
  v3 = [NSSet alloc];
  v4 = [(NSSet *)self->_relevantOutputDevices msv_compactMap:&stru_1004BB6E8];
  v5 = [v3 initWithArray:v4];

  return v5;
}

@end