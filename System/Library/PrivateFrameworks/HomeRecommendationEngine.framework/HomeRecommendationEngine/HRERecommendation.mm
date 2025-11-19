@interface HRERecommendation
+ (id)highestRankInRecommendations:(id)a3;
- (HMCharacteristic)splitCharacteristic;
- (HMRoom)room;
- (HMZone)zone;
- (HRERecommendation)initWithHome:(id)a3 uniqueIdentifier:(id)a4;
- (HRETemplate)sourceTemplate;
- (NADescriptionBuilder)descriptionBuilder;
- (NSArray)roomsToFilterHomeObjects;
- (NSDictionary)analyticsData;
- (NSString)uniqueIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)splitUsingSplitCharacteristics:(id)a3;
- (id)splitUsingSplitStrategy:(unint64_t)a3 inHome:(id)a4;
- (unint64_t)numberOfEnabledRecommendationsForTemplate;
- (void)setNumberOfEnabledRecommendationsForTemplate:(unint64_t)a3;
- (void)setRankingConfidenceScore:(double)a3 rankVersion:(int64_t)a4;
- (void)setRoom:(id)a3;
- (void)setSourceTemplate:(id)a3;
- (void)setSplitCharacteristic:(id)a3;
- (void)setZone:(id)a3;
@end

@implementation HRERecommendation

- (HRERecommendation)initWithHome:(id)a3 uniqueIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HRERecommendation;
  v9 = [(HRERecommendation *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_uniqueIdentifier, a4);
    v11 = [MEMORY[0x277CBEB38] dictionary];
    defaultAnalyticsData = v10->_defaultAnalyticsData;
    v10->_defaultAnalyticsData = v11;

    v13 = [MEMORY[0x277CBEB38] dictionary];
    userInfo = v10->_userInfo;
    v10->_userInfo = v13;

    v10->_rankModifier = 0.0;
    [(HRERecommendation *)v10 setRankingConfidenceScore:-1 rankVersion:0.0];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HRERecommendation *)self home];
  v6 = [v4 initWithHome:v5 uniqueIdentifier:self->_uniqueIdentifier];

  [(HRERecommendation *)self rankingConfidenceScore];
  v6[4] = v7;
  v8 = [(HRERecommendation *)self userInfo];
  v9 = [v8 mutableCopy];
  v10 = v6[6];
  v6[6] = v9;

  v11 = [(HRERecommendation *)self identifierBuilder];
  v12 = [v11 copy];
  [v6 setIdentifierBuilder:v12];

  [(HRERecommendation *)self rankModifier];
  [v6 setRankModifier:?];
  [(HRERecommendation *)self sortingPriority];
  [v6 setSortingPriority:?];
  v13 = [(HRERecommendation *)self defaultAnalyticsData];
  v14 = [v13 mutableCopy];
  [v6 setDefaultAnalyticsData:v14];

  return v6;
}

- (NSString)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    v3 = uniqueIdentifier;
  }

  else
  {
    v4 = [(HRERecommendation *)self identifierBuilder];
    v3 = [v4 composedString];
  }

  return v3;
}

- (NADescriptionBuilder)descriptionBuilder
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HRERecommendation *)self uniqueIdentifier];
  [v3 appendString:v4 withName:@"uniqueIdentifier"];

  [(HRERecommendation *)self rankingConfidenceScore];
  v5 = [v3 appendDouble:@"rankingConfidenceScore" withName:2 decimalPrecision:?];

  return v3;
}

- (id)description
{
  v2 = [(HRERecommendation *)self descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)setRankingConfidenceScore:(double)a3 rankVersion:(int64_t)a4
{
  self->_rankingConfidenceScore = a3;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v8 = [(HRERecommendation *)self defaultAnalyticsData];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13558]];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:round(a3)];
  v10 = [(HRERecommendation *)self defaultAnalyticsData];
  [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x277D13550]];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v11 = [(HRERecommendation *)self defaultAnalyticsData];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D13560]];
}

- (NSDictionary)analyticsData
{
  v2 = [(HRERecommendation *)self defaultAnalyticsData];
  v3 = [v2 copy];

  return v3;
}

