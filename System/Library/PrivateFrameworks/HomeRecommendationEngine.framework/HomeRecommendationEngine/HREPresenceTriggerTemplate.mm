@interface HREPresenceTriggerTemplate
- (id)_subclass_triggerBuilderForRecommendation:(id)recommendation withObjects:(id)objects;
@end

@implementation HREPresenceTriggerTemplate

- (id)_subclass_triggerBuilderForRecommendation:(id)recommendation withObjects:(id)objects
{
  recommendationCopy = recommendation;
  v6 = objc_alloc_init(HRERecommendationEmptyTriggerBuilderContext);
  v7 = objc_alloc(MEMORY[0x277D14668]);
  home = [recommendationCopy home];

  v9 = [v7 initWithHome:home context:v6];
  v10 = [objc_alloc(MEMORY[0x277CD1D20]) initWithPresenceEventType:-[HREPresenceTriggerTemplate presenceType](self presenceUserType:{"presenceType"), -[HREPresenceTriggerTemplate presenceUserType](self, "presenceUserType")}];
  v11 = [objc_alloc(MEMORY[0x277D14978]) initWithEvent:v10];
  locationInterface = [v9 locationInterface];
  [locationInterface setLocationEventBuilder:v11];

  return v9;
}

@end