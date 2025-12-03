@interface DNDSMutableMeDeviceStore
- (id)copyWithZone:(_NSZone *)zone;
- (void)setMeDeviceName:(id)name;
- (void)setMeDeviceStatus:(id)status;
@end

@implementation DNDSMutableMeDeviceStore

- (void)setMeDeviceStatus:(id)status
{
  v4 = [status copy];
  meDeviceStatus = self->super._meDeviceStatus;
  self->super._meDeviceStatus = v4;

  MEMORY[0x2821F96F8](v4, meDeviceStatus);
}

- (void)setMeDeviceName:(id)name
{
  v4 = [name copy];
  meDeviceName = self->super._meDeviceName;
  self->super._meDeviceName = v4;

  MEMORY[0x2821F96F8](v4, meDeviceName);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMeDeviceStore alloc];

  return [(DNDSMeDeviceStore *)v4 _initWithStore:self];
}

@end