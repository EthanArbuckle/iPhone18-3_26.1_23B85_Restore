@interface EAHIDAccessory
- (EAHIDAccessory)initWithName:(id)a3 HIDDeviceRef:(__IOHIDDevice *)a4;
- (void)dealloc;
@end

@implementation EAHIDAccessory

- (void)dealloc
{
  name = self->name;
  if (name)
  {
  }

  serialNumber = self->serialNumber;
  if (serialNumber)
  {
  }

  modelNumber = self->modelNumber;
  if (modelNumber)
  {
  }

  manufacturer = self->manufacturer;
  if (manufacturer)
  {
  }

  hardwareVersion = self->hardwareVersion;
  if (hardwareVersion)
  {
  }

  EAProtocolString = self->EAProtocolString;
  if (EAProtocolString)
  {
  }

  EAConnectionUUID = self->EAConnectionUUID;
  if (EAConnectionUUID)
  {
  }

  EAEndpointUUID = self->EAEndpointUUID;
  if (EAEndpointUUID)
  {
  }

  HIDDevice = self->HIDDevice;
  if (HIDDevice)
  {
    IOHIDDeviceClose(HIDDevice, 0);
    CFRelease(self->HIDDevice);
  }

  v12.receiver = self;
  v12.super_class = EAHIDAccessory;
  [(EAHIDAccessory *)&v12 dealloc];
}

- (EAHIDAccessory)initWithName:(id)a3 HIDDeviceRef:(__IOHIDDevice *)a4
{
  v9.receiver = self;
  v9.super_class = EAHIDAccessory;
  v6 = [(EAHIDAccessory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(EAHIDAccessory *)v6 setName:a3];
    [(EAHIDAccessory *)v7 setHIDDevice:a4];
  }

  return v7;
}

@end