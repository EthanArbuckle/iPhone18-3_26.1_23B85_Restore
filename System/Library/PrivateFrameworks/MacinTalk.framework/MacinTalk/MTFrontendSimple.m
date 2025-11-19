@interface MTFrontendSimple
- (MTFrontendSimple)initWithString:(id)a3;
- (MTFrontendSimple)initWithStringAndLocale:(id)a3 locale:(id)a4;
- (id)nextObject;
- (void)dealloc;
@end

@implementation MTFrontendSimple

- (MTFrontendSimple)initWithString:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];
  v6 = [(MTFrontendSimple *)self initWithStringAndLocale:v4 locale:v5];

  return v6;
}

- (MTFrontendSimple)initWithStringAndLocale:(id)a3 locale:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MTFrontendSimple;
  v9 = [(MTFrontendSimple *)&v14 init];
  if (v9)
  {
    [(MTFrontendSimple *)v9 setFDictLookup:SLDictLookup::Create(v7, v8)];
    v10 = [(MTFrontendSimple *)v9 fDictLookup];
    [(MTFrontendSimple *)v9 setFPronouncer:SLPronouncer::Create(v7, v10, v11)];
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
  v3 = [(MTFrontendSimple *)self builder];
  if (v3)
  {
    (*(v3->var0 + 1))(v3);
  }

  v4 = [(MTFrontendSimple *)self fLexer];
  if (v4)
  {
    (*(v4->var0 + 7))(v4);
  }

  v5 = [(MTFrontendSimple *)self fPronouncer];
  if (v5)
  {
    (*(v5->var0 + 1))(v5);
  }

  v6 = [(MTFrontendSimple *)self fDictLookup];
  if (v6)
  {
    (*(v6->var0 + 1))(v6);
  }

  v7 = [(MTFrontendSimple *)self fTextSource];
  if (v7)
  {
    (*(v7->var0 + 2))(v7);
  }

  v8.receiver = self;
  v8.super_class = MTFrontendSimple;
  [(MTFrontendSimple *)&v8 dealloc];
}

@end