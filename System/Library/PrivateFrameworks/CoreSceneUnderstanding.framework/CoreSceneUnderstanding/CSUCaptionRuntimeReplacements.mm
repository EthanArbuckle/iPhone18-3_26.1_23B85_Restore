@interface CSUCaptionRuntimeReplacements
- (CSUCaptionRuntimeReplacements)initWithKey:(id)key value:(id)value prob:(double)prob genderOption:(id)option;
@end

@implementation CSUCaptionRuntimeReplacements

- (CSUCaptionRuntimeReplacements)initWithKey:(id)key value:(id)value prob:(double)prob genderOption:(id)option
{
  keyCopy = key;
  valueCopy = value;
  optionCopy = option;
  v28.receiver = self;
  v28.super_class = CSUCaptionRuntimeReplacements;
  v17 = [(CSUCaptionRuntimeReplacements *)&v28 init];
  if (v17)
  {
    v18 = objc_msgSend_stringWithSpaceAtEnds(keyCopy, v13, v14, v15, v16);
    replacementKey = v17->_replacementKey;
    v17->_replacementKey = v18;

    v24 = objc_msgSend_stringWithSpaceAtEnds(valueCopy, v20, v21, v22, v23);
    replacementValue = v17->_replacementValue;
    v17->_replacementValue = v24;

    probCopy = 1.0;
    if (prob != 0.0)
    {
      probCopy = prob;
    }

    v17->_replacementProb = probCopy;
    objc_storeStrong(&v17->_genderOption, option);
  }

  return v17;
}

@end