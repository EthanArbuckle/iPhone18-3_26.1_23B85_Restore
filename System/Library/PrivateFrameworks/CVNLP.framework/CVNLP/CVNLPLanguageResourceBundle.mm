@interface CVNLPLanguageResourceBundle
- (CVNLPLanguageResourceBundle)initWithLexicons:(id)a3 characterLanguageModel:(id)a4 wordLanguageModel:(id)a5;
- (id)packagedLexiconCursorsUsingContext:(id)a3;
@end

@implementation CVNLPLanguageResourceBundle

- (CVNLPLanguageResourceBundle)initWithLexicons:(id)a3 characterLanguageModel:(id)a4 wordLanguageModel:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CVNLPLanguageResourceBundle;
  v12 = [(CVNLPLanguageResourceBundle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_characterLanguageModel, a4);
    objc_storeStrong(&v13->_wordLanguageModel, a5);
    objc_storeStrong(&v13->_lexicons, a3);
  }

  return v13;
}

- (id)packagedLexiconCursorsUsingContext:(id)a3
{
  v4 = objc_msgSend_packagedLexiconCursorsUsingTextDecodingContext_(self->_lexicons, a2, a3, v3);

  return v4;
}

@end