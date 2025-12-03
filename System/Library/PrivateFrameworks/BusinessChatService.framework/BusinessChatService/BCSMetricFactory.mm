@interface BCSMetricFactory
- (BCSMetricFactory)initWithMeasurementFactory:(id)factory;
- (id)businessCallerFetchMetricForItemIdentifier:(id)identifier;
- (id)businessLinkFetchMetricForItemIdentifier:(id)identifier;
- (id)businessLinkHashFetchMetricForItemIdentifier:(id)identifier;
- (id)businessLinkRegisteredMetricForItemIdentifier:(id)identifier;
- (id)chatSuggestFetchMetricForItemIdentifier:(id)identifier;
- (id)chatSuggestRegisteredMetricForItemIdentifier:(id)identifier;
- (id)configResolutionMetricForConfigType:(int64_t)type;
- (id)itemResolutionMetricForItemIdentifier:(id)identifier;
- (id)megashardFetchMetricForType:(int64_t)type;
- (id)shardResolutionMetricForShardIdentifier:(id)identifier;
@end

@implementation BCSMetricFactory

- (BCSMetricFactory)initWithMeasurementFactory:(id)factory
{
  factoryCopy = factory;
  v13.receiver = self;
  v13.super_class = BCSMetricFactory;
  v6 = [(BCSMetricFactory *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_measurementFactory, factory);
    v8 = MEMORY[0x277CBEA60];
    v9 = objc_alloc_init(BCSCoreAnalyticsMetricHandler);
    v10 = [v8 arrayWithObject:v9];
    postProcessingMetricHandlers = v7->_postProcessingMetricHandlers;
    v7->_postProcessingMetricHandlers = v10;
  }

  return v7;
}

- (id)configResolutionMetricForConfigType:(int64_t)type
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSConfigResolutionMetric metricForConfigType:type postProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)shardResolutionMetricForShardIdentifier:(id)identifier
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSShardResolutionMetric metricForShardIdentifier:identifier postProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)itemResolutionMetricForItemIdentifier:(id)identifier
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSItemResolutionMetric metricForItemIdentifier:identifier postProcessingMetricHandlers:postProcessingMetricHandlers];
}

- (id)businessLinkRegisteredMetricForItemIdentifier:(id)identifier
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

- (id)businessLinkFetchMetricForItemIdentifier:(id)identifier
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

- (id)businessLinkHashFetchMetricForItemIdentifier:(id)identifier
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

- (id)chatSuggestRegisteredMetricForItemIdentifier:(id)identifier
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

- (id)chatSuggestFetchMetricForItemIdentifier:(id)identifier
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

- (id)businessCallerFetchMetricForItemIdentifier:(id)identifier
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

- (id)megashardFetchMetricForType:(int64_t)type
{
  if (self)
  {
    postProcessingMetricHandlers = self->_postProcessingMetricHandlers;
  }

  else
  {
    postProcessingMetricHandlers = 0;
  }

  return [BCSMegashardFetchMetric metricForMegashardType:type postProcessingMetricHandlers:postProcessingMetricHandlers];
}

@end