@interface MTImpressionableEventHandler
- (id)impressions:(id)a3;
- (id)knownFields;
- (id)xpViewablePercentage:(id)a3;
@end

@implementation MTImpressionableEventHandler

- (id)knownFields
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTImpressionableEventHandler;
    v5 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"impressions";
    v11[1] = @"xpViewablePercentage";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)impressions:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 impressions:v4];
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"impressions"];
  }

  return v8;
}

- (id)xpViewablePercentage:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 xpViewablePercentage:v4];
  }

  else
  {
    v7 = [(MTObject *)self metricsKit];
    v9 = [v7 config];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__MTImpressionableEventHandler_xpViewablePercentage___block_invoke;
    v11[3] = &unk_2798CE718;
    v12 = v4;
    v13 = self;
    v8 = [v9 computeWithConfigSources:v11];
  }

  return v8;
}

id __53__MTImpressionableEventHandler_xpViewablePercentage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"xpViewablePercentage"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [*(a1 + 40) metricsKit];
    v8 = [v7 config];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"impressions", @"viewablePercentage"];
    v6 = [v8 configValueForKeyPath:v9 sources:v3];
  }

  return v6;
}

@end