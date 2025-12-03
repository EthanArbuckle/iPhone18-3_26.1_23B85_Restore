@interface OrgApacheLuceneAnalysisCharFilter
- (OrgApacheLuceneAnalysisCharFilter)initWithJavaIoReader:(id)reader;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneAnalysisCharFilter

- (OrgApacheLuceneAnalysisCharFilter)initWithJavaIoReader:(id)reader
{
  JavaIoReader_initWithId_(self, reader);
  JreStrongAssign(&self->input_, reader);
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