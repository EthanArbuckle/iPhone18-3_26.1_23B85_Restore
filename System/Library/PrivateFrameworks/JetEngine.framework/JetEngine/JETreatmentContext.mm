@interface JETreatmentContext
- (JETreatmentContext)initWithTreatment:(id)treatment metrics:(id)metrics;
- (uint64_t)metrics;
- (void)setMetrics:(void *)metrics;
@end

@implementation JETreatmentContext

- (JETreatmentContext)initWithTreatment:(id)treatment metrics:(id)metrics
{
  treatmentCopy = treatment;
  metricsCopy = metrics;
  v14.receiver = self;
  v14.super_class = JETreatmentContext;
  v9 = [(JETreatmentContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_treatment, treatment);
    v11 = [metricsCopy copy];
    metrics = v10->_metrics;
    v10->_metrics = v11;
  }

  return v10;
}

- (uint64_t)metrics
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (void)setMetrics:(void *)metrics
{
  if (metrics)
  {
    objc_setProperty_nonatomic_copy(metrics, newValue, newValue, 16);
  }
}

@end