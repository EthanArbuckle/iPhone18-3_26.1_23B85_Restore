@interface AudioSessionInterruptionHandler
- (void)handleInterruption:(id)interruption;
@end

@implementation AudioSessionInterruptionHandler

- (void)handleInterruption:(id)interruption
{
  v3 = sub_1D7D2802C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D27FFC();

  sub_1D7CF1AE4();

  (*(v4 + 8))(v7, v3);
}

@end