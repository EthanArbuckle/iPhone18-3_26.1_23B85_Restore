@interface CVNLPCaptionRuntimeReplacements
- (CVNLPCaptionRuntimeReplacements)initWithKey:(id)key value:(id)value prob:(double)prob genderOption:(id)option;
@end

@implementation CVNLPCaptionRuntimeReplacements

- (CVNLPCaptionRuntimeReplacements)initWithKey:(id)key value:(id)value prob:(double)prob genderOption:(id)option
{
  keyCopy = key;
  valueCopy = value;
  optionCopy = option;
  v26.receiver = self;
  v26.super_class = CVNLPCaptionRuntimeReplacements;
  v16 = [(CVNLPCaptionRuntimeReplacements *)&v26 init];
  if (v16)
  {
    v17 = objc_msgSend_stringWithSpaceAtEnds(keyCopy, v13, v14, v15);
    replacementKey = v16->_replacementKey;
    v16->_replacementKey = v17;

    v22 = objc_msgSend_stringWithSpaceAtEnds(valueCopy, v19, v20, v21);
    replacementValue = v16->_replacementValue;
    v16->_replacementValue = v22;

    probCopy = 1.0;
    if (prob != 0.0)
    {
      probCopy = prob;
    }

    v16->_replacementProb = probCopy;
    objc_storeStrong(&v16->_genderOption, option);
  }

  return v16;
}

@end