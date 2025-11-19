@interface CSUObjectDetectionOptions
- (CSUObjectDetectionOptions)init;
@end

@implementation CSUObjectDetectionOptions

- (CSUObjectDetectionOptions)init
{
  v18.receiver = self;
  v18.super_class = CSUObjectDetectionOptions;
  v2 = [(CSUObjectDetectionOptions *)&v18 init];
  v8 = v2;
  if (v2)
  {
    LODWORD(v7) = 1055286886;
    objc_msgSend_setNmsThresholdDetection_(v2, v3, v4, v5, v6, v7);
    LODWORD(v9) = 1036831949;
    objc_msgSend_setDetectionForegroundThreshold_(v8, v10, v11, v12, v13, v9);
    objc_msgSend_setRelevantClassNames_(v8, v14, 0, v15, v16);
  }

  return v8;
}

@end