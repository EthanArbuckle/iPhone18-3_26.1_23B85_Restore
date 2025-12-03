@interface GEOAPUploadStage
- (GEOAPUploadStage)initWithURLSessionConfig:(id)config ttl:(double)ttl;
@end

@implementation GEOAPUploadStage

- (GEOAPUploadStage)initWithURLSessionConfig:(id)config ttl:(double)ttl
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = GEOAPUploadStage;
  v8 = [(GEOAPUploadStage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_urlSessionConfig, config);
    v9->_ttl = ttl;
  }

  return v9;
}

@end