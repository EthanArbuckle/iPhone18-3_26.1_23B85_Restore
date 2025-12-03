@interface EMFQueryEvaluator
- (EMFQueryEvaluator)initWithIndex:(id)index andOverrideList:(id)list;
- (id)_overriddenResultsForQuery:(id)query;
- (id)performQuery:(id)query;
@end

@implementation EMFQueryEvaluator

- (EMFQueryEvaluator)initWithIndex:(id)index andOverrideList:(id)list
{
  indexCopy = index;
  listCopy = list;
  v9 = [(EMFQueryEvaluator *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_index, index);
    objc_storeStrong(&v10->_overrideList, list);
  }

  return v10;
}

- (id)performQuery:(id)query
{
  queryCopy = query;
  tokenCounts = [queryCopy tokenCounts];
  v6 = [(EMFInvertedIndex *)self->_index calculateDocumentWeightsForQueryTokenCounts:tokenCounts];
  v7 = [(EMFQueryEvaluator *)self _overriddenResultsForQuery:queryCopy];
  v8 = [EMFQueryResult alloc];
  if (v7)
  {
    v9 = [(EMFQueryResult *)v8 initWithQuery:queryCopy matchingDocumentWeights:v6 resultOverride:v7];
  }

  else
  {
    v9 = [(EMFQueryResult *)v8 initWithQuery:queryCopy andMatchingDocumentWeights:v6];
  }

  v10 = v9;

  return v10;
}

- (id)_overriddenResultsForQuery:(id)query
{
  overrideList = self->_overrideList;
  if (overrideList)
  {
    overrideList = [overrideList overriddenResultsForQuery:query];
    v3 = vars8;
  }

  return overrideList;
}

@end