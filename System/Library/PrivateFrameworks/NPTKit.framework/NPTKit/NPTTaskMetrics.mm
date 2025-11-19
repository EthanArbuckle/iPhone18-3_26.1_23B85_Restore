@interface NPTTaskMetrics
- (NPTTaskMetrics)init;
@end

@implementation NPTTaskMetrics

- (NPTTaskMetrics)init
{
  v5.receiver = self;
  v5.super_class = NPTTaskMetrics;
  v2 = [(NPTTaskMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NPTTaskMetrics *)v2 setTask:0];
    [(NPTTaskMetrics *)v3 setResults:0];
    [(NPTTaskMetrics *)v3 setTaskMetrics:0];
  }

  return v3;
}

@end