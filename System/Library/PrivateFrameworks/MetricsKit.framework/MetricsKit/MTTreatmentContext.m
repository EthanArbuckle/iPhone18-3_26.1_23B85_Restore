@interface MTTreatmentContext
- (MTTreatmentContext)initWithTreatment:(id)a3 metrics:(id)a4;
@end

@implementation MTTreatmentContext

- (MTTreatmentContext)initWithTreatment:(id)a3 metrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTTreatmentContext;
  v8 = [(MTTreatmentContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTTreatmentContext *)v8 setTreatment:v6];
    [(MTTreatmentContext *)v9 setMetrics:v7];
  }

  return v9;
}

@end