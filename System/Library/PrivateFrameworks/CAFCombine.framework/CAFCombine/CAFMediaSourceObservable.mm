@interface CAFMediaSourceObservable
- (NSString)description;
- (void)mediaSourceService:(id)a3 didUpdateCurrentFrequency:(unsigned int)a4;
- (void)mediaSourceService:(id)a3 didUpdateDisabled:(BOOL)a4;
- (void)mediaSourceService:(id)a3 didUpdateMediaItemImages:(id)a4;
- (void)mediaSourceService:(id)a3 didUpdateMediaItems:(id)a4;
- (void)mediaSourceService:(id)a3 didUpdateMediaSourceSemanticType:(unsigned __int8)a4;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
@end

@implementation CAFMediaSourceObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFMediaSourceObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)mediaSourceService:(id)a3 didUpdateCurrentFrequency:(unsigned int)a4
{
  v5 = a3;
  v6 = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateCurrentFrequency:)();
}

- (void)mediaSourceService:(id)a3 didUpdateMediaItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaItems:)(v8, a4);
}

- (void)mediaSourceService:(id)a3 didUpdateMediaSourceSemanticType:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaSourceSemanticType:)();
}

- (void)mediaSourceService:(id)a3 didUpdateDisabled:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateDisabled:)();
}

- (void)mediaSourceService:(id)a3 didUpdateMediaItemImages:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CAFMediaSourceObservable.mediaSourceService(_:didUpdateMediaItemImages:)(v8, a4);
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFMediaSourceObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFMediaSourceObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFMediaSourceObservable.serviceDidFinishGroupUpdate(_:)();
}

@end