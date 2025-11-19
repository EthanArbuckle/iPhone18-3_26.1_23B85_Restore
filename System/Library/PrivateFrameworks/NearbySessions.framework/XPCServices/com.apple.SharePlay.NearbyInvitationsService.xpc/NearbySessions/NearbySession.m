@interface NearbySession
- (_TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession)init;
- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 didUpdateAlgorithmState:(id)a4 forObject:(id)a5;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
- (void)session:(id)a3 suspendedWithReason:(int64_t)a4;
- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5;
- (void)sessionDidStartRunning:(id)a3;
@end

@implementation NearbySession

- (_TtC44com_apple_SharePlay_NearbyInvitationsService13NearbySession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidStartRunning:(id)a3
{
  v4 = a3;
  v5 = self;
  NearbySession.sessionDidStartRunning(_:)(v4);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  NearbySession.session(_:didFailWithError:)(v6, v8);
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  NearbySession.session(_:didInvalidateWith:)(v6, v8);
}

- (void)session:(id)a3 suspendedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  NearbySession.session(_:suspendedWith:)(v6, a4);
}

- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  NearbySession.session(_:suspensionReasonEnded:isNoLongerSuspended:)(v8, a4, a5);
}

- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  NearbySession.session(_:didDiscover:)(v6, v7);
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  specialized NearbySession.session(_:object:didUpdateRegion:previousRegion:)(v11, a5);
}

- (void)session:(id)a3 didUpdateAlgorithmState:(id)a4 forObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized NearbySession.session(_:didUpdateAlgorithmState:for:)(v9);
}

@end