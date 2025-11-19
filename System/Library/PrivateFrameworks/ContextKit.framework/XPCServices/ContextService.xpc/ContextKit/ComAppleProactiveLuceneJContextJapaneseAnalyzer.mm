@interface ComAppleProactiveLuceneJContextJapaneseAnalyzer
- (id)createComponentsWithNSString:(id)a3;
@end

@implementation ComAppleProactiveLuceneJContextJapaneseAnalyzer

- (id)createComponentsWithNSString:(id)a3
{
  v3 = [ComAppleProactiveLuceneJContextJapaneseAnalyzer_CRFJapaneseTokenizer alloc];
  ComAppleProactiveLuceneCRFTokenizer_init(v3);
  JreStrongAssign(&v3->super.localeIdentifier_, @"ja");
  v4 = new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(v3);

  return v4;
}

@end