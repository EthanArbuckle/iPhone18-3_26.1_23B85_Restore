@interface HFLegacyBlockBasedReadPolicy
- (HFLegacyBlockBasedReadPolicy)init;
- (HFLegacyBlockBasedReadPolicy)initWithReadValidator:(id)a3;
- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4;
@end

@implementation HFLegacyBlockBasedReadPolicy

- (HFLegacyBlockBasedReadPolicy)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithReadValidator_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCharacteristicReadPolicy.m" lineNumber:414 description:{@"%s is unavailable; use %@ instead", "-[HFLegacyBlockBasedReadPolicy init]", v5}];

  return 0;
}

- (HFLegacyBlockBasedReadPolicy)initWithReadValidator:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFLegacyBlockBasedReadPolicy;
  v5 = [(HFLegacyBlockBasedReadPolicy *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    readValidator = v5->_readValidator;
    v5->_readValidator = v6;
  }

  return v5;
}

- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4
{
  v6 = a3;
  v7 = [(HFLegacyBlockBasedReadPolicy *)self readValidator];
  v8 = (v7)[2](v7, v6, 0);

  if ((v8 & 1) == 0)
  {
    *a4 = [MEMORY[0x277CBEB98] setWithObject:@"ExplicitlyDisallowed"];
  }

  return v8;
}

@end