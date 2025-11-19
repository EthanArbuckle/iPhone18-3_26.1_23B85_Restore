@interface CAFSoundDistributionObservable
- (NSString)description;
- (void)serviceDidFinishGroupUpdate:(id)a3;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)soundDistributionService:(id)a3 didUpdateBalance:(char)a4;
- (void)soundDistributionService:(id)a3 didUpdateFade:(char)a4;
@end

@implementation CAFSoundDistributionObservable

- (NSString)description
{
  v2 = self;
  v3 = CAFSoundDistributionObservable.description.getter();
  v5 = v4;

  v6 = MEMORY[0x245D0A4C0](v3, v5);

  return v6;
}

- (void)soundDistributionService:(id)a3 didUpdateBalance:(char)a4
{
  v5 = a3;
  v6 = self;
  CAFSoundDistributionObservable.soundDistributionService(_:didUpdateBalance:)();
}

- (void)soundDistributionService:(id)a3 didUpdateFade:(char)a4
{
  v5 = a3;
  v6 = self;
  CAFSoundDistributionObservable.soundDistributionService(_:didUpdateFade:)();
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v11 = self;
  CAFSoundDistributionObservable.serviceDidUpdate(_:characteristic:fromGroupUpdate:)(v11, v10, a5);
}

- (void)serviceDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  CAFSoundDistributionObservable.serviceDidUpdate(_:receivedAllValues:)(v7, a4);
}

- (void)serviceDidFinishGroupUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  CAFSoundDistributionObservable.serviceDidFinishGroupUpdate(_:)();
}

@end