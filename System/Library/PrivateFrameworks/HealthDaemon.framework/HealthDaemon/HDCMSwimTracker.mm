@interface HDCMSwimTracker
- (_TtC12HealthDaemon15HDCMSwimTracker)init;
- (id)init:(id)init;
- (void)setTracker:(id)tracker;
@end

@implementation HDCMSwimTracker

- (void)setTracker:(id)tracker
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker);
  *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker) = tracker;
  trackerCopy = tracker;
}

- (id)init:(id)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker) = init;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HDCMSwimTracker();
  initCopy = init;
  return [(HDCMSwimTracker *)&v6 init];
}

- (_TtC12HealthDaemon15HDCMSwimTracker)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for HDCMSwimTracker();
  return [(HDCMSwimTracker *)&v3 init];
}

@end