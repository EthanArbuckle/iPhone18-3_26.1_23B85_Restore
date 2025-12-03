@interface HFStaticReadPolicy
+ (id)policyWithDecision:(unint64_t)decision;
- (HFStaticReadPolicy)init;
- (HFStaticReadPolicy)initWithDecision:(unint64_t)decision;
- (NSString)description;
- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits;
@end

@implementation HFStaticReadPolicy

+ (id)policyWithDecision:(unint64_t)decision
{
  v3 = [objc_alloc(objc_opt_class()) initWithDecision:decision];

  return v3;
}

- (HFStaticReadPolicy)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDecision_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicReadPolicy.m" lineNumber:345 description:{@"%s is unavailable; use %@ instead", "-[HFStaticReadPolicy init]", v5}];

  return 0;
}

- (HFStaticReadPolicy)initWithDecision:(unint64_t)decision
{
  v5.receiver = self;
  v5.super_class = HFStaticReadPolicy;
  result = [(HFStaticReadPolicy *)&v5 init];
  if (result)
  {
    result->_decision = decision;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  decision = [(HFStaticReadPolicy *)self decision];
  v5 = decision;
  if (decision >= 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *HFStringFromReadPolicyDecision(HFCharacteristicReadPolicyDecision)"];
    [currentHandler handleFailureInFunction:v8 file:@"HFCharacteristicReadPolicy.m" lineNumber:53 description:{@"Unknown decision value: %d", v5}];

    v6 = 0;
  }

  else
  {
    v6 = off_277DFB058[decision];
  }

  v9 = v6;
  [v3 appendString:v9 withName:@"decision"];

  build = [v3 build];

  return build;
}

- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits
{
  characteristicCopy = characteristic;
  if (traits)
  {
    decision = [(HFStaticReadPolicy *)self decision];
    switch(decision)
    {
      case 2uLL:
        v8 = MEMORY[0x277CBEB98];
        v9 = @"ExplicitlyRequired";
        goto LABEL_8;
      case 1uLL:
        v10 = [MEMORY[0x277CBEB98] set];
LABEL_9:
        *traits = v10;
        break;
      case 0uLL:
        v8 = MEMORY[0x277CBEB98];
        v9 = @"ExplicitlyDisallowed";
LABEL_8:
        v10 = [v8 setWithObject:v9];
        goto LABEL_9;
    }
  }

  decision2 = [(HFStaticReadPolicy *)self decision];

  return decision2;
}

@end