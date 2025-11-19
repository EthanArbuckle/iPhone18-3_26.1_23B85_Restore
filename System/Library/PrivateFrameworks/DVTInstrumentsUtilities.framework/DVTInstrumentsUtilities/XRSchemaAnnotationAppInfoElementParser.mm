@interface XRSchemaAnnotationAppInfoElementParser
+ (id)_elementNameToClassMap;
- (void)setValue:(id)a3 forElementName:(id)a4;
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

- (void)setValue:(id)a3 forElementName:(id)a4
{
  v9 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_textParserCompletedParsing_elementName_(self->super.parent, v7, v9, v6, v8);
  }
}

@end