@interface NDFeedPersonalizerFactory
- (NDFeedPersonalizerFactory)init;
@end

@implementation NDFeedPersonalizerFactory

- (NDFeedPersonalizerFactory)init
{
  v3.receiver = self;
  v3.super_class = NDFeedPersonalizerFactory;
  return [(NDFeedPersonalizerFactory *)&v3 init];
}

@end