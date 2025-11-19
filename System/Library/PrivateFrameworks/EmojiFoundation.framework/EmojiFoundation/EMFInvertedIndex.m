@interface EMFInvertedIndex
- (EMFIndexStrategy)strategy;
- (EMFInvertedIndex)initWithTermIndex:(id)a3 andDocumentIndex:(id)a4;
- (id)calculateDocumentWeightsForQueryTokenCounts:(id)a3;
- (id)commonDocumentsForTerms:(id)a3;
- (id)postingsForTerm:(id)a3;
- (id)termWeightForTerm:(id)a3 inDocument:(id)a4;
- (id)termsForDocument:(id)a3;
@end

@implementation EMFInvertedIndex

- (EMFInvertedIndex)initWithTermIndex:(id)a3 andDocumentIndex:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EMFInvertedIndex;
  v9 = [(EMFInvertedIndex *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_termIndex, a3);
    objc_storeStrong(&v10->_documentIndex, a4);
  }

  return v10;
}

- (id)postingsForTerm:(id)a3
{
  v4 = a3;
  v5 = [(EMFInvertedIndex *)self strategy];
  v6 = [v5 postingsForTerm:v4];

  return v6;
}

- (id)termsForDocument:(id)a3
{
  v4 = a3;
  v5 = [(EMFInvertedIndex *)self strategy];
  v6 = [v5 termsForDocument:v4];

  return v6;
}

- (id)termWeightForTerm:(id)a3 inDocument:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EMFInvertedIndex *)self strategy];
  v9 = [v8 termWeightForTerm:v7 inDocument:v6];

  return v9;
}

- (id)commonDocumentsForTerms:(id)a3
{
  v4 = a3;
  v5 = [(EMFInvertedIndex *)self strategy];
  v6 = [v5 commonDocumentsForTerms:v4];

  return v6;
}

- (id)calculateDocumentWeightsForQueryTokenCounts:(id)a3
{
  v4 = a3;
  v5 = [(EMFInvertedIndex *)self strategy];
  v6 = [v5 calculateDocumentWeightsForQueryTokenCounts:v4];

  return v6;
}

- (EMFIndexStrategy)strategy
{
  strategy = self->_strategy;
  if (!strategy)
  {
    v4 = [(EMFInvertedIndex *)self termIndex];
    v5 = [(EMFInvertedIndex *)self documentIndex];
    v6 = [EMFIndexStrategyFactory defaultStrategyWithTermIndex:v4 andDocumentIndex:v5];
    v7 = self->_strategy;
    self->_strategy = v6;

    strategy = self->_strategy;
  }

  return strategy;
}

@end