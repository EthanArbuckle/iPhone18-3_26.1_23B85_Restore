@interface EMFQueryEvaluator
- (EMFQueryEvaluator)initWithIndex:(id)a3 andOverrideList:(id)a4;
- (id)_overriddenResultsForQuery:(id)a3;
- (id)performQuery:(id)a3;
@end

@implementation EMFQueryEvaluator

- (EMFQueryEvaluator)initWithIndex:(id)a3 andOverrideList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(EMFQueryEvaluator *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_index, a3);
    objc_storeStrong(&v10->_overrideList, a4);
  }

  return v10;
}

- (id)performQuery:(id)a3
{
  v4 = a3;
  v5 = [v4 tokenCounts];
  v6 = [(EMFInvertedIndex *)self->_index calculateDocumentWeightsForQueryTokenCounts:v5];
  v7 = [(EMFQueryEvaluator *)self _overriddenResultsForQuery:v4];
  v8 = [EMFQueryResult alloc];
  if (v7)
  {
    v9 = [(EMFQueryResult *)v8 initWithQuery:v4 matchingDocumentWeights:v6 resultOverride:v7];
  }

  else
  {
    v9 = [(EMFQueryResult *)v8 initWithQuery:v4 andMatchingDocumentWeights:v6];
  }

  v10 = v9;

  return v10;
}

- (id)_overriddenResultsForQuery:(id)a3
{
  overrideList = self->_overrideList;
  if (overrideList)
  {
    overrideList = [overrideList overriddenResultsForQuery:a3];
    v3 = vars8;
  }

  return overrideList;
}

@end