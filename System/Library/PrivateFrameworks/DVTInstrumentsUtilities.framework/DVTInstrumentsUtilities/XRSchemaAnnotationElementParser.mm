@interface XRSchemaAnnotationElementParser
+ (id)_elementNameToClassMap;
- (XRSchemaAnnotationTextValuesDelegate)delegate;
- (void)textParserCompletedParsing:(id)a3 elementName:(id)a4;
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

- (void)textParserCompletedParsing:(id)a3 elementName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = objc_msgSend_delegate(self, v8, v9, v10, v11);
  objc_msgSend_textParserCompletedParsing_elementName_(v14, v12, v7, v6, v13);
}

- (XRSchemaAnnotationTextValuesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end