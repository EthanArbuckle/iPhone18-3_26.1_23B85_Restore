@interface OrgApacheLuceneAnalysisCharFilter
- (OrgApacheLuceneAnalysisCharFilter)initWithJavaIoReader:(id)a3;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneAnalysisCharFilter

- (OrgApacheLuceneAnalysisCharFilter)initWithJavaIoReader:(id)a3
{
  JavaIoReader_initWithId_(self, a3);
  JreStrongAssign(&self->input_, a3);
  return self;
}

- (void)close
{
  input = self->input_;
  if (!input)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoReader *)input close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisCharFilter;
  [(JavaIoReader *)&v3 dealloc];
}

@end