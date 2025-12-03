@interface ComAppleProactiveLuceneJContextChineseAnalyzer
- (id)createComponentsWithNSString:(id)string;
@end

@implementation ComAppleProactiveLuceneJContextChineseAnalyzer

- (id)createComponentsWithNSString:(id)string
{
  v3 = new_ComAppleProactiveLuceneCRFTokenizer_initWithNSString_(@"zh");
  v4 = new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(v3);

  return v4;
}

@end