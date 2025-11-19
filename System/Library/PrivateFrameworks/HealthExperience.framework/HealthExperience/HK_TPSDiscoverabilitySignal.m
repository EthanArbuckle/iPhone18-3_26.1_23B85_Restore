@interface HK_TPSDiscoverabilitySignal
- (HK_TPSDiscoverabilitySignal)initWithIdentifier:(id)a3;
- (void)donateSignal;
@end

@implementation HK_TPSDiscoverabilitySignal

- (HK_TPSDiscoverabilitySignal)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HK_TPSDiscoverabilitySignal;
  v5 = [(HK_TPSDiscoverabilitySignal *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)donateSignal
{
  v7 = [(HK_TPSDiscoverabilitySignal *)self identifier];
  v2 = BiomeLibrary();
  v3 = [v2 Discoverability];
  v4 = [v3 Signals];

  v5 = [v4 source];
  v6 = [objc_alloc(MEMORY[0x1E698EBC0]) initWithContentIdentifier:v7 context:0 osBuild:0 userInfo:0];
  [v5 sendEvent:v6];
}

@end