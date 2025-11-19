@interface CSUCaptionRuntimeReplacements
- (CSUCaptionRuntimeReplacements)initWithKey:(id)a3 value:(id)a4 prob:(double)a5 genderOption:(id)a6;
@end

@implementation CSUCaptionRuntimeReplacements

- (CSUCaptionRuntimeReplacements)initWithKey:(id)a3 value:(id)a4 prob:(double)a5 genderOption:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v28.receiver = self;
  v28.super_class = CSUCaptionRuntimeReplacements;
  v17 = [(CSUCaptionRuntimeReplacements *)&v28 init];
  if (v17)
  {
    v18 = objc_msgSend_stringWithSpaceAtEnds(v10, v13, v14, v15, v16);
    replacementKey = v17->_replacementKey;
    v17->_replacementKey = v18;

    v24 = objc_msgSend_stringWithSpaceAtEnds(v11, v20, v21, v22, v23);
    replacementValue = v17->_replacementValue;
    v17->_replacementValue = v24;

    v26 = 1.0;
    if (a5 != 0.0)
    {
      v26 = a5;
    }

    v17->_replacementProb = v26;
    objc_storeStrong(&v17->_genderOption, a6);
  }

  return v17;
}

@end