@interface GEOBackgroundDirectionsRequestConfig
- (GEOBackgroundDirectionsRequestConfig)initWithRequest:(id)a3 requestPriority:(id)a4;
@end

@implementation GEOBackgroundDirectionsRequestConfig

- (GEOBackgroundDirectionsRequestConfig)initWithRequest:(id)a3 requestPriority:(id)a4
{
  v5.receiver = self;
  v5.super_class = GEOBackgroundDirectionsRequestConfig;
  return [(GEODirectionsRequestConfig *)&v5 initWithRequest:a3 requestPriority:a4];
}

@end