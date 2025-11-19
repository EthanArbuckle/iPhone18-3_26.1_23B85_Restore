@interface CHSMutableWidgetMetricsSpecification
- (NSMutableDictionary)alternatesByFamily;
- (NSMutableDictionary)metricsByFamily;
- (id)_initWithMetricsByFamily:(id)a3 alternates:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlternateMetrics:(id)a3 forFamily:(int64_t)a4;
- (void)setMetrics:(id)a3 forFamily:(int64_t)a4;
@end

@implementation CHSMutableWidgetMetricsSpecification

- (id)_initWithMetricsByFamily:(id)a3 alternates:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [v6 mutableCopy];
  v11.receiver = self;
  v11.super_class = CHSMutableWidgetMetricsSpecification;
  v9 = [(CHSWidgetMetricsSpecification *)&v11 _initWithMetricsByFamily:v7 alternates:v8];

  return v9;
}

- (void)setMetrics:(id)a3 forFamily:(int64_t)a4
{
  v8 = a3;
  v6 = [(CHSMutableWidgetMetricsSpecification *)self metricsByFamily];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  if (v8)
  {
    [v6 setObject:v8 forKey:v7];
  }

  else
  {
    [v6 removeObjectForKey:v7];
  }
}

- (void)setAlternateMetrics:(id)a3 forFamily:(int64_t)a4
{
  v9 = a3;
  v6 = [(CHSMutableWidgetMetricsSpecification *)self alternatesByFamily];
  if (v9)
  {
    v7 = [v9 copy];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v6 setObject:v7 forKey:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    [v6 removeObjectForKey:v7];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSWidgetMetricsSpecification allocWithZone:a3];

  return [(CHSWidgetMetricsSpecification *)v4 initWithMetricsSpecification:self];
}

- (NSMutableDictionary)metricsByFamily
{
  v4.receiver = self;
  v4.super_class = CHSMutableWidgetMetricsSpecification;
  v2 = [(CHSWidgetMetricsSpecification *)&v4 metricsByFamily];

  return v2;
}

- (NSMutableDictionary)alternatesByFamily
{
  v4.receiver = self;
  v4.super_class = CHSMutableWidgetMetricsSpecification;
  v2 = [(CHSWidgetMetricsSpecification *)&v4 alternatesByFamily];

  return v2;
}

@end