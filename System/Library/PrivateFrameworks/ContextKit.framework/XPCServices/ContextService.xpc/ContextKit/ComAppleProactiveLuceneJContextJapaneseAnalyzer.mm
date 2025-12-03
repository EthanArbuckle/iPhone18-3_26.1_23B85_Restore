@interface ComAppleProactiveLuceneJContextJapaneseAnalyzer
- (id)createComponentsWithNSString:(id)string;
@end

@implementation ComAppleProactiveLuceneJContextJapaneseAnalyzer

- (id)createComponentsWithNSString:(id)string
{
  v3 = [ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer alloc];
  ComAppleProactiveLuceneCRFTokenizer_init(v3);
  JreStrongAssign(&v3->super.localeIdentifier_, @"ja");
  v4 = new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(v3);

  return v4;
}

@end