@interface HFLegacyBlockBasedReadPolicy
- (HFLegacyBlockBasedReadPolicy)init;
- (HFLegacyBlockBasedReadPolicy)initWithReadValidator:(id)validator;
- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits;
@end

@implementation HFLegacyBlockBasedReadPolicy

- (HFLegacyBlockBasedReadPolicy)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithReadValidator_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicReadPolicy.m" lineNumber:414 description:{@"%s is unavailable; use %@ instead", "-[HFLegacyBlockBasedReadPolicy init]", v5}];

  return 0;
}

- (HFLegacyBlockBasedReadPolicy)initWithReadValidator:(id)validator
{
  validatorCopy = validator;
  v9.receiver = self;
  v9.super_class = HFLegacyBlockBasedReadPolicy;
  v5 = [(HFLegacyBlockBasedReadPolicy *)&v9 init];
  if (v5)
  {
    v6 = [validatorCopy copy];
    readValidator = v5->_readValidator;
    v5->_readValidator = v6;
  }

  return v5;
}

- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits
{
  characteristicCopy = characteristic;
  readValidator = [(HFLegacyBlockBasedReadPolicy *)self readValidator];
  v8 = (readValidator)[2](readValidator, characteristicCopy, 0);

  if ((v8 & 1) == 0)
  {
    *traits = [MEMORY[0x277CBEB98] setWithObject:@"ExplicitlyDisallowed"];
  }

  return v8;
}

@end