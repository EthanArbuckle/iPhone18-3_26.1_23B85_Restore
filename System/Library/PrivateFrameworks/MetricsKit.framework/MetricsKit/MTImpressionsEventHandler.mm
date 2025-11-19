@interface MTImpressionsEventHandler
- (id)eventType;
- (id)eventVersion:(id)a3;
- (id)knownFields;
- (id)xpViewableThreshold:(id)a3;
@end

@implementation MTImpressionsEventHandler

- (id)knownFields
{
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MTImpressionsEventHandler;
    v5 = [(MTImpressionableEventHandler *)&v9 knownFields];
    v6 = [v5 arrayByAddingObject:@"xpViewableThreshold"];
  }

  v7 = v6;

  return v7;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTImpressionsEventHandler;
  v2 = [(MTEventHandler *)&v7 eventType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"impressions";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTImpressionsEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C338;
  }

  v6 = v5;

  return v5;
}

- (id)xpViewableThreshold:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpViewableThreshold:v4];
  }

  else
  {
    v7 = [(MTObject *)self metricsKit];
    v9 = [v7 config];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__MTImpressionsEventHandler_xpViewableThreshold___block_invoke;
    v11[3] = &unk_2798CE718;
    v12 = v4;
    v13 = self;
    v8 = [v9 computeWithConfigSources:v11];
  }

  return v8;
}

id __49__MTImpressionsEventHandler_xpViewableThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"xpViewableThreshold"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [*(a1 + 40) metricsKit];
    v8 = [v7 config];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"impressions", @"viewableThreshold"];
    v6 = [v8 configValueForKeyPath:v9 sources:v3];
  }

  return v6;
}

@end