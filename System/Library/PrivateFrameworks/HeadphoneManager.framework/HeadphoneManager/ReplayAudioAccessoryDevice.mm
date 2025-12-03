@interface ReplayAudioAccessoryDevice
- (id)headphoneDeviceWithCbDevice:(id)device withDelegate:(id)delegate;
@end

@implementation ReplayAudioAccessoryDevice

- (id)headphoneDeviceWithCbDevice:(id)device withDelegate:(id)delegate
{
  MEMORY[0x1E69E5928](device);
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  v9 = ReplayAudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(device, delegate);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](device);

  return v9;
}

@end