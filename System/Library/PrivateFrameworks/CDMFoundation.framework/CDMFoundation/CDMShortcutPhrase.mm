@interface CDMShortcutPhrase
- (CDMShortcutPhrase)initWithSemanticValue:(id)value baseTemplateString:(id)string;
@end

@implementation CDMShortcutPhrase

- (CDMShortcutPhrase)initWithSemanticValue:(id)value baseTemplateString:(id)string
{
  valueCopy = value;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = CDMShortcutPhrase;
  v9 = [(CDMShortcutPhrase *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_semanticValue, value);
    objc_storeStrong(&v10->_baseTemplateString, string);
  }

  return v10;
}

@end