@interface HFStaticReadPolicy
+ (id)policyWithDecision:(unint64_t)a3;
- (HFStaticReadPolicy)init;
- (HFStaticReadPolicy)initWithDecision:(unint64_t)a3;
- (NSString)description;
- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4;
@end

@implementation HFStaticReadPolicy

+ (id)policyWithDecision:(unint64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithDecision:a3];

  return v3;
}

- (HFStaticReadPolicy)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDecision_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCharacteristicReadPolicy.m" lineNumber:345 description:{@"%s is unavailable; use %@ instead", "-[HFStaticReadPolicy init]", v5}];

  return 0;
}

- (HFStaticReadPolicy)initWithDecision:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HFStaticReadPolicy;
  result = [(HFStaticReadPolicy *)&v5 init];
  if (result)
  {
    result->_decision = a3;
  }

  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFStaticReadPolicy *)self decision];
  v5 = v4;
  if (v4 >= 3)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *HFStringFromReadPolicyDecision(HFCharacteristicReadPolicyDecision)"];
    [v7 handleFailureInFunction:v8 file:@"HFCharacteristicReadPolicy.m" lineNumber:53 description:{@"Unknown decision value: %d", v5}];

    v6 = 0;
  }

  else
  {
    v6 = off_277DFB058[v4];
  }

  v9 = v6;
  [v3 appendString:v9 withName:@"decision"];

  v10 = [v3 build];

  return v10;
}

- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = [(HFStaticReadPolicy *)self decision];
    switch(v7)
    {
      case 2uLL:
        v8 = MEMORY[0x277CBEB98];
        v9 = @"ExplicitlyRequired";
        goto LABEL_8;
      case 1uLL:
        v10 = [MEMORY[0x277CBEB98] set];
LABEL_9:
        *a4 = v10;
        break;
      case 0uLL:
        v8 = MEMORY[0x277CBEB98];
        v9 = @"ExplicitlyDisallowed";
LABEL_8:
        v10 = [v8 setWithObject:v9];
        goto LABEL_9;
    }
  }

  v11 = [(HFStaticReadPolicy *)self decision];

  return v11;
}

@end