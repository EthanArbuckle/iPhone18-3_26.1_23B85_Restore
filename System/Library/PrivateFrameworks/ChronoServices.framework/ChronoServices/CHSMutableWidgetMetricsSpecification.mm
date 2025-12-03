@interface CHSMutableWidgetMetricsSpecification
- (NSMutableDictionary)alternatesByFamily;
- (NSMutableDictionary)metricsByFamily;
- (id)_initWithMetricsByFamily:(id)family alternates:(id)alternates;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlternateMetrics:(id)metrics forFamily:(int64_t)family;
- (void)setMetrics:(id)metrics forFamily:(int64_t)family;
@end

@implementation CHSMutableWidgetMetricsSpecification

- (id)_initWithMetricsByFamily:(id)family alternates:(id)alternates
{
  alternatesCopy = alternates;
  v7 = [family mutableCopy];
  v8 = [alternatesCopy mutableCopy];
  v11.receiver = self;
  v11.super_class = CHSMutableWidgetMetricsSpecification;
  v9 = [(CHSWidgetMetricsSpecification *)&v11 _initWithMetricsByFamily:v7 alternates:v8];

  return v9;
}

- (void)setMetrics:(id)metrics forFamily:(int64_t)family
{
  metricsCopy = metrics;
  metricsByFamily = [(CHSMutableWidgetMetricsSpecification *)self metricsByFamily];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:family];
  if (metricsCopy)
  {
    [metricsByFamily setObject:metricsCopy forKey:v7];
  }

  else
  {
    [metricsByFamily removeObjectForKey:v7];
  }
}

- (void)setAlternateMetrics:(id)metrics forFamily:(int64_t)family
{
  metricsCopy = metrics;
  alternatesByFamily = [(CHSMutableWidgetMetricsSpecification *)self alternatesByFamily];
  if (metricsCopy)
  {
    v7 = [metricsCopy copy];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:family];
    [alternatesByFamily setObject:v7 forKey:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:family];
    [alternatesByFamily removeObjectForKey:v7];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSWidgetMetricsSpecification allocWithZone:zone];

  return [(CHSWidgetMetricsSpecification *)v4 initWithMetricsSpecification:self];
}

- (NSMutableDictionary)metricsByFamily
{
  v4.receiver = self;
  v4.super_class = CHSMutableWidgetMetricsSpecification;
  metricsByFamily = [(CHSWidgetMetricsSpecification *)&v4 metricsByFamily];

  return metricsByFamily;
}

- (NSMutableDictionary)alternatesByFamily
{
  v4.receiver = self;
  v4.super_class = CHSMutableWidgetMetricsSpecification;
  alternatesByFamily = [(CHSWidgetMetricsSpecification *)&v4 alternatesByFamily];

  return alternatesByFamily;
}

@end