@interface MTImpressionableEventHandler
- (id)impressions:(id)impressions;
- (id)knownFields;
- (id)xpViewablePercentage:(id)percentage;
@end

@implementation MTImpressionableEventHandler

- (id)knownFields
{
  v11[2] = *MEMORY[0x277D85DE8];
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTImpressionableEventHandler;
    delegate2 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"impressions";
    v11[1] = @"xpViewablePercentage";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return knownFields;
}

- (id)impressions:(id)impressions
{
  impressionsCopy = impressions;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 impressions:impressionsCopy];
  }

  else
  {
    v8 = [impressionsCopy objectForKeyedSubscript:@"impressions"];
  }

  return v8;
}

- (id)xpViewablePercentage:(id)percentage
{
  percentageCopy = percentage;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 xpViewablePercentage:percentageCopy];
  }

  else
  {
    delegate2 = [(MTObject *)self metricsKit];
    config = [delegate2 config];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__MTImpressionableEventHandler_xpViewablePercentage___block_invoke;
    v11[3] = &unk_2798CE718;
    v12 = percentageCopy;
    selfCopy = self;
    v8 = [config computeWithConfigSources:v11];
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