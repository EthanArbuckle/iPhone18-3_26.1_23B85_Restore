@interface XRSchemaPatternRestrictionElementParser
+ (id)_elementNameToClassMap;
- (XRSchemaRegexPatternDetectionDelegate)delegate;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation XRSchemaPatternRestrictionElementParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE86760 != -1)
  {
    sub_2480B3620();
  }

  v3 = qword_27EE86758;

  return v3;
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  v9 = objc_msgSend_elementAttributes(valueCopy, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"value", v11, v12);

  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_msgSend_finishedParsingPatternWithParser_patternValue_(WeakRetained, v15, valueCopy, v13, v16);
  }
}

- (XRSchemaRegexPatternDetectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end