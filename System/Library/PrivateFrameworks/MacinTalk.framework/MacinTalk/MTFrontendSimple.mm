@interface MTFrontendSimple
- (MTFrontendSimple)initWithString:(id)string;
- (MTFrontendSimple)initWithStringAndLocale:(id)locale locale:(id)a4;
- (id)nextObject;
- (void)dealloc;
@end

@implementation MTFrontendSimple

- (MTFrontendSimple)initWithString:(id)string
{
  stringCopy = string;
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
  v6 = [(MTFrontendSimple *)self initWithStringAndLocale:stringCopy locale:v5];

  return v6;
}

- (MTFrontendSimple)initWithStringAndLocale:(id)locale locale:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MTFrontendSimple;
  v9 = [(MTFrontendSimple *)&v14 init];
  if (v9)
  {
    [(MTFrontendSimple *)v9 setFDictLookup:SLDictLookup::Create(v7, v8)];
    fDictLookup = [(MTFrontendSimple *)v9 fDictLookup];
    [(MTFrontendSimple *)v9 setFPronouncer:SLPronouncer::Create(v7, fDictLookup, v11)];
    operator new();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)nextObject
{
  MTFEBuilder::ParseSentence(self->_builder);
  builder = self->_builder;
  var2 = builder->var2;
  MTFEBuilder::ResetProduct(builder, 0);
  if (var2)
  {
    v5 = [MTFWrappedSpeechElement fromCPPElement:var2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  builder = [(MTFrontendSimple *)self builder];
  if (builder)
  {
    (*(builder->var0 + 1))(builder);
  }

  fLexer = [(MTFrontendSimple *)self fLexer];
  if (fLexer)
  {
    (*(fLexer->var0 + 7))(fLexer);
  }

  fPronouncer = [(MTFrontendSimple *)self fPronouncer];
  if (fPronouncer)
  {
    (*(fPronouncer->var0 + 1))(fPronouncer);
  }

  fDictLookup = [(MTFrontendSimple *)self fDictLookup];
  if (fDictLookup)
  {
    (*(fDictLookup->var0 + 1))(fDictLookup);
  }

  fTextSource = [(MTFrontendSimple *)self fTextSource];
  if (fTextSource)
  {
    (*(fTextSource->var0 + 2))(fTextSource);
  }

  v8.receiver = self;
  v8.super_class = MTFrontendSimple;
  [(MTFrontendSimple *)&v8 dealloc];
}

@end