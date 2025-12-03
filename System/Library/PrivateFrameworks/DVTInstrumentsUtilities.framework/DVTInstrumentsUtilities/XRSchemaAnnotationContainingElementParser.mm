@interface XRSchemaAnnotationContainingElementParser
+ (id)_elementNameToClassMap;
- (XRSchemaAnnotationPropertyReportingDelegate)delegate;
- (id)startElementWithName:(id)name attributes:(id)attributes line:(int64_t)line col:(int64_t)col;
- (void)textParserCompletedParsing:(id)parsing elementName:(id)name;
@end

@implementation XRSchemaAnnotationContainingElementParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE86750 != -1)
  {
    sub_2480B360C();
  }

  v3 = qword_27EE86748;

  return v3;
}

- (void)textParserCompletedParsing:(id)parsing elementName:(id)name
{
  parsingCopy = parsing;
  if (objc_msgSend_isEqualToString_(name, v6, @"error-message", v7, v8))
  {
    v13 = objc_msgSend_delegate(self, v9, v10, v11, v12);
    v18 = objc_msgSend_elementName(self, v14, v15, v16, v17);
    v23 = objc_msgSend_key(self, v19, v20, v21, v22);
    v28 = objc_msgSend_stringValue(parsingCopy, v24, v25, v26, v27);
    objc_msgSend_elementWithName_parser_key_finishedWithErrorReplacement_(v13, v29, v18, self, v23, v28);
  }
}

- (id)startElementWithName:(id)name attributes:(id)attributes line:(int64_t)line col:(int64_t)col
{
  v12.receiver = self;
  v12.super_class = XRSchemaAnnotationContainingElementParser;
  v7 = [(XRXMLElementParser *)&v12 startElementWithName:name attributes:attributes line:line col:col];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_setDelegate_(v7, v8, self, v9, v10);
  }

  return v7;
}

- (XRSchemaAnnotationPropertyReportingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end