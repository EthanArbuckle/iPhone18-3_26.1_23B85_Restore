@interface OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents)initWithOrgApacheLuceneAnalysisTokenizer:(id)a3;
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents)initWithOrgApacheLuceneAnalysisTokenizer:(id)a3 withOrgApacheLuceneAnalysisTokenStream:(id)a4;
- (void)dealloc;
- (void)setReaderWithJavaIoReader:(id)a3;
@end

@implementation OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents)initWithOrgApacheLuceneAnalysisTokenizer:(id)a3 withOrgApacheLuceneAnalysisTokenStream:(id)a4
{
  JreStrongAssign(&self->source_, a3);
  JreStrongAssign(&self->sink_, a4);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents)initWithOrgApacheLuceneAnalysisTokenizer:(id)a3
{
  JreStrongAssign(&self->source_, a3);
  JreStrongAssign(&self->sink_, a3);
  return self;
}

- (void)setReaderWithJavaIoReader:(id)a3
{
  source = self->source_;
  if (!source)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneAnalysisTokenizer *)source setReaderWithJavaIoReader:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
  [(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)&v3 dealloc];
}

@end