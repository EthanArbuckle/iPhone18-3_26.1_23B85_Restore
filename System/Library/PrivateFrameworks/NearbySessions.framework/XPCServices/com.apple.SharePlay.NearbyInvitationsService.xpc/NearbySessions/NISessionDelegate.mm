@interface NISessionDelegate
- (_TtC44com_apple_SharePlay_NearbyInvitationsServiceP33_7363818DEECEA212EB4728A56115524617NISessionDelegate)init;
- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 didUpdateAlgorithmState:(id)a4 forObject:(id)a5;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
- (void)session:(id)a3 suspendedWithReason:(int64_t)a4;
- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5;
- (void)sessionDidStartRunning:(id)a3;
@end

@implementation NISessionDelegate

- (void)sessionDidStartRunning:(id)a3
{
  v4 = a3;
  v5 = self;
  NISessionDelegate.sessionDidStartRunning(_:)(v4);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  NISessionDelegate.session(_:didFailWithError:)(v6);
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  NISessionDelegate.session(_:didInvalidateWith:)(v6);
}

- (void)session:(id)a3 suspendedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  specialized NISessionDelegate.session(_:suspendedWith:)(v6, a4);
}

- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  NISessionDelegate.session(_:suspensionReasonEnded:isNoLongerSuspended:)(v8, a4, a5);
}

- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  specialized NISessionDelegate.session(_:didDiscover:)(v7);
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  specialized NISessionDelegate.session(_:object:didUpdateRegion:previousRegion:)(v11, a5);
}

- (void)session:(id)a3 didUpdateAlgorithmState:(id)a4 forObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  specialized NISessionDelegate.session(_:didUpdateAlgorithmState:for:)(v9, v10);
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