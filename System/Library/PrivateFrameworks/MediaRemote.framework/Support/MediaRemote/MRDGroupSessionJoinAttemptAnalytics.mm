@interface MRDGroupSessionJoinAttemptAnalytics
- (MRDGroupSessionJoinAttemptAnalytics)init;
- (MRDTimingEvent)recon;
- (MRDTimingEvent)request;
- (MRDTimingEvent)whaConnect;
- (NSNumber)joinMode;
- (void)setJoinMode:(id)a3;
- (void)setRecon:(id)a3;
- (void)setRequest:(id)a3;
- (void)setWhaConnect:(id)a3;
@end

@implementation MRDGroupSessionJoinAttemptAnalytics

- (NSNumber)joinMode
{
  v3 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_joinMode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setJoinMode:(id)a3
{
  v5 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_joinMode;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (MRDTimingEvent)request
{
  v2 = self;
  v3 = sub_10003D968(&OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request);

  return v3;
}

- (void)setRequest:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request) = a3;
  v3 = a3;
}

- (MRDTimingEvent)recon
{
  v2 = self;
  v3 = sub_10022DD2C();

  return v3;
}

- (void)setRecon:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon) = a3;
  v3 = a3;
}

- (MRDTimingEvent)whaConnect
{
  v2 = self;
  v3 = sub_10022DDB4();

  return v3;
}

- (void)setWhaConnect:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect) = a3;
  v3 = a3;
}

- (MRDGroupSessionJoinAttemptAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end