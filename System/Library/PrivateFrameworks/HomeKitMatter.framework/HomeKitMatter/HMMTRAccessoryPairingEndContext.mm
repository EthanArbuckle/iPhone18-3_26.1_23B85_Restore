@interface HMMTRAccessoryPairingEndContext
+ (id)hapContextWithStep:(unint64_t)step error:(id)error;
+ (id)hmmtrContextWithCancelledError:(id)error;
+ (id)hmmtrContextWithStep:(unint64_t)step error:(id)error;
+ (id)mtrContextWithStep:(unint64_t)step error:(id)error;
+ (id)otherContextWithStep:(unint64_t)step error:(id)error;
- (HMMTRAccessoryPairingEndContext)initWithStep:(id)step error:(id)error sourceErrorDomain:(id)domain;
- (id)attributeDescriptions;
@end

@implementation HMMTRAccessoryPairingEndContext

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  step = [(HMMTRAccessoryPairingEndContext *)self step];
  v5 = HMMTRAccessoryPairingStepAsString([step unsignedIntValue]);
  v6 = [v3 initWithName:@"Step" value:v5];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  error = [(HMMTRAccessoryPairingEndContext *)self error];
  v9 = [v7 initWithName:@"Error" value:error];
  v16[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  sourceErrorDomain = [(HMMTRAccessoryPairingEndContext *)self sourceErrorDomain];
  v12 = [v10 initWithName:@"SourceErrorDomain" value:sourceErrorDomain];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMMTRAccessoryPairingEndContext)initWithStep:(id)step error:(id)error sourceErrorDomain:(id)domain
{
  stepCopy = step;
  errorCopy = error;
  domainCopy = domain;
  v17.receiver = self;
  v17.super_class = HMMTRAccessoryPairingEndContext;
  v12 = [(HMMTRAccessoryPairingEndContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_step, step);
    v14 = [errorCopy copy];
    error = v13->_error;
    v13->_error = v14;

    objc_storeStrong(&v13->_sourceErrorDomain, domain);
  }

  return v13;
}

+ (id)otherContextWithStep:(unint64_t)step error:(id)error
{
  errorCopy = error;
  v6 = [HMMTRAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:step];
  domain = [errorCopy domain];
  v9 = [(HMMTRAccessoryPairingEndContext *)v6 initWithStep:v7 error:errorCopy sourceErrorDomain:domain];

  return v9;
}

+ (id)hmmtrContextWithCancelledError:(id)error
{
  errorCopy = error;
  v4 = [[HMMTRAccessoryPairingEndContext alloc] initWithStep:0 error:errorCopy sourceErrorDomain:@"HMMTRErrorDomain"];

  return v4;
}

+ (id)mtrContextWithStep:(unint64_t)step error:(id)error
{
  errorCopy = error;
  v6 = [HMMTRAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:step];
  v8 = [(HMMTRAccessoryPairingEndContext *)v6 initWithStep:v7 error:errorCopy sourceErrorDomain:*MEMORY[0x277CD5120]];

  return v8;
}

+ (id)hmmtrContextWithStep:(unint64_t)step error:(id)error
{
  errorCopy = error;
  v6 = [HMMTRAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:step];
  v8 = [(HMMTRAccessoryPairingEndContext *)v6 initWithStep:v7 error:errorCopy sourceErrorDomain:@"HMMTRErrorDomain"];

  return v8;
}

+ (id)hapContextWithStep:(unint64_t)step error:(id)error
{
  errorCopy = error;
  v6 = [HMMTRAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:step];
  v8 = [(HMMTRAccessoryPairingEndContext *)v6 initWithStep:v7 error:errorCopy sourceErrorDomain:*MEMORY[0x277CFE770]];

  return v8;
}

@end