@interface HK_TPSDiscoverabilitySignal
- (HK_TPSDiscoverabilitySignal)initWithIdentifier:(id)identifier;
- (void)donateSignal;
@end

@implementation HK_TPSDiscoverabilitySignal

- (HK_TPSDiscoverabilitySignal)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HK_TPSDiscoverabilitySignal;
  v5 = [(HK_TPSDiscoverabilitySignal *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)donateSignal
{
  identifier = [(HK_TPSDiscoverabilitySignal *)self identifier];
  v2 = BiomeLibrary();
  discoverability = [v2 Discoverability];
  signals = [discoverability Signals];

  source = [signals source];
  v6 = [objc_alloc(MEMORY[0x1E698EBC0]) initWithContentIdentifier:identifier context:0 osBuild:0 userInfo:0];
  [source sendEvent:v6];
}

@end