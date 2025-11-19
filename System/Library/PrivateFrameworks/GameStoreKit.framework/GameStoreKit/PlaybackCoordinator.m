@interface PlaybackCoordinator
- (void)didEnterBackground;
- (void)willEnterForeground;
@end

@implementation PlaybackCoordinator

- (void)didEnterBackground
{
  v2 = self;
  sub_24ECD7B64();
}

- (void)willEnterForeground
{
  v2 = self;
  sub_24ECD8DA8();
}

@end