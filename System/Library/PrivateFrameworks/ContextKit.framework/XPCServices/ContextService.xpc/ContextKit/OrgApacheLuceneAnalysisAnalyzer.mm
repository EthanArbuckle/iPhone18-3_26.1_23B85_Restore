@interface OrgApacheLuceneAnalysisAnalyzer
+ (void)initialize;
- (id)tokenStreamWithNSString:(id)string withJavaIoReader:(id)reader;
- (id)tokenStreamWithNSString:(id)string withNSString:(id)sString;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneAnalysisAnalyzer

- (id)tokenStreamWithNSString:(id)string withJavaIoReader:(id)reader
{
  reuseStrategy = self->reuseStrategy_;
  if (!reuseStrategy || (v8 = [(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)reuseStrategy getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:string], v9 = [(OrgApacheLuceneAnalysisAnalyzer *)self initReaderWithNSString:string withJavaIoReader:reader], !v8) && (v8 = [(OrgApacheLuceneAnalysisAnalyzer *)self createComponentsWithNSString:string], [(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)self->reuseStrategy_ setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:string withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:v8], !v8))
  {
    JreThrowNullPointerException();
  }

  [v8 setReaderWithJavaIoReader:v9];

  return [v8 getTokenStream];
}

- (id)tokenStreamWithNSString:(id)string withNSString:(id)sString
{
  reuseStrategy = self->reuseStrategy_;
  if (!reuseStrategy)
  {
    goto LABEL_10;
  }

  v8 = [(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)reuseStrategy getReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:string];
  v9 = v8;
  if (!v8 || (v10 = *(v8 + 3)) == 0)
  {
    v10 = new_OrgApacheLuceneAnalysisReusableStringReader_init();
  }

  [(OrgApacheLuceneAnalysisReusableStringReader *)v10 setValueWithNSString:sString];
  v11 = [(OrgApacheLuceneAnalysisAnalyzer *)self initReaderWithNSString:string withJavaIoReader:v10];
  if (!v9)
  {
    v9 = [(OrgApacheLuceneAnalysisAnalyzer *)self createComponentsWithNSString:string];
    [(OrgApacheLuceneAnalysisAnalyzer_ReuseStrategy *)self->reuseStrategy_ setReusableComponentsWithOrgApacheLuceneAnalysisAnalyzer:self withNSString:string withOrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents:v9];
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
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisAnalyzer_GLOBAL_REUSE_STRATEGY_, [OrgApacheLuceneAnalysisAnalyzer__1 alloc]);
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisAnalyzer_PER_FIELD_REUSE_STRATEGY_, [OrgApacheLuceneAnalysisAnalyzer__2 alloc]);
    atomic_store(1u, OrgApacheLuceneAnalysisAnalyzer__initialized);
  }
}

@end