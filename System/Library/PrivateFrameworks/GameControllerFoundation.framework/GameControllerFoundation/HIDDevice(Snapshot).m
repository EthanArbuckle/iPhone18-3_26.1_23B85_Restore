@interface HIDDevice(Snapshot)
- (GCHIDDeviceSnapshot)gc_snapshot;
@end

@implementation HIDDevice(Snapshot)

- (GCHIDDeviceSnapshot)gc_snapshot
{
  v1 = [[GCHIDDeviceSnapshot alloc] initWithHIDDevice:a1];

  return v1;
}

@end