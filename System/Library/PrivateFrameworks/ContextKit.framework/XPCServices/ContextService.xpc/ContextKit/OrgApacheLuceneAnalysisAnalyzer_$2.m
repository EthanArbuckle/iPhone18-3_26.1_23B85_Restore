@interface OrgApacheLuceneAnalysisAnalyzer_$2
- (id)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)a3 withNSString:(id)a4;
- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)a3 withNSString:(id)a4 withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(id)a5;
@end

@implementation OrgApacheLuceneAnalysisAnalyzer_$2

- (id)getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)a3 withNSString:(id)a4
{
  v5 = sub_100010948(a3);
  v6 = JavaUtilMap_class_();
  if (!v5)
  {
    return 0;
  }

  if (([v6 isInstance:v5] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return [v5 getWithId:a4];
}

- (void)setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:(id)a3 withNSString:(id)a4 withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:(id)a5
{
  v8 = sub_100010948(a3);
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
    sub_10001099C(a3, v8);
    if (!v8)
    {
      JreThrowNullPointerException();
    }
  }

  [(JavaUtilHashMap *)v8 putWithId:a4 withId:a5];
}

@end