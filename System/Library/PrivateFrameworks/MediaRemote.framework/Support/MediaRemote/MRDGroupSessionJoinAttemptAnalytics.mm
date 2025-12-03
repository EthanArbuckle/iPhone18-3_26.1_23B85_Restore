@interface MRDGroupSessionJoinAttemptAnalytics
- (MRDGroupSessionJoinAttemptAnalytics)init;
- (MRDTimingEvent)recon;
- (MRDTimingEvent)request;
- (MRDTimingEvent)whaConnect;
- (NSNumber)joinMode;
- (void)setJoinMode:(id)mode;
- (void)setRecon:(id)recon;
- (void)setRequest:(id)request;
- (void)setWhaConnect:(id)connect;
@end

@implementation MRDGroupSessionJoinAttemptAnalytics

- (NSNumber)joinMode
{
  v3 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_joinMode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setJoinMode:(id)mode
{
  v5 = OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics_joinMode;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = mode;
  modeCopy = mode;
}

- (MRDTimingEvent)request
{
  selfCopy = self;
  v3 = sub_10003D968(&OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request);

  return v3;
}

- (void)setRequest:(id)request
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___request) = request;
  requestCopy = request;
}

- (MRDTimingEvent)recon
{
  selfCopy = self;
  v3 = sub_10022DD2C();

  return v3;
}

- (void)setRecon:(id)recon
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___recon) = recon;
  reconCopy = recon;
}

- (MRDTimingEvent)whaConnect
{
  selfCopy = self;
  v3 = sub_10022DDB4();

  return v3;
}

- (void)setWhaConnect:(id)connect
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect);
  *(&self->super.isa + OBJC_IVAR___MRDGroupSessionJoinAttemptAnalytics____lazy_storage___whaConnect) = connect;
  connectCopy = connect;
}

- (MRDGroupSessionJoinAttemptAnalytics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end