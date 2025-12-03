@interface OrgApacheLuceneAnalysisAnalyzer_$1
- (id)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string;
@end

@implementation OrgApacheLuceneAnalysisAnalyzer_$1

- (id)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string
{
  v4 = sub_100010948(analyzer);
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v4;
}

@end