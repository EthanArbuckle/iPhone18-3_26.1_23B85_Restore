@interface CoarseRotationManager
- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4;
- (void)dealloc;
@end

@implementation CoarseRotationManager

- (void)dealloc
{
  v2 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xC8);
  v3 = self;
  v2();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for CoarseRotationManager(0);
  [(CoarseRotationManager *)&v4 dealloc];
}

- (void)accelerometer:(id)a3 didChangeDeviceOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_243F7E8B0(a4);
}

@end