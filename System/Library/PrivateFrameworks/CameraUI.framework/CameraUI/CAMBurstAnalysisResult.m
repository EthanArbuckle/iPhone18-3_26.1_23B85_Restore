@interface CAMBurstAnalysisResult
- (CAMBurstAnalysisResult)initWithIdentifier:(id)a3 allAssetIdentifiers:(id)a4 goodAssetIdentifiers:(id)a5 bestAssetIdentifier:(id)a6;
- (id)description;
@end

@implementation CAMBurstAnalysisResult

- (CAMBurstAnalysisResult)initWithIdentifier:(id)a3 allAssetIdentifiers:(id)a4 goodAssetIdentifiers:(id)a5 bestAssetIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = CAMBurstAnalysisResult;
  v14 = [(CAMBurstAnalysisResult *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    allAssetIdentifiers = v14->_allAssetIdentifiers;
    v14->_allAssetIdentifiers = v17;

    v19 = [v12 copy];
    goodAssetIdentifiers = v14->_goodAssetIdentifiers;
    v14->_goodAssetIdentifiers = v19;

    v21 = [v13 copy];
    bestAssetIdentifier = v14->_bestAssetIdentifier;
    v14->_bestAssetIdentifier = v21;

    v23 = v14;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CAMBurstAnalysisResult *)self identifier];
  v6 = [(CAMBurstAnalysisResult *)self allAssetIdentifiers];
  v7 = [(CAMBurstAnalysisResult *)self goodAssetIdentifiers];
  v8 = [(CAMBurstAnalysisResult *)self bestAssetIdentifier];
  v9 = [v3 stringWithFormat:@"<%@ identifier:%@, allAssetIidentifiers:%@, goodAssetIdentifiers:%@, bestAssetIdentifiers:%@>", v4, v5, v6, v7, v8];

  return v9;
}

@end