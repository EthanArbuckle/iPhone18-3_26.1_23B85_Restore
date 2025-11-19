@interface HFCharacteristicEventBuilder(HREAdditions)
- (id)recommendableObjectsInvolved;
@end

@implementation HFCharacteristicEventBuilder(HREAdditions)

- (id)recommendableObjectsInvolved
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [a1 characteristic];
  v4 = [v3 service];
  v13[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v6 = [v2 setWithArray:v5];
  v7 = [HRERecommendableObjectUtilities recommendableObjectsFromHomeKitObjects:v6];
  v8 = [a1 characteristic];
  v9 = [v8 service];
  v10 = [v7 setByAddingObject:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end