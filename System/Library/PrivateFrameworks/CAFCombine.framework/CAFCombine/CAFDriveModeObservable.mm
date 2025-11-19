@interface CAFDriveModeObservable
- (NSString)description;
- (void)driveModeService:(id)a3 didUpdateHidden:(BOOL)a4;
- (void)modeItemsService:(id)a3 didUpdateCurrentIndex:(unsigned int)a4;
- (void)modeItemsService:(id)a3 didUpdateDefaultIndex:(unsigned int)a4;
- (void)modeItemsService:(id)a3 didUpdateIdentifiers:(id)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFDriveModeObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFDriveModeObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)modeItemsService:(id)a3 didUpdateIdentifiers:(id)a4
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = self;
  CAFDriveModeObservable.modeItemsService(_:didUpdateIdentifiers:)();
}

- (void)modeItemsService:(id)a3 didUpdateCurrentIndex:(unsigned int)a4
{
  v5 = a3;
  v6 = self;
  CAFDriveModeObservable.modeItemsService(_:didUpdateCurrentIndex:)();
}

- (void)modeItemsService:(id)a3 didUpdateDefaultIndex:(unsigned int)a4
{
  v5 = a3;
  v6 = self;
  CAFDriveModeObservable.modeItemsService(_:didUpdateDefaultIndex:)();
}

- (void)driveModeService:(id)a3 didUpdateHidden:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFDriveModeObservable.driveModeService(_:didUpdateHidden:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFDriveModeObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFDriveModeObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFDriveModeObservable.serviceDidFinishGroupUpdate(_:)();
}

@end