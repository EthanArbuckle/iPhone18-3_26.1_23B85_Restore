@interface AudioAccessoryContainerDevice
- (CBDevice)coreBluetoothDevice;
@end

@implementation AudioAccessoryContainerDevice

- (CBDevice)coreBluetoothDevice
{
  MEMORY[0x1E69E5928](self);
  v4 = AudioAccessoryContainerDevice.coreBluetoothDevice.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

@end