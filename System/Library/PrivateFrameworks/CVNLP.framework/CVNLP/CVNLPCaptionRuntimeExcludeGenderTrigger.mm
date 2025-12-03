@interface CVNLPCaptionRuntimeExcludeGenderTrigger
- (CVNLPCaptionRuntimeExcludeGenderTrigger)initWithDictionary:(id)dictionary;
@end

@implementation CVNLPCaptionRuntimeExcludeGenderTrigger

- (CVNLPCaptionRuntimeExcludeGenderTrigger)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CVNLPCaptionRuntimeExcludeGenderTrigger;
  v7 = [(CVNLPCaptionRuntimeExcludeGenderTrigger *)&v14 init];
  if (v7)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"triggerTokens", v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, @"triggerTokens", v10);
    }

    else
    {
      v11 = 0;
    }

    triggerTokens = v7->_triggerTokens;
    v7->_triggerTokens = v11;
  }

  return v7;
}

@end