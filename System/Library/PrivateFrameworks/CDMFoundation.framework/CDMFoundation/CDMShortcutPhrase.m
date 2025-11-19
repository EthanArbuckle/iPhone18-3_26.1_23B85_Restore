@interface CDMShortcutPhrase
- (CDMShortcutPhrase)initWithSemanticValue:(id)a3 baseTemplateString:(id)a4;
@end

@implementation CDMShortcutPhrase

- (CDMShortcutPhrase)initWithSemanticValue:(id)a3 baseTemplateString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMShortcutPhrase;
  v9 = [(CDMShortcutPhrase *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_semanticValue, a3);
    objc_storeStrong(&v10->_baseTemplateString, a4);
  }

  return v10;
}

@end