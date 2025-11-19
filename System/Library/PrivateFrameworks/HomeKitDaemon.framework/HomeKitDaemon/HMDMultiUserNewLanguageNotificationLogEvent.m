@interface HMDMultiUserNewLanguageNotificationLogEvent
- (HMDMultiUserNewLanguageNotificationLogEvent)initWithLanguage:(id)a3;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDMultiUserNewLanguageNotificationLogEvent

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMultiUserNewLanguageNotificationLogEvent *)self language];
  v5 = [v3 initWithName:@"language" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"language";
  v2 = [(HMDMultiUserNewLanguageNotificationLogEvent *)self language];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDMultiUserNewLanguageNotificationLogEvent)initWithLanguage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDMultiUserNewLanguageNotificationLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_language, a3);
  }

  return v7;
}

@end