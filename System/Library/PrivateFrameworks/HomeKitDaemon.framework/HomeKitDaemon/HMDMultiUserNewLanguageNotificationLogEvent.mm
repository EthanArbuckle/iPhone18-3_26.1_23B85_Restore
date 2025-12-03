@interface HMDMultiUserNewLanguageNotificationLogEvent
- (HMDMultiUserNewLanguageNotificationLogEvent)initWithLanguage:(id)language;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDMultiUserNewLanguageNotificationLogEvent

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  language = [(HMDMultiUserNewLanguageNotificationLogEvent *)self language];
  v5 = [v3 initWithName:@"language" value:language];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"language";
  language = [(HMDMultiUserNewLanguageNotificationLogEvent *)self language];
  v7[0] = language;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (HMDMultiUserNewLanguageNotificationLogEvent)initWithLanguage:(id)language
{
  languageCopy = language;
  v9.receiver = self;
  v9.super_class = HMDMultiUserNewLanguageNotificationLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_language, language);
  }

  return v7;
}

@end