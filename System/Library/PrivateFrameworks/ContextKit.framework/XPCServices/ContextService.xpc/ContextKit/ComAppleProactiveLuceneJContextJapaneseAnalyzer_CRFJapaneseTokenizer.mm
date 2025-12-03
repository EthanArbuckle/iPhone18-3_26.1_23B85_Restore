@interface ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer
- (ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer)initWithComAppleProactiveLuceneJContextJapaneseAnalyzer:(id)analyzer;
@end

@implementation ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer

- (ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer)initWithComAppleProactiveLuceneJContextJapaneseAnalyzer:(id)analyzer
{
  ComAppleProactiveLuceneCRFTokenizer_init(self);
  JreStrongAssign(&self->super.localeIdentifier_, @"ja");
  return self;
}

@end