@interface HRETemplate
- (HRETemplate)init;
- (id)createStarterRecommendationInHome:(id)home;
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

- (id)createStarterRecommendationInHome:(id)home
{
  homeCopy = home;
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

  v8 = [v7 initWithHome:homeCopy];
  v9 = MEMORY[0x277CCACA8];
  identifier = [(HRETemplate *)self identifier];
  v11 = [v9 stringWithFormat:@"(template:%@)", identifier];

  v12 = [[HREIdentifierBuilder alloc] initWithBaseIdentifier:v11];
  [v8 setIdentifierBuilder:v12];

  identifierBuilder = [v8 identifierBuilder];
  uniqueIdentifier = [homeCopy uniqueIdentifier];

  uUIDString = [uniqueIdentifier UUIDString];
  [identifierBuilder setObject:uUIDString forKey:@"home"];

  [(HRETemplate *)self sortingPriority];
  [v8 setSortingPriority:?];
  [v8 setSourceTemplate:self];
  v16 = MEMORY[0x277CCACA8];
  identifier2 = [(HRETemplate *)self identifier];
  v18 = [v16 stringWithFormat:@"template-%@", identifier2];
  defaultAnalyticsData = [v8 defaultAnalyticsData];
  [defaultAnalyticsData setObject:v18 forKeyedSubscript:*MEMORY[0x277D13580]];

  return v8;
}

@end