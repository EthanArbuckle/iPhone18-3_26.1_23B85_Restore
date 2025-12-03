@interface MSParsecSearchEmbeddingState
- (MSParsecSearchEmbeddingState)initWithQueryStatus:(int)status hasQueryEmbedding:(BOOL)embedding hasKeywordResults:(BOOL)results hasEmbeddingResults:(BOOL)embeddingResults;
- (id)description;
- (id)feedbackEmbedding;
@end

@implementation MSParsecSearchEmbeddingState

- (MSParsecSearchEmbeddingState)initWithQueryStatus:(int)status hasQueryEmbedding:(BOOL)embedding hasKeywordResults:(BOOL)results hasEmbeddingResults:(BOOL)embeddingResults
{
  v11.receiver = self;
  v11.super_class = MSParsecSearchEmbeddingState;
  result = [(MSParsecSearchEmbeddingState *)&v11 init];
  if (result)
  {
    result->_queryStatus = status;
    result->_hasQueryEmbedding = embedding;
    result->_hasKeywordResults = results;
    result->_hasEmbeddingResults = embeddingResults;
  }

  return result;
}

- (id)feedbackEmbedding
{
  v3 = objc_alloc_init(MEMORY[0x277D4C340]);
  [v3 setQueryStatus:self->_queryStatus];
  [v3 setHasQueryEmbedding:self->_hasQueryEmbedding];
  [v3 setHasKeywordResults:self->_hasKeywordResults];
  [v3 setHasEmbeddingResults:self->_hasEmbeddingResults];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  queryStatus = [(MSParsecSearchEmbeddingState *)self queryStatus];
  if ([(MSParsecSearchEmbeddingState *)self hasQueryEmbedding])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(MSParsecSearchEmbeddingState *)self hasKeywordResults])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(MSParsecSearchEmbeddingState *)self hasEmbeddingResults])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  return [v3 stringWithFormat:@"queryStatus: %d, hasQueryEmbedding: %@, hasKeywordResults: %@, hasEmbeddingResults: %@", queryStatus, v5, v6, v7];
}

@end