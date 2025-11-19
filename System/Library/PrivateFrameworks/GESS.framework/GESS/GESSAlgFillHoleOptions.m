@interface GESSAlgFillHoleOptions
- (GESSAlgFillHoleOptions)init;
@end

@implementation GESSAlgFillHoleOptions

- (GESSAlgFillHoleOptions)init
{
  v17.receiver = self;
  v17.super_class = GESSAlgFillHoleOptions;
  v2 = [(GESSAlgFillHoleOptions *)&v17 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setFillHoleMethod_(v2, v3, 0, v4);
    LODWORD(v6) = 1.0;
    objc_msgSend_setMaxBoundaryLengthRatio_(v5, v7, v8, v9, v6);
    objc_msgSend_setMaxBoundaryVertexSize_(v5, v10, 3000, v11);
    objc_msgSend_setEnableVertexNormalInitialization_(v5, v12, 1, v13);
    objc_msgSend_setEnableFilledTrianglesRemeshing_(v5, v14, 1, v15);
  }

  return v5;
}

@end