@interface CSUCaptionRuntimeExcludeGenderTrigger
- (CSUCaptionRuntimeExcludeGenderTrigger)initWithDictionary:(id)dictionary;
@end

@implementation CSUCaptionRuntimeExcludeGenderTrigger

- (CSUCaptionRuntimeExcludeGenderTrigger)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CSUCaptionRuntimeExcludeGenderTrigger;
  v8 = [(CSUCaptionRuntimeExcludeGenderTrigger *)&v16 init];
  if (v8)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"triggerTokens", v6, v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v10, @"triggerTokens", v11, v12);
    }

    else
    {
      v13 = 0;
    }

    triggerTokens = v8->_triggerTokens;
    v8->_triggerTokens = v13;
  }

  return v8;
}

@end