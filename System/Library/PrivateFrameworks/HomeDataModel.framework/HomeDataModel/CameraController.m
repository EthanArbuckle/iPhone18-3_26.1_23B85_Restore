@interface CameraController
- (NSString)description;
- (_TtC13HomeDataModel16CameraController)init;
- (void)cameraSnapshotControl:(id)a3 didTakeSnapshot:(id)a4 error:(id)a5;
- (void)cameraStreamControl:(id)a3 didStopStreamWithError:(id)a4;
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

- (void)cameraStreamControl:(id)a3 didStopStreamWithError:(id)a4
{
  v5 = a3;

  v6 = a4;
  CameraController.cameraStreamControl(_:didStopStreamWithError:)(v5, a4);
}

- (void)cameraSnapshotControl:(id)a3 didTakeSnapshot:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;

  v9 = a5;
  sub_1D17DBEDC(a4, a5);
}

@end