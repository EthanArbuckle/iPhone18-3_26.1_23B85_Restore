@interface OrgApacheLuceneAnalysisAnalyzer
+ (void)initialize;
- (id)tokenStreamWithNSString:(id)a3 withJavaIoReader:(id)a4;
- (id)tokenStreamWithNSString:(id)a3 withNSString:(id)a4;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneAnalysisAnalyzer

- (id)tokenStreamWithNSString:(id)a3 withJavaIoReader:(id)a4
{
  reuseStrategy = self->reuseStrategy_;
  if (!reuseStrategy || (v8 = [(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)reuseStrategy getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:a3], v9 = [(OrgApacheLuceneAnalysisAnalyzer *)self initReaderWithNSString:a3 withJavaIoReader:a4], !v8) && (v8 = [(OrgApacheLuceneAnalysisAnalyzer *)self createComponentsWithNSString:a3], [(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)self->reuseStrategy_ setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:a3 withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:v8], !v8))
  {
    JreThrowNullPointerException();
  }

  [v8 setReaderWithJavaIoReader:v9];

  return [v8 getTokenStream];
}

- (id)tokenStreamWithNSString:(id)a3 withNSString:(id)a4
{
  reuseStrategy = self->reuseStrategy_;
  if (!reuseStrategy)
  {
    goto LABEL_10;
  }

  v8 = [(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)reuseStrategy getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:a3];
  v9 = v8;
  if (!v8 || (v10 = *(v8 + 3)) == 0)
  {
    v10 = new_OrgApacheLuceneAnalysisReusableStringReader_init();
  }

  [(OrgApacheLuceneAnalysisReusableStringReader *)v10 setValueWithNSString:a4];
  v11 = [(OrgApacheLuceneAnalysisAnalyzer *)self initReaderWithNSString:a3 withJavaIoReader:v10];
  if (!v9)
  {
    v9 = [(OrgApacheLuceneAnalysisAnalyzer *)self createComponentsWithNSString:a3];
    [(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)self->reuseStrategy_ setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:a3 withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:v9];
    if (!v9)
    {
LABEL_10:
      JreThrowNullPointerException();
    }
  }

  [v9 setReaderWithJavaIoReader:v11];
  JreStrongAssign(v9 + 3, v10);

  return [v9 getTokenStream];
}

- (void)close
{
  p_storedValue = &self->storedValue_;
  storedValue = self->storedValue_;
  if (storedValue)
  {
    [(OrgApacheLuceneUtilCloseableThreadLocal *)storedValue close];

    JreStrongAssign(p_storedValue, 0);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisAnalyzer;
  [(OrgApacheLuceneAnalysisAnalyzer *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisAnalyzer_GLOBAL_REUSE_STRATEGY_, [OrgApacheLuceneAnalysisAnalyzer__1 alloc]);
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisAnalyzer_PER_FIELD_REUSE_STRATEGY_, [OrgApacheLuceneAnalysisAnalyzer__2 alloc]);
    atomic_store(1u, OrgApacheLuceneAnalysisAnalyzer__initialized);
  }
}

@end