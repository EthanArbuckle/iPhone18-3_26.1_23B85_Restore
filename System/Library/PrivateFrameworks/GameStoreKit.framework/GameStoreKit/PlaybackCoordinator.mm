@interface PlaybackCoordinator
- (void)didEnterBackground;
- (void)willEnterForeground;
@end

@implementation PlaybackCoordinator

- (void)didEnterBackground
{
  selfCopy = self;
  sub_24ECD7B64();
}

- (void)willEnterForeground
{
  selfCopy = self;
  sub_24ECD8DA8();
}

@end