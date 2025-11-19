@interface GESSAlgIsometricParameterizeOptions
- (GESSAlgIsometricParameterizeOptions)init;
@end

@implementation GESSAlgIsometricParameterizeOptions

- (GESSAlgIsometricParameterizeOptions)init
{
  v19.receiver = self;
  v19.super_class = GESSAlgIsometricParameterizeOptions;
  v2 = [(GESSAlgParameterizeOptions *)&v19 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setTargetNumOfCharts_(v2, v3, 10, v4);
    LODWORD(v6) = 1036831949;
    objc_msgSend_setMaximumStretchRatio_(v5, v7, v8, v9, v6);
    objc_msgSend_setEnableParallel_(v5, v10, 1, v11);
    objc_msgSend_setSkipInitialStretchOptimization_(v5, v12, 0, v13);
    objc_msgSend_setOptimizeBoundaryIfFaceNumberLessThan_(v5, v14, 100000, v15);
    objc_msgSend_setRepairUVSelfIntersection_(v5, v16, 0, v17);
  }

  return v5;
}

@end