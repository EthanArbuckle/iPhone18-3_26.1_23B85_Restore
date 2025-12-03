@interface OrgApacheLuceneAnalysisAnalyzer_$2
- (id)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string;
- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(id)components;
@end

@implementation OrgApacheLuceneAnalysisAnalyzer_$2

- (id)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string
{
  v5 = sub_100010948(analyzer);
  v6 = JavaUtilMap_class_();
  if (!v5)
  {
    return 0;
  }

  if (([v6 isInstance:v5] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v5 getWithId:string];
}

- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)analyzer withNSString:(id)string withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(id)components
{
  v8 = sub_100010948(analyzer);
  v9 = JavaUtilMap_class_();
  if (v8)
  {
    if (([v9 isInstance:v8] & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    v8 = new_JavaUtilHashMap_init();
    sub_10001099C(analyzer, v8);
    if (!v8)
    {
      JreThrowNullPointerException();
    }
  }

  [(JavaUtilHashMap *)v8 putWithId:string withId:components];
}

@end