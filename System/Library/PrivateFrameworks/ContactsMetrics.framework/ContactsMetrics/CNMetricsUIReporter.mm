@interface CNMetricsUIReporter
- (id)emptyDictionaryForAction:(id)action andApplication:(id)application;
@end

@implementation CNMetricsUIReporter

- (id)emptyDictionaryForAction:(id)action andApplication:(id)application
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  applicationCopy = application;
  actionCopy = action;
  v8 = [v5 alloc];
  v13[0] = @"action";
  v13[1] = @"application";
  v14[0] = actionCopy;
  v14[1] = applicationCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [v8 initWithDictionary:v9];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end