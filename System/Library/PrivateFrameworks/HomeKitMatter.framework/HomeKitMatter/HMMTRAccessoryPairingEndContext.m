@interface HMMTRAccessoryPairingEndContext
+ (id)hapContextWithStep:(unint64_t)a3 error:(id)a4;
+ (id)hmmtrContextWithCancelledError:(id)a3;
+ (id)hmmtrContextWithStep:(unint64_t)a3 error:(id)a4;
+ (id)mtrContextWithStep:(unint64_t)a3 error:(id)a4;
+ (id)otherContextWithStep:(unint64_t)a3 error:(id)a4;
- (HMMTRAccessoryPairingEndContext)initWithStep:(id)a3 error:(id)a4 sourceErrorDomain:(id)a5;
- (id)attributeDescriptions;
@end

@implementation HMMTRAccessoryPairingEndContext

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMMTRAccessoryPairingEndContext *)self step];
  v5 = HMMTRAccessoryPairingStepAsString([v4 unsignedIntValue]);
  v6 = [v3 initWithName:@"Step" value:v5];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMMTRAccessoryPairingEndContext *)self error];
  v9 = [v7 initWithName:@"Error" value:v8];
  v16[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMMTRAccessoryPairingEndContext *)self sourceErrorDomain];
  v12 = [v10 initWithName:@"SourceErrorDomain" value:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMMTRAccessoryPairingEndContext)initWithStep:(id)a3 error:(id)a4 sourceErrorDomain:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMMTRAccessoryPairingEndContext;
  v12 = [(HMMTRAccessoryPairingEndContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_step, a3);
    v14 = [v10 copy];
    error = v13->_error;
    v13->_error = v14;

    objc_storeStrong(&v13->_sourceErrorDomain, a5);
  }

  return v13;
}

+ (id)otherContextWithStep:(unint64_t)a3 error:(id)a4
{
  v5 = a4;
  v6 = [HMMTRAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v5 domain];
  v9 = [(HMMTRAccessoryPairingEndContext *)v6 initWithStep:v7 error:v5 sourceErrorDomain:v8];

  return v9;
}

+ (id)hmmtrContextWithCancelledError:(id)a3
{
  v3 = a3;
  v4 = [[HMMTRAccessoryPairingEndContext alloc] initWithStep:0 error:v3 sourceErrorDomain:@"HMMTRErrorDomain"];

  return v4;
}

+ (id)mtrContextWithStep:(unint64_t)a3 error:(id)a4
{
  v5 = a4;
  v6 = [HMMTRAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [(HMMTRAccessoryPairingEndContext *)v6 initWithStep:v7 error:v5 sourceErrorDomain:*MEMORY[0x277CD5120]];

  return v8;
}

+ (id)hmmtrContextWithStep:(unint64_t)a3 error:(id)a4
{
  v5 = a4;
  v6 = [HMMTRAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [(HMMTRAccessoryPairingEndContext *)v6 initWithStep:v7 error:v5 sourceErrorDomain:@"HMMTRErrorDomain"];

  return v8;
}

+ (id)hapContextWithStep:(unint64_t)a3 error:(id)a4
{
  v5 = a4;
  v6 = [HMMTRAccessoryPairingEndContext alloc];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [(HMMTRAccessoryPairingEndContext *)v6 initWithStep:v7 error:v5 sourceErrorDomain:*MEMORY[0x277CFE770]];

  return v8;
}

@end