@interface CSUCaptionRuntimeExcludeGenderTrigger
- (CSUCaptionRuntimeExcludeGenderTrigger)initWithDictionary:(id)a3;
@end

@implementation CSUCaptionRuntimeExcludeGenderTrigger

- (CSUCaptionRuntimeExcludeGenderTrigger)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CSUCaptionRuntimeExcludeGenderTrigger;
  v8 = [(CSUCaptionRuntimeExcludeGenderTrigger *)&v16 init];
  if (v8)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"triggerTokens", v6, v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(v4, v10, @"triggerTokens", v11, v12);
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