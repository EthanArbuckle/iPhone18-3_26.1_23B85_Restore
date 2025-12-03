@interface HFTriggerActionSetsBuilder(HRETriggerRecommendation)
- (id)hre_recommendedActions;
@end

@implementation HFTriggerActionSetsBuilder(HRETriggerRecommendation)

- (id)hre_recommendedActions
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D14868]);
    v6 = [MEMORY[0x277CBEB98] set];
    v4 = [v5 initWithFromSet:v6];

    objc_setAssociatedObject(self, a2, v4, 0x301);
  }

  return v4;
}

@end