@interface EMFInvertedIndex
- (EMFIndexStrategy)strategy;
- (EMFInvertedIndex)initWithTermIndex:(id)index andDocumentIndex:(id)documentIndex;
- (id)calculateDocumentWeightsForQueryTokenCounts:(id)counts;
- (id)commonDocumentsForTerms:(id)terms;
- (id)postingsForTerm:(id)term;
- (id)termWeightForTerm:(id)term inDocument:(id)document;
- (id)termsForDocument:(id)document;
@end

@implementation EMFInvertedIndex

- (EMFInvertedIndex)initWithTermIndex:(id)index andDocumentIndex:(id)documentIndex
{
  indexCopy = index;
  documentIndexCopy = documentIndex;
  v12.receiver = self;
  v12.super_class = EMFInvertedIndex;
  v9 = [(EMFInvertedIndex *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_termIndex, index);
    objc_storeStrong(&v10->_documentIndex, documentIndex);
  }

  return v10;
}

- (id)postingsForTerm:(id)term
{
  termCopy = term;
  strategy = [(EMFInvertedIndex *)self strategy];
  v6 = [strategy postingsForTerm:termCopy];

  return v6;
}

- (id)termsForDocument:(id)document
{
  documentCopy = document;
  strategy = [(EMFInvertedIndex *)self strategy];
  v6 = [strategy termsForDocument:documentCopy];

  return v6;
}

- (id)termWeightForTerm:(id)term inDocument:(id)document
{
  documentCopy = document;
  termCopy = term;
  strategy = [(EMFInvertedIndex *)self strategy];
  v9 = [strategy termWeightForTerm:termCopy inDocument:documentCopy];

  return v9;
}

- (id)commonDocumentsForTerms:(id)terms
{
  termsCopy = terms;
  strategy = [(EMFInvertedIndex *)self strategy];
  v6 = [strategy commonDocumentsForTerms:termsCopy];

  return v6;
}

- (id)calculateDocumentWeightsForQueryTokenCounts:(id)counts
{
  countsCopy = counts;
  strategy = [(EMFInvertedIndex *)self strategy];
  v6 = [strategy calculateDocumentWeightsForQueryTokenCounts:countsCopy];

  return v6;
}

- (EMFIndexStrategy)strategy
{
  strategy = self->_strategy;
  if (!strategy)
  {
    termIndex = [(EMFInvertedIndex *)self termIndex];
    documentIndex = [(EMFInvertedIndex *)self documentIndex];
    v6 = [EMFIndexStrategyFactory defaultStrategyWithTermIndex:termIndex andDocumentIndex:documentIndex];
    v7 = self->_strategy;
    self->_strategy = v6;

    strategy = self->_strategy;
  }

  return strategy;
}

@end