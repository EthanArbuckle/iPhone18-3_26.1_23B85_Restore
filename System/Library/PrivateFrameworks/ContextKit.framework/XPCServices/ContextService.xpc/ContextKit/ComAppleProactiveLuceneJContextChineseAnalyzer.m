@interface ComAppleProactiveLuceneJContextChineseAnalyzer
- (id)createComponentsWithNSString:(id)a3;
@end

@implementation ComAppleProactiveLuceneJContextChineseAnalyzer

- (id)createComponentsWithNSString:(id)a3
{
  v3 = new_ComAppleProactiveLuceneCRFTokenizer_initWithNSString_(@"zh");
  v4 = new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(v3);

  return v4;
}

@end