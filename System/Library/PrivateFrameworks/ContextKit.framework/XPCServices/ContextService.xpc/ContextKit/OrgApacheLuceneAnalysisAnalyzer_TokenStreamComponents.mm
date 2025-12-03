@interface OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents)initWithOrgApacheLuceneAnalysisTokenizer:(id)tokenizer;
- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents)initWithOrgApacheLuceneAnalysisTokenizer:(id)tokenizer withOrgApacheLuceneAnalysisTokenStream:(id)stream;
- (void)dealloc;
- (void)setReaderWithJavaIoReader:(id)reader;
@end

@implementation OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents)initWithOrgApacheLuceneAnalysisTokenizer:(id)tokenizer withOrgApacheLuceneAnalysisTokenStream:(id)stream
{
  JreStrongAssign(&self->source_, tokenizer);
  JreStrongAssign(&self->sink_, stream);
  return self;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents)initWithOrgApacheLuceneAnalysisTokenizer:(id)tokenizer
{
  JreStrongAssign(&self->source_, tokenizer);
  JreStrongAssign(&self->sink_, tokenizer);
  return self;
}

- (void)setReaderWithJavaIoReader:(id)reader
{
  source = self->source_;
  if (!source)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneAnalysisTokenizer *)source setReaderWithJavaIoReader:reader];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents;
  [(OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)&v3 dealloc];
}

@end