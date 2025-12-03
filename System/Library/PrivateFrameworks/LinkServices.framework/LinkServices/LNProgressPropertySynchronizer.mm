@interface LNProgressPropertySynchronizer
- (void)startSynchronization;
- (void)stopSynchronization;
@end

@implementation LNProgressPropertySynchronizer

- (void)startSynchronization
{
  selfCopy = self;
  sub_19767AD34();
}

- (void)stopSynchronization
{
  selfCopy = self;
  sub_19767B498();
}

@end