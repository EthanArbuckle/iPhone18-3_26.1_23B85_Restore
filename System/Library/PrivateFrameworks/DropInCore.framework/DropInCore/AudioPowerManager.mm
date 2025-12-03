@interface AudioPowerManager
- (void)frequencyController:(id)controller audioPowerChanged:(float)changed forParticipantWithStreamToken:(int64_t)token;
@end

@implementation AudioPowerManager

- (void)frequencyController:(id)controller audioPowerChanged:(float)changed forParticipantWithStreamToken:(int64_t)token
{
  controllerCopy = controller;
  selfCopy = self;
  sub_249E630FC(changed, selfCopy, token);
}

@end