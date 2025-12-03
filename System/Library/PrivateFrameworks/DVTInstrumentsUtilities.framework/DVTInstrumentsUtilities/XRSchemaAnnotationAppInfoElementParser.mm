@interface XRSchemaAnnotationAppInfoElementParser
+ (id)_elementNameToClassMap;
- (void)setValue:(id)value forElementName:(id)name;
@end

@implementation XRSchemaAnnotationAppInfoElementParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE86710 != -1)
  {
    sub_2480B3574();
  }

  v3 = qword_27EE86708;

  return v3;
}

- (void)setValue:(id)value forElementName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_textParserCompletedParsing_elementName_(self->super.parent, v7, valueCopy, nameCopy, v8);
  }
}

@end