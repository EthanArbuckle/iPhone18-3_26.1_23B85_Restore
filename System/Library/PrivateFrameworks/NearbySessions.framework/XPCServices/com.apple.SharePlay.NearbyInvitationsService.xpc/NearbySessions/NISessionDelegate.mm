@interface NISessionDelegate
- (_TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate)init;
- (void)session:(id)session didDiscoverNearbyObject:(id)object;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didUpdateAlgorithmState:(id)state forObject:(id)object;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)session:(id)session suspendedWithReason:(int64_t)reason;
- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended;
- (void)sessionDidStartRunning:(id)running;
@end

@implementation NISessionDelegate

- (void)sessionDidStartRunning:(id)running
{
  runningCopy = running;
  selfCopy = self;
  NISessionDelegate.sessionDidStartRunning(_:)(runningCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  NISessionDelegate.session(_:didFailWithError:)(sessionCopy);
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  NISessionDelegate.session(_:didInvalidateWith:)(sessionCopy);
}

- (void)session:(id)session suspendedWithReason:(int64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  specialized NISessionDelegate.session(_:suspendedWith:)(sessionCopy, reason);
}

- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended
{
  sessionCopy = session;
  selfCopy = self;
  NISessionDelegate.session(_:suspensionReasonEnded:isNoLongerSuspended:)(sessionCopy, ended, suspended);
}

- (void)session:(id)session didDiscoverNearbyObject:(id)object
{
  sessionCopy = session;
  objectCopy = object;
  selfCopy = self;
  specialized NISessionDelegate.session(_:didDiscover:)(objectCopy);
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  sessionCopy = session;
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  selfCopy = self;
  specialized NISessionDelegate.session(_:object:didUpdateRegion:previousRegion:)(objectCopy, region);
}

- (void)session:(id)session didUpdateAlgorithmState:(id)state forObject:(id)object
{
  sessionCopy = session;
  stateCopy = state;
  objectCopy = object;
  selfCopy = self;
  specialized NISessionDelegate.session(_:didUpdateAlgorithmState:for:)(stateCopy, objectCopy);
}

- (_TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate)init
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate_devices;
  *(&self->super.isa + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_44com_apple_SharePlay_NearbyInvitationsService17NISessionDelegate33_7363818DEECEA212EB4728A561155246LLC8NIDeviceVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for NISessionDelegate();
  return [(NISessionDelegate *)&v5 init];
}

@end