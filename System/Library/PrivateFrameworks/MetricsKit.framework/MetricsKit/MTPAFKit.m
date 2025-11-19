@interface MTPAFKit
- (MTPAFKit)initWithTopic:(id)a3;
@end

@implementation MTPAFKit

- (MTPAFKit)initWithTopic:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTPAFKit;
  v3 = [(MTMetricsKitTemplate *)&v6 initWithTopic:a3];
  if (v3)
  {
    v4 = [(MTObject *)[MTPAFEventHandlers alloc] initWithMetricsKit:v3];
    [(MTMetricsKitTemplate *)v3 setEventHandlers:v4];
  }

  return v3;
}

@end