@interface EMLocalSearchInfo
- (EMLocalSearchInfo)initWithCoder:(id)a3;
- (EMLocalSearchInfo)initWithQueryStatus:(int)a3 hasQueryEmbedding:(BOOL)a4 hasKeywordResults:(BOOL)a5 hasEmbeddingResults:(BOOL)a6 rankingSignalsByObjectID:(id)a7;
- (id)ef_publicDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMLocalSearchInfo

- (EMLocalSearchInfo)initWithQueryStatus:(int)a3 hasQueryEmbedding:(BOOL)a4 hasKeywordResults:(BOOL)a5 hasEmbeddingResults:(BOOL)a6 rankingSignalsByObjectID:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = EMLocalSearchInfo;
  v13 = [(EMLocalSearchInfo *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_queryStatus = a3;
    v13->_hasQueryEmbedding = a4;
    v13->_hasKeywordResults = a5;
    v13->_hasEmbeddingResults = a6;
    v15 = [v12 copy];
    rankingSignalsByObjectID = v14->_rankingSignalsByObjectID;
    v14->_rankingSignalsByObjectID = v15;
  }

  return v14;
}

- (id)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EMLocalSearchInfo *)self queryStatus];
  v6 = [(EMLocalSearchInfo *)self hasQueryEmbedding];
  v7 = [(EMLocalSearchInfo *)self hasKeywordResults];
  v8 = [(EMLocalSearchInfo *)self hasEmbeddingResults];
  v9 = [(EMLocalSearchInfo *)self rankingSignalsByObjectID];
  v10 = [v9 count];
  v11 = @"NO";
  if (v8)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (v7)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (v6)
  {
    v11 = @"YES";
  }

  v14 = [v3 stringWithFormat:@"<%@ %p queryStatus: %d, hasQueryEmbedding: %@, hasKeywordResults: %@, hasEmbeddingResults: %@ rankingSignalsByObjectID.count: %lu>", v4, self, v5, v11, v13, v12, v10];

  return v14;
}

- (EMLocalSearchInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EMLocalSearchInfo;
  v5 = [(EMLocalSearchInfo *)&v13 init];
  if (v5)
  {
    v5->_queryStatus = [v4 decodeInt64ForKey:@"EFPropertyKey_queryStatus"];
    v5->_hasQueryEmbedding = [v4 decodeBoolForKey:@"EFPropertyKey_hasQueryEmbedding"];
    v5->_hasKeywordResults = [v4 decodeBoolForKey:@"EFPropertyKey_hasKeywordResults"];
    v5->_hasEmbeddingResults = [v4 decodeBoolForKey:@"EFPropertyKey_hasEmbeddingResults"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"EFPropertyKey_rankingSignalsByObjectID"];
    rankingSignalsByObjectID = v5->_rankingSignalsByObjectID;
    v5->_rankingSignalsByObjectID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:-[EMLocalSearchInfo queryStatus](self forKey:{"queryStatus"), @"EFPropertyKey_queryStatus"}];
  [v5 encodeBool:-[EMLocalSearchInfo hasQueryEmbedding](self forKey:{"hasQueryEmbedding"), @"EFPropertyKey_hasQueryEmbedding"}];
  [v5 encodeBool:-[EMLocalSearchInfo hasKeywordResults](self forKey:{"hasKeywordResults"), @"EFPropertyKey_hasKeywordResults"}];
  [v5 encodeBool:-[EMLocalSearchInfo hasEmbeddingResults](self forKey:{"hasEmbeddingResults"), @"EFPropertyKey_hasEmbeddingResults"}];
  v4 = [(EMLocalSearchInfo *)self rankingSignalsByObjectID];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_rankingSignalsByObjectID"];
}

@end