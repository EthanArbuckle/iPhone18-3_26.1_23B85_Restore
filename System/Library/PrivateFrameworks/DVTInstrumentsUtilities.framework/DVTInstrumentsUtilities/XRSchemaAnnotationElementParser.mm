@interface XRSchemaAnnotationElementParser
+ (id)_elementNameToClassMap;
- (XRSchemaAnnotationTextValuesDelegate)delegate;
- (void)textParserCompletedParsing:(id)parsing elementName:(id)name;
@end

@implementation XRSchemaAnnotationElementParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE867E8 != -1)
  {
    sub_2480B3800();
  }

  v3 = qword_27EE867E0;

  return v3;
}

- (void)textParserCompletedParsing:(id)parsing elementName:(id)name
{
  nameCopy = name;
  parsingCopy = parsing;
  v14 = objc_msgSend_delegate(self, v8, v9, v10, v11);
  objc_msgSend_textParserCompletedParsing_elementName_(v14, v12, parsingCopy, nameCopy, v13);
}

- (XRSchemaAnnotationTextValuesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end