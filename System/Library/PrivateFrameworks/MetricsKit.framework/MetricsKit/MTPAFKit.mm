@interface MTPAFKit
- (MTPAFKit)initWithTopic:(id)topic;
@end

@implementation MTPAFKit

- (MTPAFKit)initWithTopic:(id)topic
{
  v6.receiver = self;
  v6.super_class = MTPAFKit;
  v3 = [(MTMetricsKitTemplate *)&v6 initWithTopic:topic];
  if (v3)
  {
    v4 = [(MTObject *)[MTPAFEventHandlers alloc] initWithMetricsKit:v3];
    [(MTMetricsKitTemplate *)v3 setEventHandlers:v4];
  }

  return v3;
}

@end