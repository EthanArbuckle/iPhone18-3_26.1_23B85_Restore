@interface HMDNaturalLightingEnabledRetryContext
- (HMDNaturalLightingEnabledRetryContext)initWithNaturalLightingEnabled:(BOOL)enabled completion:(id)completion retryCount:(unint64_t)count;
- (id)attributeDescriptions;
@end

@implementation HMDNaturalLightingEnabledRetryContext

- (id)attributeDescriptions
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
  v4 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:@"Identifier" value:v3];
  v14[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDNaturalLightingEnabledRetryContext *)self naturalLightingEnabled];
  v6 = HMFBooleanToString();
  v7 = [v5 initWithName:@"Natural Lighting Enabled" value:v6];
  v14[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDNaturalLightingEnabledRetryContext retryCount](self, "retryCount")}];
  v10 = [v8 initWithName:@"Retry Count" value:v9];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDNaturalLightingEnabledRetryContext)initWithNaturalLightingEnabled:(BOOL)enabled completion:(id)completion retryCount:(unint64_t)count
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = HMDNaturalLightingEnabledRetryContext;
  v9 = [(HMDNaturalLightingEnabledRetryContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_naturalLightingEnabled = enabled;
    v11 = _Block_copy(completionCopy);
    completion = v10->_completion;
    v10->_completion = v11;

    v10->_retryCount = count;
  }

  return v10;
}

@end