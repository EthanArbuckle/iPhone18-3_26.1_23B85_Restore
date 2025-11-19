@interface HMDNaturalLightingActiveTransitionContext
- (BOOL)isEqual:(id)a3;
- (HMDNaturalLightingActiveTransitionContext)initWithStartDate:(id)a3 millisecondsElapsedSinceStartDate:(unint64_t)a4 transitionChecksum:(id)a5;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDNaturalLightingActiveTransitionContext

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDNaturalLightingActiveTransitionContext *)self startDate];
  v5 = [v3 initWithName:@"Start Date" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingActiveTransitionContext millisecondsElapsedSinceStartDate](self, "millisecondsElapsedSinceStartDate", v5)}];
  v8 = [v6 initWithName:@"Milliseconds Elapsed Since Start Date" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDNaturalLightingActiveTransitionContext *)self transitionChecksum];
  v11 = [v9 initWithName:@"Transition Checksum" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HMDNaturalLightingActiveTransitionContext *)self startDate];
  v4 = [v3 hash];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingActiveTransitionContext millisecondsElapsedSinceStartDate](self, "millisecondsElapsedSinceStartDate")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 startDate];
    v9 = [(HMDNaturalLightingActiveTransitionContext *)self startDate];
    if ([v8 isEqual:v9] && (v10 = objc_msgSend(v7, "millisecondsElapsedSinceStartDate"), v10 == -[HMDNaturalLightingActiveTransitionContext millisecondsElapsedSinceStartDate](self, "millisecondsElapsedSinceStartDate")))
    {
      v11 = [v7 transitionChecksum];
      v12 = [(HMDNaturalLightingActiveTransitionContext *)self transitionChecksum];
      v13 = HMFEqualObjects();
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (HMDNaturalLightingActiveTransitionContext)initWithStartDate:(id)a3 millisecondsElapsedSinceStartDate:(unint64_t)a4 transitionChecksum:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HMDNaturalLightingActiveTransitionContext;
  v10 = [(HMDNaturalLightingActiveTransitionContext *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    startDate = v10->_startDate;
    v10->_startDate = v11;

    v10->_millisecondsElapsedSinceStartDate = a4;
    v13 = [v9 copy];
    transitionChecksum = v10->_transitionChecksum;
    v10->_transitionChecksum = v13;
  }

  return v10;
}

@end