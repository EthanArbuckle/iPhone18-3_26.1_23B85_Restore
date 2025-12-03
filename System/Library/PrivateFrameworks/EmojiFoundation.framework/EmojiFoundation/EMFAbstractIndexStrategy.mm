@interface EMFAbstractIndexStrategy
- (EMFAbstractIndexStrategy)initWithTermIndex:(id)index andDocumentIndex:(id)documentIndex;
@end

@implementation EMFAbstractIndexStrategy

- (EMFAbstractIndexStrategy)initWithTermIndex:(id)index andDocumentIndex:(id)documentIndex
{
  indexCopy = index;
  documentIndexCopy = documentIndex;
  v12.receiver = self;
  v12.super_class = EMFAbstractIndexStrategy;
  v9 = [(EMFAbstractIndexStrategy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_termIndex, index);
    objc_storeStrong(&v10->_documentIndex, documentIndex);
  }

  return v10;
}

@end