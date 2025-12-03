@interface HFBlockBasedReadPolicy
- (HFBlockBasedReadPolicy)init;
- (HFBlockBasedReadPolicy)initWithReadPolicyBlock:(id)block;
- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits;
@end

@implementation HFBlockBasedReadPolicy

- (HFBlockBasedReadPolicy)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithReadPolicyBlock_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicReadPolicy.m" lineNumber:389 description:{@"%s is unavailable; use %@ instead", "-[HFBlockBasedReadPolicy init]", v5}];

  return 0;
}

- (HFBlockBasedReadPolicy)initWithReadPolicyBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = HFBlockBasedReadPolicy;
  v5 = [(HFBlockBasedReadPolicy *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    readPolicyBlock = v5->_readPolicyBlock;
    v5->_readPolicyBlock = v6;
  }

  return v5;
}

- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits
{
  characteristicCopy = characteristic;
  readPolicyBlock = [(HFBlockBasedReadPolicy *)self readPolicyBlock];
  v8 = (readPolicyBlock)[2](readPolicyBlock, characteristicCopy, traits);

  return v8;
}

@end