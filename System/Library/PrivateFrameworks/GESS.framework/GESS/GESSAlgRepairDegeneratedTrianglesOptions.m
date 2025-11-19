@interface GESSAlgRepairDegeneratedTrianglesOptions
- (GESSAlgRepairDegeneratedTrianglesOptions)init;
@end

@implementation GESSAlgRepairDegeneratedTrianglesOptions

- (GESSAlgRepairDegeneratedTrianglesOptions)init
{
  v11.receiver = self;
  v11.super_class = GESSAlgRepairDegeneratedTrianglesOptions;
  v2 = [(GESSAlgRepairDegeneratedTrianglesOptions *)&v11 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setEnableTopologicalChange_(v2, v3, 1, v4);
    LODWORD(v6) = 981668463;
    objc_msgSend_setShortEdgesCollapsingRatioThreshold_(v5, v7, v8, v9, v6);
  }

  return v5;
}

@end