@interface MTMetricsKit
- (MTMetricsKit)initWithTopic:(id)topic;
- (id)metricsDataWithFlexibleEventType:(id)type eventData:(id)data;
- (id)metricsDataWithFlexibleEventType:(id)type fields:(id)fields;
- (void)performMaintenanceForUserId:(id)id;
@end

@implementation MTMetricsKit

- (void)performMaintenanceForUserId:(id)id
{
  idCopy = id;
  config = [(MTMetricsKitTemplate *)self config];
  sources = [config sources];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__MTMetricsKit_Demographic__performMaintenanceForUserId___block_invoke;
  v9[3] = &unk_2798CD900;
  v9[4] = self;
  v10 = idCopy;
  v7 = idCopy;
  v8 = [sources thenWithBlock:v9];
}

uint64_t __57__MTMetricsKit_Demographic__performMaintenanceForUserId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 config];
  v6 = [v5 configValueForKeyPath:@"identifiers.ageTopics" sources:v4];

  v7 = [*(a1 + 32) topic];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"updateInterval"];
    [v9 doubleValue];
    if (v10 == 0.0)
    {
      v11 = 2592000.0;
    }

    else
    {
      v11 = v10;
    }

    v12 = [*(a1 + 32) eventHandlers];
    v13 = [v12 objectForKeyedSubscript:@"demographic"];

    v14 = [v13 ageDataForUserId:*(a1 + 40) updateInterval:v11];
    [v14 setAnonymous:1];
    v15 = [v14 recordEvent];
  }

  return 0;
}

- (MTMetricsKit)initWithTopic:(id)topic
{
  v7.receiver = self;
  v7.super_class = MTMetricsKit;
  v3 = [(MTMetricsKitTemplate *)&v7 initWithTopic:topic];
  if (v3)
  {
    v4 = [(MTObject *)[MTMetricsEventHandlers alloc] initWithMetricsKit:v3];
    [(MTMetricsKitTemplate *)v3 setEventHandlers:v4];

    v5 = [(MTObject *)[MTMetricsUtils alloc] initWithMetricsKit:v3];
    [(MTMetricsKitTemplate *)v3 setUtils:v5];
  }

  return v3;
}

- (id)metricsDataWithFlexibleEventType:(id)type eventData:(id)data
{
  dataCopy = data;
  typeCopy = type;
  eventHandlers = [(MTMetricsKitTemplate *)self eventHandlers];
  flexible = [eventHandlers flexible];
  v10 = [flexible metricsDataWithEventType:typeCopy eventData:dataCopy];

  return v10;
}

- (id)metricsDataWithFlexibleEventType:(id)type fields:(id)fields
{
  typeCopy = type;
  fieldsCopy = fields;
  array = [MEMORY[0x277CBEB18] array];
  v16 = &v18;
  v9 = fieldsCopy;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [array addObjectsFromArray:v11];
      }

      else
      {
        [array addObject:v11];
      }

      v12 = v16++;
      v13 = *v12;

      v11 = v13;
    }

    while (v13);
  }

  v14 = [(MTMetricsKit *)self metricsDataWithFlexibleEventType:typeCopy eventData:array];

  return v14;
}

@end