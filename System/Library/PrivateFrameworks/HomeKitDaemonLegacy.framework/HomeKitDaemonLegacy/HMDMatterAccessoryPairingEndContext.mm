@interface HMDMatterAccessoryPairingEndContext
+ (id)contextFromMTRContext:(id)context;
+ (id)hmContextWithCancelledError:(id)error;
+ (id)hmdContextWithCancelledError:(id)error;
+ (id)hmdContextWithError:(id)error;
+ (id)hmdContextWithStep:(unint64_t)step error:(id)error;
+ (id)hmmtrContextWithStep:(unint64_t)step error:(id)error;
+ (id)pairingCompletedContext;
- (HMDMatterAccessoryPairingEndContext)initWithStep:(id)step error:(id)error sourceErrorDomain:(id)domain isCancelled:(BOOL)cancelled;
- (id)attributeDescriptions;
@end

@implementation HMDMatterAccessoryPairingEndContext

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  step = [(HMDMatterAccessoryPairingEndContext *)self step];
  v5 = HMDMatterAccessoryPairingStepAsString([step unsignedIntValue]);
  v6 = [v3 initWithName:@"Step" value:v5];
  v19[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  error = [(HMDMatterAccessoryPairingEndContext *)self error];
  v9 = [v7 initWithName:@"Error" value:error];
  v19[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  sourceErrorDomain = [(HMDMatterAccessoryPairingEndContext *)self sourceErrorDomain];
  v12 = [v10 initWithName:@"SourceErrorDomain" value:sourceErrorDomain];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDMatterAccessoryPairingEndContext *)self isCancelled];
  v14 = HMFBooleanToString();
  v15 = [v13 initWithName:@"IsCancelled" value:v14];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HMDMatterAccessoryPairingEndContext)initWithStep:(id)step error:(id)error sourceErrorDomain:(id)domain isCancelled:(BOOL)cancelled
{
  stepCopy = step;
  errorCopy = error;
  domainCopy = domain;
  v19.receiver = self;
  v19.super_class = HMDMatterAccessoryPairingEndContext;
  v14 = [(HMDMatterAccessoryPairingEndContext *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_step, step);
    v16 = [errorCopy copy];
    error = v15->_error;
    v15->_error = v16;

    objc_storeStrong(&v15->_sourceErrorDomain, domain);
    v15->_isCancelled = cancelled;
  }

  return v15;
}

+ (id)hmmtrContextWithStep:(unint64_t)step error:(id)error
{
  errorCopy = error;
  v6 = [HMDMatterAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:step];
  v8 = [(HMDMatterAccessoryPairingEndContext *)v6 initWithStep:v7 error:errorCopy sourceErrorDomain:*MEMORY[0x277D17A00] isCancelled:0];

  return v8;
}

+ (id)hmdContextWithCancelledError:(id)error
{
  errorCopy = error;
  v4 = [[HMDMatterAccessoryPairingEndContext alloc] initWithStep:0 error:errorCopy sourceErrorDomain:@"HMDErrorDomain" isCancelled:1];

  return v4;
}

+ (id)hmdContextWithError:(id)error
{
  errorCopy = error;
  v4 = [[HMDMatterAccessoryPairingEndContext alloc] initWithStep:0 error:errorCopy sourceErrorDomain:@"HMDErrorDomain" isCancelled:0];

  return v4;
}

+ (id)hmdContextWithStep:(unint64_t)step error:(id)error
{
  errorCopy = error;
  v6 = [HMDMatterAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:step];
  v8 = [(HMDMatterAccessoryPairingEndContext *)v6 initWithStep:v7 error:errorCopy sourceErrorDomain:@"HMDErrorDomain" isCancelled:0];

  return v8;
}

+ (id)hmContextWithCancelledError:(id)error
{
  errorCopy = error;
  v4 = [HMDMatterAccessoryPairingEndContext alloc];
  v5 = [(HMDMatterAccessoryPairingEndContext *)v4 initWithStep:0 error:errorCopy sourceErrorDomain:*MEMORY[0x277CCFD28] isCancelled:1];

  return v5;
}

+ (id)pairingCompletedContext
{
  v2 = [[HMDMatterAccessoryPairingEndContext alloc] initWithStep:&unk_2866283D8 error:0 sourceErrorDomain:0 isCancelled:0];

  return v2;
}

+ (id)contextFromMTRContext:(id)context
{
  contextCopy = context;
  step = [contextCopy step];

  step2 = [contextCopy step];
  unsignedIntValue = [step2 unsignedIntValue];

  v7 = [HMDMatterAccessoryPairingEndContext alloc];
  step3 = [contextCopy step];
  if (step3)
  {
    if (unsignedIntValue - 1 < 0x16)
    {
      v9 = unsignedIntValue + 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  }

  else
  {
    v10 = 0;
  }

  error = [contextCopy error];
  sourceErrorDomain = [contextCopy sourceErrorDomain];
  v13 = [(HMDMatterAccessoryPairingEndContext *)v7 initWithStep:v10 error:error sourceErrorDomain:sourceErrorDomain isCancelled:step == 0];

  if (step3)
  {
  }

  return v13;
}

@end