@interface ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer
- (ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer)initWithComAppleProactiveLuceneJContextJapaneseAnalyzer:(id)a3;
@end

@implementation ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer

- (ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer)initWithComAppleProactiveLuceneJContextJapaneseAnalyzer:(id)a3
{
  ComAppleProactiveLuceneCRFTokenizer_init(self);
  JreStrongAssign(&self->super.localeIdentifier_, @"ja");
  return self;
}

@end