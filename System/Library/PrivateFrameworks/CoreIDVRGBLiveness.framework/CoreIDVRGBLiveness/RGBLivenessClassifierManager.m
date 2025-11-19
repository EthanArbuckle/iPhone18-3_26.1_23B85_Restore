@interface RGBLivenessClassifierManager
- (void)stitchDetectedWithNotification:(id)a3;
@end

@implementation RGBLivenessClassifierManager

- (void)stitchDetectedWithNotification:(id)a3
{
  v3 = sub_245747B10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747AF0();

  sub_2456F3434();

  (*(v4 + 8))(v7, v3);
}

@end