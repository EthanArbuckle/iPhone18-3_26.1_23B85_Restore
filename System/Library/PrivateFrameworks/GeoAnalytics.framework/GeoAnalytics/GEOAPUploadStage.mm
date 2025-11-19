@interface GEOAPUploadStage
- (GEOAPUploadStage)initWithURLSessionConfig:(id)a3 ttl:(double)a4;
@end

@implementation GEOAPUploadStage

- (GEOAPUploadStage)initWithURLSessionConfig:(id)a3 ttl:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = GEOAPUploadStage;
  v8 = [(GEOAPUploadStage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_urlSessionConfig, a3);
    v9->_ttl = a4;
  }

  return v9;
}

@end