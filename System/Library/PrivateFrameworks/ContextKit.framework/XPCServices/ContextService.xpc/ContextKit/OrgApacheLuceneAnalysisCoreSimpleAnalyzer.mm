@interface OrgApacheLuceneAnalysisCoreSimpleAnalyzer
- (id)createComponentsWithNSString:(id)a3;
@end

@implementation OrgApacheLuceneAnalysisCoreSimpleAnalyzer

- (id)createComponentsWithNSString:(id)a3
{
  v3 = new_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_init();
  v4 = new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_(v3);

  return v4;
}

@end