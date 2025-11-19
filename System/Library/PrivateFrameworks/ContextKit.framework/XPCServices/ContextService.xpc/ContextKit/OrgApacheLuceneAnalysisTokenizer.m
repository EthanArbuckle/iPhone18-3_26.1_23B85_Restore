@interface OrgApacheLuceneAnalysisTokenizer
+ (void)initialize;
- (void)close;
- (void)dealloc;
- (void)reset;
- (void)setReaderWithJavaIoReader:(id)a3;
@end

@implementation OrgApacheLuceneAnalysisTokenizer

- (void)close
{
  input = self->input_;
  if (!input)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoReader *)input close];
  v4 = JreStrongAssign(&self->input_, qword_100553EF8);

  JreStrongAssign(&self->inputPending_, v4);
}

- (void)setReaderWithJavaIoReader:(id)a3
{
  if (!a3)
  {
    v4 = new_JavaLangNullPointerException_initWithNSString_(@"input must not be null");
    goto LABEL_8;
  }

  if (self->input_ != qword_100553EF8)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"TokenStream contract violation: close() call missing");
LABEL_8:
    objc_exception_throw(v4);
  }

  JreStrongAssign(&self->inputPending_, a3);

  [(OrgApacheLuceneAnalysisTokenizer *)self setReaderTestPoint];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisTokenizer;
  [(OrgApacheLuceneAnalysisTokenStream *)&v3 reset];
  JreStrongAssign(&self->input_, self->inputPending_);
  JreStrongAssign(&self->inputPending_, qword_100553EF8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisTokenizer;
  [(OrgApacheLuceneUtilAttributeSource *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [OrgApacheLuceneAnalysisTokenizer__1 alloc];
    JavaIoReader_init(v2);
    JreStrongAssignAndConsume(&qword_100553EF8, v2);
    atomic_store(1u, OrgApacheLuceneAnalysisTokenizer__initialized);
  }
}

@end