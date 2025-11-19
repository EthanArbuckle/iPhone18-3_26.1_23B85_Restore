@interface GESSAlgSDSmoothReport
- (GESSAlgSDSmoothReport)init;
@end

@implementation GESSAlgSDSmoothReport

- (GESSAlgSDSmoothReport)init
{
  v19.receiver = self;
  v19.super_class = GESSAlgSDSmoothReport;
  v2 = [(GESSAlgReport *)&v19 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend_setTotalTime_(v2, v3, v4, v5, 0.0);
    objc_msgSend_setNormalSmoothTime_(v6, v7, v8, v9, 0.0);
    objc_msgSend_setPrepareMatrixTime_(v6, v10, v11, v12, 0.0);
    objc_msgSend_setSolveLinearSystemTime_(v6, v13, v14, v15, 0.0);
    objc_msgSend_setNumOfNonZeros_(v6, v16, 0, v17);
  }

  return v6;
}

@end