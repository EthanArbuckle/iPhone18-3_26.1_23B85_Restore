@interface EMLocalSearchInfo
- (EMLocalSearchInfo)initWithCoder:(id)coder;
- (EMLocalSearchInfo)initWithQueryStatus:(int)status hasQueryEmbedding:(BOOL)embedding hasKeywordResults:(BOOL)results hasEmbeddingResults:(BOOL)embeddingResults rankingSignalsByObjectID:(id)d;
- (id)ef_publicDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMLocalSearchInfo

- (EMLocalSearchInfo)initWithQueryStatus:(int)status hasQueryEmbedding:(BOOL)embedding hasKeywordResults:(BOOL)results hasEmbeddingResults:(BOOL)embeddingResults rankingSignalsByObjectID:(id)d
{
  dCopy = d;
  v18.receiver = self;
  v18.super_class = EMLocalSearchInfo;
  v13 = [(EMLocalSearchInfo *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_queryStatus = status;
    v13->_hasQueryEmbedding = embedding;
    v13->_hasKeywordResults = results;
    v13->_hasEmbeddingResults = embeddingResults;
    v15 = [dCopy copy];
    rankingSignalsByObjectID = v14->_rankingSignalsByObjectID;
    v14->_rankingSignalsByObjectID = v15;
  }

  return v14;
}

- (id)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  queryStatus = [(EMLocalSearchInfo *)self queryStatus];
  hasQueryEmbedding = [(EMLocalSearchInfo *)self hasQueryEmbedding];
  hasKeywordResults = [(EMLocalSearchInfo *)self hasKeywordResults];
  hasEmbeddingResults = [(EMLocalSearchInfo *)self hasEmbeddingResults];
  rankingSignalsByObjectID = [(EMLocalSearchInfo *)self rankingSignalsByObjectID];
  v10 = [rankingSignalsByObjectID count];
  v11 = @"NO";
  if (hasEmbeddingResults)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (hasKeywordResults)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (hasQueryEmbedding)
  {
    v11 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%@ %p queryStatus: %d, hasQueryEmbedding: %@, hasKeywordResults: %@, hasEmbeddingResults: %@ rankingSignalsByObjectID.count: %lu>", v4, self, queryStatus, v11, v13, v12, v10];

  return v14;
}

- (EMLocalSearchInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = EMLocalSearchInfo;
  v5 = [(EMLocalSearchInfo *)&v13 init];
  if (v5)
  {
    v5->_queryStatus = [coderCopy decodeInt64ForKey:@"EFPropertyKey_queryStatus"];
    v5->_hasQueryEmbedding = [coderCopy decodeBoolForKey:@"EFPropertyKey_hasQueryEmbedding"];
    v5->_hasKeywordResults = [coderCopy decodeBoolForKey:@"EFPropertyKey_hasKeywordResults"];
    v5->_hasEmbeddingResults = [coderCopy decodeBoolForKey:@"EFPropertyKey_hasEmbeddingResults"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"EFPropertyKey_rankingSignalsByObjectID"];
    rankingSignalsByObjectID = v5->_rankingSignalsByObjectID;
    v5->_rankingSignalsByObjectID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[EMLocalSearchInfo queryStatus](self forKey:{"queryStatus"), @"EFPropertyKey_queryStatus"}];
  [coderCopy encodeBool:-[EMLocalSearchInfo hasQueryEmbedding](self forKey:{"hasQueryEmbedding"), @"EFPropertyKey_hasQueryEmbedding"}];
  [coderCopy encodeBool:-[EMLocalSearchInfo hasKeywordResults](self forKey:{"hasKeywordResults"), @"EFPropertyKey_hasKeywordResults"}];
  [coderCopy encodeBool:-[EMLocalSearchInfo hasEmbeddingResults](self forKey:{"hasEmbeddingResults"), @"EFPropertyKey_hasEmbeddingResults"}];
  rankingSignalsByObjectID = [(EMLocalSearchInfo *)self rankingSignalsByObjectID];
  [coderCopy encodeObject:rankingSignalsByObjectID forKey:@"EFPropertyKey_rankingSignalsByObjectID"];
}

@end