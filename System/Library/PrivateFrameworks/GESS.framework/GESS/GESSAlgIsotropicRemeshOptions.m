@interface GESSAlgIsotropicRemeshOptions
- (GESSAlgIsotropicRemeshOptions)init;
@end

@implementation GESSAlgIsotropicRemeshOptions

- (GESSAlgIsotropicRemeshOptions)init
{
  v23.receiver = self;
  v23.super_class = GESSAlgIsotropicRemeshOptions;
  v2 = [(GESSAlgIsotropicRemeshOptions *)&v23 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setIterations_(v2, v3, 5, v4);
    LODWORD(v6) = 1068149419;
    objc_msgSend_setSplitRatio_(v5, v7, v8, v9, v6);
    LODWORD(v10) = 1061997773;
    objc_msgSend_setCollapseRatio_(v5, v11, v12, v13, v10);
    LODWORD(v14) = 1045220557;
    objc_msgSend_setSmoothLambda_(v5, v15, v16, v17, v14);
    LODWORD(v18) = 2.0;
    objc_msgSend_setSmoothIterations_(v5, v19, v20, v21, v18);
  }

  return v5;
}

@end