@interface HFCharacteristicEventBuilder(HREAdditions)
- (id)recommendableObjectsInvolved;
@end

@implementation HFCharacteristicEventBuilder(HREAdditions)

- (id)recommendableObjectsInvolved
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  characteristic = [self characteristic];
  service = [characteristic service];
  v13[0] = service;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v6 = [v2 setWithArray:v5];
  v7 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v6];
  characteristic2 = [self characteristic];
  service2 = [characteristic2 service];
  v10 = [v7 setByAddingObject:service2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end