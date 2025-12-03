@interface XRSchemaSimpleTypeElementParser
+ (id)_elementNameToClassMap;
- (XRSchemaAnnotationPropertyReportingDelegate)delegate;
- (id)startElementWithName:(id)name attributes:(id)attributes line:(int64_t)line col:(int64_t)col;
- (void)checkForAnnotationAndPatternAvailable;
- (void)finishedParsingPatternWithParser:(id)parser patternValue:(id)value;
- (void)textParserCompletedParsing:(id)parsing elementName:(id)name;
@end

@implementation XRSchemaSimpleTypeElementParser

+ (id)_elementNameToClassMap
{
  if (qword_27EE86970 != -1)
  {
    sub_2480B3DE8();
  }

  v3 = qword_27EE86968;

  return v3;
}

- (void)checkForAnnotationAndPatternAvailable
{
  if (self->_patternParser && self->_errorMessage)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_msgSend_identifier(self, v3, v4, v5, v6);
    objc_msgSend_elementWithName_parser_key_finishedWithErrorReplacement_(WeakRetained, v8, v7, self->_patternParser, self->_parsedRegex, self->_errorMessage);
  }
}

- (void)finishedParsingPatternWithParser:(id)parser patternValue:(id)value
{
  parserCopy = parser;
  valueCopy = value;
  patternParser = self->_patternParser;
  self->_patternParser = parserCopy;
  v9 = parserCopy;

  parsedRegex = self->_parsedRegex;
  self->_parsedRegex = valueCopy;

  objc_msgSend_checkForAnnotationAndPatternAvailable(self, v11, v12, v13, v14);
}

- (void)textParserCompletedParsing:(id)parsing elementName:(id)name
{
  parsingCopy = parsing;
  if (objc_msgSend_isEqualToString_(name, v6, @"error-message", v7, v8))
  {
    v13 = objc_msgSend_stringValue(parsingCopy, v9, v10, v11, v12);
    errorMessage = self->_errorMessage;
    self->_errorMessage = v13;

    objc_msgSend_checkForAnnotationAndPatternAvailable(self, v15, v16, v17, v18);
  }
}

- (id)startElementWithName:(id)name attributes:(id)attributes line:(int64_t)line col:(int64_t)col
{
  v12.receiver = self;
  v12.super_class = XRSchemaSimpleTypeElementParser;
  v7 = [(XRXMLElementParser *)&v12 startElementWithName:name attributes:attributes line:line col:col];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
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