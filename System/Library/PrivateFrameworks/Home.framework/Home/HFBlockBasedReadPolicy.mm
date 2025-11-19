@interface HFBlockBasedReadPolicy
- (HFBlockBasedReadPolicy)init;
- (HFBlockBasedReadPolicy)initWithReadPolicyBlock:(id)a3;
- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4;
@end

@implementation HFBlockBasedReadPolicy

- (HFBlockBasedReadPolicy)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithReadPolicyBlock_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCharacteristicReadPolicy.m" lineNumber:389 description:{@"%s is unavailable; use %@ instead", "-[HFBlockBasedReadPolicy init]", v5}];

  return 0;
}

- (HFBlockBasedReadPolicy)initWithReadPolicyBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HFBlockBasedReadPolicy;
  v5 = [(HFBlockBasedReadPolicy *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    readPolicyBlock = v5->_readPolicyBlock;
    v5->_readPolicyBlock = v6;
  }

  return v5;
}

- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4
{
  v6 = a3;
  v7 = [(HFBlockBasedReadPolicy *)self readPolicyBlock];
  v8 = (v7)[2](v7, v6, a4);

  return v8;
}

@end