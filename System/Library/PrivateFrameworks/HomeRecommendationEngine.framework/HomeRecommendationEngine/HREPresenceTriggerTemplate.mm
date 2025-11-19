@interface HREPresenceTriggerTemplate
- (id)_subclass_triggerBuilderForRecommendation:(id)a3 withObjects:(id)a4;
@end

@implementation HREPresenceTriggerTemplate

- (id)_subclass_triggerBuilderForRecommendation:(id)a3 withObjects:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HRERecommendationEmptyTriggerBuilderContext);
  v7 = objc_alloc(MEMORY[0x277D14668]);
  v8 = [v5 home];

  v9 = [v7 initWithHome:v8 context:v6];
  v10 = [objc_alloc(MEMORY[0x277CD1D20]) initWithPresenceEventType:-[HREPresenceTriggerTemplate presenceType](self presenceUserType:{"presenceType"), -[HREPresenceTriggerTemplate presenceUserType](self, "presenceUserType")}];
  v11 = [objc_alloc(MEMORY[0x277D14978]) initWithEvent:v10];
  v12 = [v9 locationInterface];
  [v12 setLocationEventBuilder:v11];

  return v9;
}

@end