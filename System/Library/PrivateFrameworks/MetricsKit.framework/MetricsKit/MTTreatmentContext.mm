@interface MTTreatmentContext
- (MTTreatmentContext)initWithTreatment:(id)treatment metrics:(id)metrics;
@end

@implementation MTTreatmentContext

- (MTTreatmentContext)initWithTreatment:(id)treatment metrics:(id)metrics
{
  treatmentCopy = treatment;
  metricsCopy = metrics;
  v11.receiver = self;
  v11.super_class = MTTreatmentContext;
  v8 = [(MTTreatmentContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTTreatmentContext *)v8 setTreatment:treatmentCopy];
    [(MTTreatmentContext *)v9 setMetrics:metricsCopy];
  }

  return v9;
}

@end