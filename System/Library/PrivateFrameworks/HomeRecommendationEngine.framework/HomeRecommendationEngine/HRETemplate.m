@interface HRETemplate
- (HRETemplate)init;
- (id)createStarterRecommendationInHome:(id)a3;
@end

@implementation HRETemplate

- (HRETemplate)init
{
  v8.receiver = self;
  v8.super_class = HRETemplate;
  v2 = [(HRETemplate *)&v8 init];
  v3 = v2;
  if (v2)
  {
    title = v2->_title;
    v2->_title = 0;

    rules = v3->_rules;
    v3->_rules = 0;

    identifier = v3->_identifier;
    v3->_identifier = 0;

    v3->_splitStrategy = 0;
    *&v3->_sortingPriority = xmmword_254409F40;
  }

  return v3;
}

- (id)createStarterRecommendationInHome:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = objc_alloc([(HRETemplate *)self recommendationClass]);
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 initWithHome:v4];
  v9 = MEMORY[0x277CCACA8];
  v10 = [(HRETemplate *)self identifier];
  v11 = [v9 stringWithFormat:@"(template:%@)", v10];

  v12 = [[HREIdentifierBuilder alloc] initWithBaseIdentifier:v11];
  [v8 setIdentifierBuilder:v12];

  v13 = [v8 identifierBuilder];
  v14 = [v4 uniqueIdentifier];

  v15 = [v14 UUIDString];
  [v13 setObject:v15 forKey:@"home"];

  [(HRETemplate *)self sortingPriority];
  [v8 setSortingPriority:?];
  [v8 setSourceTemplate:self];
  v16 = MEMORY[0x277CCACA8];
  v17 = [(HRETemplate *)self identifier];
  v18 = [v16 stringWithFormat:@"template-%@", v17];
  v19 = [v8 defaultAnalyticsData];
  [v19 setObject:v18 forKeyedSubscript:*MEMORY[0x277D13580]];

  return v8;
}

@end