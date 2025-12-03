@interface CameraController
- (NSString)description;
- (_TtC13HomeDataModel16CameraController)init;
- (void)cameraSnapshotControl:(id)control didTakeSnapshot:(id)snapshot error:(id)error;
- (void)cameraStreamControl:(id)control didStopStreamWithError:(id)error;
@end

@implementation CameraController

- (_TtC13HomeDataModel16CameraController)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{

  CameraController.description.getter();

  v2 = sub_1D1E677EC();

  return v2;
}

- (void)cameraStreamControl:(id)control didStopStreamWithError:(id)error
{
  controlCopy = control;

  errorCopy = error;
  CameraController.cameraStreamControl(_:didStopStreamWithError:)(controlCopy, error);
}

- (void)cameraSnapshotControl:(id)control didTakeSnapshot:(id)snapshot error:(id)error
{
  controlCopy = control;
  snapshotCopy = snapshot;

  errorCopy = error;
  sub_1D17DBEDC(snapshot, error);
}

@end