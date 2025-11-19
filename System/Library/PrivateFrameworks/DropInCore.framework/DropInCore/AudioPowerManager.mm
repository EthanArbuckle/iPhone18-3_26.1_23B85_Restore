@interface AudioPowerManager
- (void)frequencyController:(id)a3 audioPowerChanged:(float)a4 forParticipantWithStreamToken:(int64_t)a5;
@end

@implementation AudioPowerManager

- (void)frequencyController:(id)a3 audioPowerChanged:(float)a4 forParticipantWithStreamToken:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_249E630FC(a4, v9, a5);
}

@end