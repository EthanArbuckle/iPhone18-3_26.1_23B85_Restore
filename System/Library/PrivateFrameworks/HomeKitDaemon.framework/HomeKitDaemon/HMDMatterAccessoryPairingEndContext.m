@interface HMDMatterAccessoryPairingEndContext
+ (id)contextFromMTRContext:(id)a3;
+ (id)hmContextWithCancelledError:(id)a3;
+ (id)hmdContextWithCancelledError:(id)a3;
+ (id)hmdContextWithError:(id)a3;
+ (id)hmdContextWithStep:(unint64_t)a3 error:(id)a4;
+ (id)hmmtrContextWithStep:(unint64_t)a3 error:(id)a4;
+ (id)pairingCompletedContext;
- (HMDMatterAccessoryPairingEndContext)initWithStep:(id)a3 error:(id)a4 sourceErrorDomain:(id)a5 isCancelled:(BOOL)a6;
- (id)attributeDescriptions;
@end

@implementation HMDMatterAccessoryPairingEndContext

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMatterAccessoryPairingEndContext *)self step];
  v5 = HMDMatterAccessoryPairingStepAsString([v4 unsignedIntValue]);
  v6 = [v3 initWithName:@"Step" value:v5];
  v19[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDMatterAccessoryPairingEndContext *)self error];
  v9 = [v7 initWithName:@"Error" value:v8];
  v19[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDMatterAccessoryPairingEndContext *)self sourceErrorDomain];
  v12 = [v10 initWithName:@"SourceErrorDomain" value:v11];
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

- (HMDMatterAccessoryPairingEndContext)initWithStep:(id)a3 error:(id)a4 sourceErrorDomain:(id)a5 isCancelled:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = HMDMatterAccessoryPairingEndContext;
  v14 = [(HMDMatterAccessoryPairingEndContext *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_step, a3);
    v16 = [v12 copy];
    error = v15->_error;
    v15->_error = v16;

    objc_storeStrong(&v15->_sourceErrorDomain, a5);
    v15->_isCancelled = a6;
  }

  return v15;
}

+ (id)hmmtrContextWithStep:(unint64_t)a3 error:(id)a4
{
  v5 = a4;
  v6 = [HMDMatterAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [(HMDMatterAccessoryPairingEndContext *)v6 initWithStep:v7 error:v5 sourceErrorDomain:*MEMORY[0x277D17A00] isCancelled:0];

  return v8;
}

+ (id)hmdContextWithCancelledError:(id)a3
{
  v3 = a3;
  v4 = [[HMDMatterAccessoryPairingEndContext alloc] initWithStep:0 error:v3 sourceErrorDomain:@"HMDErrorDomain" isCancelled:1];

  return v4;
}

+ (id)hmdContextWithError:(id)a3
{
  v3 = a3;
  v4 = [[HMDMatterAccessoryPairingEndContext alloc] initWithStep:0 error:v3 sourceErrorDomain:@"HMDErrorDomain" isCancelled:0];

  return v4;
}

+ (id)hmdContextWithStep:(unint64_t)a3 error:(id)a4
{
  v5 = a4;
  v6 = [HMDMatterAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [(HMDMatterAccessoryPairingEndContext *)v6 initWithStep:v7 error:v5 sourceErrorDomain:@"HMDErrorDomain" isCancelled:0];

  return v8;
}

+ (id)hmContextWithCancelledError:(id)a3
{
  v3 = a3;
  v4 = [HMDMatterAccessoryPairingEndContext alloc];
  v5 = [(HMDMatterAccessoryPairingEndContext *)v4 initWithStep:0 error:v3 sourceErrorDomain:*MEMORY[0x277CCFD28] isCancelled:1];

  return v5;
}

+ (id)pairingCompletedContext
{
  v2 = [[HMDMatterAccessoryPairingEndContext alloc] initWithStep:&unk_283E72290 error:0 sourceErrorDomain:0 isCancelled:0];

  return v2;
}

+ (id)contextFromMTRContext:(id)a3
{
  v3 = a3;
  v4 = [v3 step];

  v5 = [v3 step];
  v6 = [v5 unsignedIntValue];

  v7 = [HMDMatterAccessoryPairingEndContext alloc];
  v8 = [v3 step];
  if (v8)
  {
    if (v6 - 1 < 0x16)
    {
      v9 = v6 + 1;
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

  v11 = [v3 error];
  v12 = [v3 sourceErrorDomain];
  v13 = [(HMDMatterAccessoryPairingEndContext *)v7 initWithStep:v10 error:v11 sourceErrorDomain:v12 isCancelled:v4 == 0];

  if (v8)
  {
  }

  return v13;
}

@end