@interface GEOBackgroundDirectionsRequestConfig
- (GEOBackgroundDirectionsRequestConfig)initWithRequest:(id)request requestPriority:(id)priority;
@end

@implementation GEOBackgroundDirectionsRequestConfig

- (GEOBackgroundDirectionsRequestConfig)initWithRequest:(id)request requestPriority:(id)priority
{
  v5.receiver = self;
  v5.super_class = GEOBackgroundDirectionsRequestConfig;
  return [(GEODirectionsRequestConfig *)&v5 initWithRequest:request requestPriority:priority];
}

@end