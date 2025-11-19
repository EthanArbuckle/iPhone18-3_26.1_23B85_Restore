@interface CVNLPCaptionRuntimeReplacements
- (CVNLPCaptionRuntimeReplacements)initWithKey:(id)a3 value:(id)a4 prob:(double)a5 genderOption:(id)a6;
@end

@implementation CVNLPCaptionRuntimeReplacements

- (CVNLPCaptionRuntimeReplacements)initWithKey:(id)a3 value:(id)a4 prob:(double)a5 genderOption:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v26.receiver = self;
  v26.super_class = CVNLPCaptionRuntimeReplacements;
  v16 = [(CVNLPCaptionRuntimeReplacements *)&v26 init];
  if (v16)
  {
    v17 = objc_msgSend_stringWithSpaceAtEnds(v10, v13, v14, v15);
    replacementKey = v16->_replacementKey;
    v16->_replacementKey = v17;

    v22 = objc_msgSend_stringWithSpaceAtEnds(v11, v19, v20, v21);
    replacementValue = v16->_replacementValue;
    v16->_replacementValue = v22;

    v24 = 1.0;
    if (a5 != 0.0)
    {
      v24 = a5;
    }

    v16->_replacementProb = v24;
    objc_storeStrong(&v16->_genderOption, a6);
  }

  return v16;
}

@end