@interface EMFAbstractIndexStrategy
- (EMFAbstractIndexStrategy)initWithTermIndex:(id)a3 andDocumentIndex:(id)a4;
@end

@implementation EMFAbstractIndexStrategy

- (EMFAbstractIndexStrategy)initWithTermIndex:(id)a3 andDocumentIndex:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EMFAbstractIndexStrategy;
  v9 = [(EMFAbstractIndexStrategy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_termIndex, a3);
    objc_storeStrong(&v10->_documentIndex, a4);
  }

  return v10;
}

@end