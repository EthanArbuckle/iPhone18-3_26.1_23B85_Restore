@interface CoarseRotationManager
- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation;
- (void)dealloc;
@end

@implementation CoarseRotationManager

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xC8);
  selfCopy = self;
  v2();
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for CoarseRotationManager(0);
  [(CoarseRotationManager *)&v4 dealloc];
}

- (void)accelerometer:(id)accelerometer didChangeDeviceOrientation:(int64_t)orientation
{
  accelerometerCopy = accelerometer;
  selfCopy = self;
  sub_243F7E8B0(orientation);
}

@end