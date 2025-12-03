@interface CAMDockKitController
- (BOOL)isConnectedAndTracking;
- (BOOL)isTrackingLocked;
- (BOOL)shouldShowTrackingSummaryViews;
- (_TtC8CameraUI20CAMDockKitController)init;
- (_TtC8CameraUI20CAMDockKitController)initWithMotionController:(id)controller;
- (id)matchingTrackedSubjectForAnstID:(int64_t)d;
- (void)captureModeDidChange:(int64_t)change;
- (void)panoramaCaptureDidStart:(int64_t)start;
- (void)panoramaCaptureDidStop:(int64_t)stop;
- (void)panoramaDriftingY:(double)y;
- (void)panoramaPaintingUpdatedWithCurrentSpeed:(double)speed maxAllowedSpeed:(double)allowedSpeed;
- (void)systemEventDataWithInfo:(id)info data:(id)data;
- (void)tapToTrackTriggeredAtPoint:(CGPoint)point devicePosition:(int64_t)position;
- (void)trackingSummaryDataWithInfo:(id)info data:(id)data;
@end

@implementation CAMDockKitController

- (_TtC8CameraUI20CAMDockKitController)initWithMotionController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_1A38962F8();

  return v4;
}

- (BOOL)shouldShowTrackingSummaryViews
{
  selfCopy = self;
  v3 = sub_1A3892FC4();

  return v3;
}

- (void)tapToTrackTriggeredAtPoint:(CGPoint)point devicePosition:(int64_t)position
{
  selfCopy = self;
  sub_1A389307C();
}

- (void)captureModeDidChange:(int64_t)change
{
  selfCopy = self;
  sub_1A3893834(change);
}

- (BOOL)isConnectedAndTracking
{
  selfCopy = self;
  v3 = sub_1A389401C();

  return v3;
}

- (_TtC8CameraUI20CAMDockKitController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemEventDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;
  selfCopy = self;
  sub_1A38C9850(dataCopy);
}

- (void)trackingSummaryDataWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  dataCopy = data;
  selfCopy = self;
  sub_1A3966334();
}

- (id)matchingTrackedSubjectForAnstID:(int64_t)d
{
  selfCopy = self;
  v5 = CAMDockKitController.matchingTrackedSubjectForAnstID(_:)(d);

  return v5;
}

- (BOOL)isTrackingLocked
{
  selfCopy = self;
  v3 = CAMDockKitController.isTrackingLocked()();

  return v3;
}

- (void)panoramaCaptureDidStart:(int64_t)start
{
  selfCopy = self;
  CAMDockKitController.panoramaCaptureDidStart(_:)(start);
}

- (void)panoramaCaptureDidStop:(int64_t)stop
{
  selfCopy = self;
  CAMDockKitController.panoramaCaptureDidStop(_:)(stop);
}

- (void)panoramaPaintingUpdatedWithCurrentSpeed:(double)speed maxAllowedSpeed:(double)allowedSpeed
{
  selfCopy = self;
  CAMDockKitController.panoramaPaintingUpdated(currentSpeed:maxAllowedSpeed:)(speed, allowedSpeed);
}

- (void)panoramaDriftingY:(double)y
{
  selfCopy = self;
  CAMDockKitController.panoramaDriftingY(_:)(y);
}

@end