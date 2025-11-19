@interface BCSMetricFactory
- (BCSMetricFactory)initWithMeasurementFactory:(id)a3;
- (id)businessCallerFetchMetricForItemIdentifier:(id)a3;
- (id)businessLinkFetchMetricForItemIdentifier:(id)a3;
- (id)businessLinkHashFetchMetricForItemIdentifier:(id)a3;
- (id)businessLinkRegisteredMetricForItemIdentifier:(id)a3;
- (id)chatSuggestFetchMetricForItemIdentifier:(id)a3;
- (id)chatSuggestRegisteredMetricForItemIdentifier:(id)a3;
- (id)configResolutionMetricForConfigType:(int64_t)a3;
- (id)itemResolutionMetricForItemIdentifier:(id)a3;
- (id)megashardFetchMetricForType:(int64_t)a3;
- (id)shardResolutionMetricForShardIdentifier:(id)a3;
@end

@implementation BCSMetricFactory

- (BCSMetricFactory)initWithMeasurementFactory:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BCSMetricFactory;
  v6 = [(BCSMetricFactory *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_measurementFactory, a3);
    v8 = MEMORY[0x277CBEA60];
    v9 = objc_alloc_init(BCSCoreAnalyticsMetricHandler);
    v10 = [v8 arrayWithObject:v9];
    postProcessingMetricHandlers = v7->_postProcessingMetricHandlers;
    v7->_postProcessingMetricHandlers = v10;
  }

  return v7;
}

- (id)configResolutionMetricForConfigType:(int64_t)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSConfigResolutionMetric metricForConfigType:a3 postProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)shardResolutionMetricForShardIdentifier:(id)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSShardResolutionMetric metricForShardIdentifier:a3 postProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)itemResolutionMetricForItemIdentifier:(id)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSItemResolutionMetric metricForItemIdentifier:a3 postProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)businessLinkRegisteredMetricForItemIdentifier:(id)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSBusinessLinkRegisteredMetric metricWithPostProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)businessLinkFetchMetricForItemIdentifier:(id)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSBusinessLinkFetchMetric metricWithPostProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)businessLinkHashFetchMetricForItemIdentifier:(id)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSBusinessLinkHashFetchMetric metricWithPostProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)chatSuggestRegisteredMetricForItemIdentifier:(id)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSChatSuggestRegisteredMetric metricWithPostProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)chatSuggestFetchMetricForItemIdentifier:(id)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSChatSuggestFetchMetric metricWithPostProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)businessCallerFetchMetricForItemIdentifier:(id)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSBusinessCallerFetchMetric metricWithPostProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)megashardFetchMetricForType:(int64_t)a3
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSMegashardFetchMetric metricForMegashardType:a3 postProcessingMetricHandlers:postProcessingMetricHandlers];
}

@end