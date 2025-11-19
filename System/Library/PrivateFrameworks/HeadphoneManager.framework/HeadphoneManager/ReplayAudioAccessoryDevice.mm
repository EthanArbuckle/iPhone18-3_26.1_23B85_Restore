@interface ReplayAudioAccessoryDevice
- (id)headphoneDeviceWithCbDevice:(id)a3 withDelegate:(id)a4;
@end

@implementation ReplayAudioAccessoryDevice

- (id)headphoneDeviceWithCbDevice:(id)a3 withDelegate:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  v9 = ReplayAudioAccessoryDevice.headphoneDevice(cbDevice:withDelegate:)(a3, a4);
  MEMORY[0x1E69E5920](self);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a3);

  return v9;
}

@end