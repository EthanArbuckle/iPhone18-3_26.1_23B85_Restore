@interface MTMetricsKit
- (MTMetricsKit)initWithTopic:(id)a3;
- (id)metricsDataWithFlexibleEventType:(id)a3 eventData:(id)a4;
- (id)metricsDataWithFlexibleEventType:(id)a3 fields:(id)a4;
- (void)performMaintenanceForUserId:(id)a3;
@end

@implementation MTMetricsKit

- (void)performMaintenanceForUserId:(id)a3
{
  v4 = a3;
  v5 = [(MTMetricsKitTemplate *)self config];
  v6 = [v5 sources];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__MTMetricsKit_Demographic__performMaintenanceForUserId___block_invoke;
  v9[3] = &unk_2798CD900;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  v8 = [v6 thenWithBlock:v9];
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

- (MTMetricsKit)initWithTopic:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTMetricsKit;
  v3 = [(MTMetricsKitTemplate *)&v7 initWithTopic:a3];
  if (v3)
  {
    v4 = [(MTObject *)[MTMetricsEventHandlers alloc] initWithMetricsKit:v3];
    [(MTMetricsKitTemplate *)v3 setEventHandlers:v4];

    v5 = [(MTObject *)[MTMetricsUtils alloc] initWithMetricsKit:v3];
    [(MTMetricsKitTemplate *)v3 setUtils:v5];
  }

  return v3;
}

- (id)metricsDataWithFlexibleEventType:(id)a3 eventData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTMetricsKitTemplate *)self eventHandlers];
  v9 = [v8 flexible];
  v10 = [v9 metricsDataWithEventType:v7 eventData:v6];

  return v10;
}

- (id)metricsDataWithFlexibleEventType:(id)a3 fields:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v16 = &v18;
  v9 = v7;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 addObjectsFromArray:v11];
      }

      else
      {
        [v8 addObject:v11];
      }

      v12 = v16++;
      v13 = *v12;

      v11 = v13;
    }

    while (v13);
  }

  v14 = [(MTMetricsKit *)self metricsDataWithFlexibleEventType:v6 eventData:v8];

  return v14;
}

@end