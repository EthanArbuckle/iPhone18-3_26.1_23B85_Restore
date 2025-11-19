@interface HDCMSwimTracker
- (_TtC12HealthDaemon15HDCMSwimTracker)init;
- (id)init:(id)a3;
- (void)setTracker:(id)a3;
@end

@implementation HDCMSwimTracker

- (void)setTracker:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker);
  *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker) = a3;
  v3 = a3;
}

- (id)init:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC12HealthDaemon15HDCMSwimTracker_tracker) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HDCMSwimTracker();
  v4 = a3;
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