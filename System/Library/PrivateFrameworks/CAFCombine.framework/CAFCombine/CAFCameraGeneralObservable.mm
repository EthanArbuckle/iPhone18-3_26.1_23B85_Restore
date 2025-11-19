@interface CAFCameraGeneralObservable
- (NSString)description;
- (void)cameraGeneralService:(id)a3 didUpdateOn:(BOOL)a4;
- (void)cameraGeneralService:(id)a3 didUpdateUserDismissible:(BOOL)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFCameraGeneralObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFCameraGeneralObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)cameraGeneralService:(id)a3 didUpdateOn:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFCameraGeneralObservable.cameraGeneralService(_:didUpdateOn:)();
}

- (void)cameraGeneralService:(id)a3 didUpdateUserDismissible:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFCameraGeneralObservable.cameraGeneralService(_:didUpdateUserDismissible:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFCameraGeneralObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFCameraGeneralObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFCameraGeneralObservable.serviceDidFinishGroupUpdate(_:)();
}

@end