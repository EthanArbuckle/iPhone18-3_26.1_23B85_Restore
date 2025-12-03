@interface HMDNaturalLightingActiveTransitionContext
- (BOOL)isEqual:(id)equal;
- (HMDNaturalLightingActiveTransitionContext)initWithStartDate:(id)date millisecondsElapsedSinceStartDate:(unint64_t)startDate transitionChecksum:(id)checksum;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDNaturalLightingActiveTransitionContext

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  startDate = [(HMDNaturalLightingActiveTransitionContext *)self startDate];
  v5 = [v3 initWithName:@"Start Date" value:startDate];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingActiveTransitionContext millisecondsElapsedSinceStartDate](self, "millisecondsElapsedSinceStartDate", v5)}];
  v8 = [v6 initWithName:@"Milliseconds Elapsed Since Start Date" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  transitionChecksum = [(HMDNaturalLightingActiveTransitionContext *)self transitionChecksum];
  v11 = [v9 initWithName:@"Transition Checksum" value:transitionChecksum];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)hash
{
  startDate = [(HMDNaturalLightingActiveTransitionContext *)self startDate];
  v4 = [startDate hash];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDNaturalLightingActiveTransitionContext millisecondsElapsedSinceStartDate](self, "millisecondsElapsedSinceStartDate")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    startDate = [v6 startDate];
    startDate2 = [(HMDNaturalLightingActiveTransitionContext *)self startDate];
    if ([startDate isEqual:startDate2] && (v10 = objc_msgSend(v7, "millisecondsElapsedSinceStartDate"), v10 == -[HMDNaturalLightingActiveTransitionContext millisecondsElapsedSinceStartDate](self, "millisecondsElapsedSinceStartDate")))
    {
      transitionChecksum = [v7 transitionChecksum];
      transitionChecksum2 = [(HMDNaturalLightingActiveTransitionContext *)self transitionChecksum];
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

- (HMDNaturalLightingActiveTransitionContext)initWithStartDate:(id)date millisecondsElapsedSinceStartDate:(unint64_t)startDate transitionChecksum:(id)checksum
{
  dateCopy = date;
  checksumCopy = checksum;
  v16.receiver = self;
  v16.super_class = HMDNaturalLightingActiveTransitionContext;
  v10 = [(HMDNaturalLightingActiveTransitionContext *)&v16 init];
  if (v10)
  {
    v11 = [dateCopy copy];
    startDate = v10->_startDate;
    v10->_startDate = v11;

    v10->_millisecondsElapsedSinceStartDate = startDate;
    v13 = [checksumCopy copy];
    transitionChecksum = v10->_transitionChecksum;
    v10->_transitionChecksum = v13;
  }

  return v10;
}

@end