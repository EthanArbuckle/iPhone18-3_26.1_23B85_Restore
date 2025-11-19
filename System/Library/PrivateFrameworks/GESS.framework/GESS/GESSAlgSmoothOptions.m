@interface GESSAlgSmoothOptions
- (GESSAlgSmoothOptions)init;
@end

@implementation GESSAlgSmoothOptions

- (GESSAlgSmoothOptions)init
{
  v15.receiver = self;
  v15.super_class = GESSAlgSmoothOptions;
  v2 = [(GESSAlgSmoothOptions *)&v15 init];
  v7 = v2;
  if (v2)
  {
    LODWORD(v6) = 0.5;
    objc_msgSend_setLambda_(v2, v3, v4, v5, v6);
    objc_msgSend_setIterations_(v7, v8, 1, v9);
    objc_msgSend_setFixBoundary_(v7, v10, 1, v11);
    objc_msgSend_setEnableTangentialRelaxation_(v7, v12, 0, v13);
  }

  return v7;
}

@end