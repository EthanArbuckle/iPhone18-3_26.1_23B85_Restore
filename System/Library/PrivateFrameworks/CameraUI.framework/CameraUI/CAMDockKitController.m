@interface CAMDockKitController
- (BOOL)isConnectedAndTracking;
- (BOOL)isTrackingLocked;
- (BOOL)shouldShowTrackingSummaryViews;
- (_TtC8CameraUI20CAMDockKitController)init;
- (_TtC8CameraUI20CAMDockKitController)initWithMotionController:(id)a3;
- (id)matchingTrackedSubjectForAnstID:(int64_t)a3;
- (void)captureModeDidChange:(int64_t)a3;
- (void)panoramaCaptureDidStart:(int64_t)a3;
- (void)panoramaCaptureDidStop:(int64_t)a3;
- (void)panoramaDriftingY:(double)a3;
- (void)panoramaPaintingUpdatedWithCurrentSpeed:(double)a3 maxAllowedSpeed:(double)a4;
- (void)systemEventDataWithInfo:(id)a3 data:(id)a4;
- (void)tapToTrackTriggeredAtPoint:(CGPoint)a3 devicePosition:(int64_t)a4;
- (void)trackingSummaryDataWithInfo:(id)a3 data:(id)a4;
@end

@implementation CAMDockKitController

- (_TtC8CameraUI20CAMDockKitController)initWithMotionController:(id)a3
{
  v3 = a3;
  v4 = sub_1A38962F8();

  return v4;
}

- (BOOL)shouldShowTrackingSummaryViews
{
  v2 = self;
  v3 = sub_1A3892FC4();

  return v3;
}

- (void)tapToTrackTriggeredAtPoint:(CGPoint)a3 devicePosition:(int64_t)a4
{
  v4 = self;
  sub_1A389307C();
}

- (void)captureModeDidChange:(int64_t)a3
{
  v4 = self;
  sub_1A3893834(a3);
}

- (BOOL)isConnectedAndTracking
{
  v2 = self;
  v3 = sub_1A389401C();

  return v3;
}

- (_TtC8CameraUI20CAMDockKitController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemEventDataWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A38C9850(v7);
}

- (void)trackingSummaryDataWithInfo:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1A3966334();
}

- (id)matchingTrackedSubjectForAnstID:(int64_t)a3
{
  v4 = self;
  v5 = CAMDockKitController.matchingTrackedSubjectForAnstID(_:)(a3);

  return v5;
}

- (BOOL)isTrackingLocked
{
  v2 = self;
  v3 = CAMDockKitController.isTrackingLocked()();

  return v3;
}

- (void)panoramaCaptureDidStart:(int64_t)a3
{
  v4 = self;
  CAMDockKitController.panoramaCaptureDidStart(_:)(a3);
}

- (void)panoramaCaptureDidStop:(int64_t)a3
{
  v4 = self;
  CAMDockKitController.panoramaCaptureDidStop(_:)(a3);
}

- (void)panoramaPaintingUpdatedWithCurrentSpeed:(double)a3 maxAllowedSpeed:(double)a4
{
  v6 = self;
  CAMDockKitController.panoramaPaintingUpdated(currentSpeed:maxAllowedSpeed:)(a3, a4);
}

- (void)panoramaDriftingY:(double)a3
{
  v4 = self;
  CAMDockKitController.panoramaDriftingY(_:)(a3);
}

@end