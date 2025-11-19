@interface GESSAlgQuadricErrorMetricsSimplifyOptions
- (GESSAlgQuadricErrorMetricsSimplifyOptions)init;
@end

@implementation GESSAlgQuadricErrorMetricsSimplifyOptions

- (GESSAlgQuadricErrorMetricsSimplifyOptions)init
{
  v11.receiver = self;
  v11.super_class = GESSAlgQuadricErrorMetricsSimplifyOptions;
  v2 = [(GESSAlgQuadricErrorMetricsSimplifyOptions *)&v11 init];
  v7 = v2;
  if (v2)
  {
    LODWORD(v6) = 1058944319;
    objc_msgSend_setStrength_(v2, v3, v4, v5, v6);
    objc_msgSend_setFixBoundary_(v7, v8, 1, v9);
  }

  return v7;
}

@end