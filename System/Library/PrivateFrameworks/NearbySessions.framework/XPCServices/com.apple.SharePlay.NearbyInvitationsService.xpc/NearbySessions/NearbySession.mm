@interface NearbySession
- (_TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession)init;
- (void)session:(id)session didDiscoverNearbyObject:(id)object;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didUpdateAlgorithmState:(id)state forObject:(id)object;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)session:(id)session suspendedWithReason:(int64_t)reason;
- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended;
- (void)sessionDidStartRunning:(id)running;
@end

@implementation NearbySession

- (_TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidStartRunning:(id)running
{
  runningCopy = running;
  selfCopy = self;
  NearbySession.sessionDidStartRunning(_:)(runningCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  NearbySession.session(_:didFailWithError:)(sessionCopy, errorCopy);
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  NearbySession.session(_:didInvalidateWith:)(sessionCopy, errorCopy);
}

- (void)session:(id)session suspendedWithReason:(int64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  NearbySession.session(_:suspendedWith:)(sessionCopy, reason);
}

- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended
{
  sessionCopy = session;
  selfCopy = self;
  NearbySession.session(_:suspensionReasonEnded:isNoLongerSuspended:)(sessionCopy, ended, suspended);
}

- (void)session:(id)session didDiscoverNearbyObject:(id)object
{
  sessionCopy = session;
  objectCopy = object;
  selfCopy = self;
  NearbySession.session(_:didDiscover:)(sessionCopy, objectCopy);
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  sessionCopy = session;
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  selfCopy = self;
  specialized NearbySession.session(_:object:didUpdateRegion:previousRegion:)(objectCopy, region);
}

- (void)session:(id)session didUpdateAlgorithmState:(id)state forObject:(id)object
{
  sessionCopy = session;
  stateCopy = state;
  objectCopy = object;
  selfCopy = self;
  specialized NearbySession.session(_:didUpdateAlgorithmState:for:)(stateCopy);
}

@end