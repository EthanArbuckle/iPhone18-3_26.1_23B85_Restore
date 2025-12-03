@interface CVNLPLanguageResourceBundle
- (CVNLPLanguageResourceBundle)initWithLexicons:(id)lexicons characterLanguageModel:(id)model wordLanguageModel:(id)languageModel;
- (id)packagedLexiconCursorsUsingContext:(id)context;
@end

@implementation CVNLPLanguageResourceBundle

- (CVNLPLanguageResourceBundle)initWithLexicons:(id)lexicons characterLanguageModel:(id)model wordLanguageModel:(id)languageModel
{
  lexiconsCopy = lexicons;
  modelCopy = model;
  languageModelCopy = languageModel;
  v15.receiver = self;
  v15.super_class = CVNLPLanguageResourceBundle;
  v12 = [(CVNLPLanguageResourceBundle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_characterLanguageModel, model);
    objc_storeStrong(&v13->_wordLanguageModel, languageModel);
    objc_storeStrong(&v13->_lexicons, lexicons);
  }

  return v13;
}

- (id)packagedLexiconCursorsUsingContext:(id)context
{
  v4 = objc_msgSend_packagedLexiconCursorsUsingTextDecodingContext_(self->_lexicons, a2, context, v3);

  return v4;
}

@end