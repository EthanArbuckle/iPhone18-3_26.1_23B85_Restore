@interface CVNLPCaptionRuntimeExcludeGenderTrigger
- (CVNLPCaptionRuntimeExcludeGenderTrigger)initWithDictionary:(id)a3;
@end

@implementation CVNLPCaptionRuntimeExcludeGenderTrigger

- (CVNLPCaptionRuntimeExcludeGenderTrigger)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CVNLPCaptionRuntimeExcludeGenderTrigger;
  v7 = [(CVNLPCaptionRuntimeExcludeGenderTrigger *)&v14 init];
  if (v7)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"triggerTokens", v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(v4, v9, @"triggerTokens", v10);
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