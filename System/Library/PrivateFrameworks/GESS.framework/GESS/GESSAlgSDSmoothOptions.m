@interface GESSAlgSDSmoothOptions
- (GESSAlgSDSmoothOptions)init;
@end

@implementation GESSAlgSDSmoothOptions

- (GESSAlgSDSmoothOptions)init
{
  v31.receiver = self;
  v31.super_class = GESSAlgSDSmoothOptions;
  v2 = [(GESSAlgSDSmoothOptions *)&v31 init];
  v7 = v2;
  if (v2)
  {
    LODWORD(v6) = 1.0;
    objc_msgSend_setLambdaWeight_(v2, v3, v4, v5, v6);
    LODWORD(v8) = 1.0;
    objc_msgSend_setEta_(v7, v9, v10, v11, v8);
    LODWORD(v12) = 10.0;
    objc_msgSend_setMu_(v7, v13, v14, v15, v12);
    LODWORD(v16) = 1039516303;
    objc_msgSend_setNu_(v7, v17, v18, v19, v16);
    LODWORD(v20) = 981668463;
    objc_msgSend_setClosenessWeight_(v7, v21, v22, v23, v20);
    objc_msgSend_setNormalSmoothMaxIterations_(v7, v24, 5, v25);
    objc_msgSend_setMeshUpdateIterations_(v7, v26, 20, v27);
    objc_msgSend_setFixBoundary_(v7, v28, 1, v29);
  }

  return v7;
}

@end