+ (id)highestRankInRecommendations:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = -5.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v9 rankingConfidenceScore];
        if (v10 > v7)
        {
          [v9 rankingConfidenceScore];
          v7 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -5.0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__HRERecommendation_highestRankInRecommendations___block_invoke;
  v15[3] = &__block_descriptor_40_e27_B16__0__HRERecommendation_8l;
  *&v15[4] = v7;
  v12 = [v3 na_filter:v15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMRoom)room
{
  objc_opt_class();
  v3 = [(HRERecommendation *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"room"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setRoom:(id)a3
{
  v4 = a3;
  v5 = [(HRERecommendation *)self userInfo];
  [v5 setObject:v4 forKeyedSubscript:@"room"];
}

- (HMZone)zone
{
  objc_opt_class();
  v3 = [(HRERecommendation *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"zone"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setZone:(id)a3
{
  v4 = a3;
  v5 = [(HRERecommendation *)self userInfo];
  [v5 setObject:v4 forKeyedSubscript:@"zone"];
}

- (NSArray)roomsToFilterHomeObjects
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(HRERecommendation *)self room];

  if (v3)
  {
    v4 = [(HRERecommendation *)self room];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v4 = [(HRERecommendation *)self zone];
    v5 = [v4 rooms];
  }

  v6 = v5;

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMCharacteristic)splitCharacteristic
{
  objc_opt_class();
  v3 = [(HRERecommendation *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"splitCharacteristic"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setSplitCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HRERecommendation *)self userInfo];
  [v5 setObject:v4 forKeyedSubscript:@"splitCharacteristic"];
}

- (HRETemplate)sourceTemplate
{
  objc_opt_class();
  v3 = [(HRERecommendation *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"template"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setSourceTemplate:(id)a3
{
  v4 = a3;
  v5 = [(HRERecommendation *)self userInfo];
  [v5 setObject:v4 forKeyedSubscript:@"template"];
}

- (unint64_t)numberOfEnabledRecommendationsForTemplate
{
  objc_opt_class();
  v3 = [(HRERecommendation *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"numberOfEnabledRecommendationsForTemplate"];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setNumberOfEnabledRecommendationsForTemplate:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v4 = [(HRERecommendation *)self userInfo];
  [v4 setObject:v5 forKeyedSubscript:@"numberOfEnabledRecommendationsForTemplate"];
}

- (id)splitUsingSplitStrategy:(unint64_t)a3 inHome:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (!a3)
  {
    v17 = MEMORY[0x277CBEB98];
    v22[0] = self;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v14 = [v17 setWithArray:v11];
LABEL_9:
    v4 = v14;
    goto LABEL_10;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v9 = MEMORY[0x277CBEB58];
    v10 = [v7 rooms];
    v11 = [v9 setWithArray:v10];

    v12 = [v8 roomForEntireHome];

    if (v12)
    {
      v13 = [v8 roomForEntireHome];
      [v11 addObject:v13];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__HRERecommendation_TemplateAdditions__splitUsingSplitStrategy_inHome___block_invoke;
    v21[3] = &unk_2797773B8;
    v21[4] = self;
    v14 = [v11 na_map:v21];
    goto LABEL_9;
  }

  v15 = MEMORY[0x277CBEB98];
  v11 = [v7 zones];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__HRERecommendation_TemplateAdditions__splitUsingSplitStrategy_inHome___block_invoke_2;
  v20[3] = &unk_2797773E0;
  v20[4] = self;
  v16 = [v11 na_map:v20];
  v4 = [v15 setWithArray:v16];

LABEL_10:
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

id __71__HRERecommendation_TemplateAdditions__splitUsingSplitStrategy_inHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v4 setRoom:v3];
  v5 = [v4 identifierBuilder];
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  [v5 setObject:v7 forKey:@"room"];

  return v4;
}

id __71__HRERecommendation_TemplateAdditions__splitUsingSplitStrategy_inHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v4 setZone:v3];
  v5 = [v4 identifierBuilder];
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  [v5 setObject:v7 forKey:@"zone"];

  return v4;
}

- (id)splitUsingSplitCharacteristics:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__HRERecommendation_TemplateAdditions__splitUsingSplitCharacteristics___block_invoke;
  v5[3] = &unk_279777408;
  v5[4] = self;
  v3 = [a3 na_map:v5];

  return v3;
}

id __71__HRERecommendation_TemplateAdditions__splitUsingSplitCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v4 setSplitCharacteristic:v3];
  v5 = [v4 identifierBuilder];
  v6 = [v3 uniqueIdentifier];

  v7 = [v6 UUIDString];
  [v5 setObject:v7 forKey:@"splitCharacteristic"];

  return v4;
}

@end