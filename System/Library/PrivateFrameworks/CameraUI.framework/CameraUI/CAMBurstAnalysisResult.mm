@interface CAMBurstAnalysisResult
- (CAMBurstAnalysisResult)initWithIdentifier:(id)identifier allAssetIdentifiers:(id)identifiers goodAssetIdentifiers:(id)assetIdentifiers bestAssetIdentifier:(id)assetIdentifier;
- (id)description;
@end

@implementation CAMBurstAnalysisResult

- (CAMBurstAnalysisResult)initWithIdentifier:(id)identifier allAssetIdentifiers:(id)identifiers goodAssetIdentifiers:(id)assetIdentifiers bestAssetIdentifier:(id)assetIdentifier
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  assetIdentifiersCopy = assetIdentifiers;
  assetIdentifierCopy = assetIdentifier;
  v25.receiver = self;
  v25.super_class = CAMBurstAnalysisResult;
  v14 = [(CAMBurstAnalysisResult *)&v25 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [identifiersCopy copy];
    allAssetIdentifiers = v14->_allAssetIdentifiers;
    v14->_allAssetIdentifiers = v17;

    v19 = [assetIdentifiersCopy copy];
    goodAssetIdentifiers = v14->_goodAssetIdentifiers;
    v14->_goodAssetIdentifiers = v19;

    v21 = [assetIdentifierCopy copy];
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
  identifier = [(CAMBurstAnalysisResult *)self identifier];
  allAssetIdentifiers = [(CAMBurstAnalysisResult *)self allAssetIdentifiers];
  goodAssetIdentifiers = [(CAMBurstAnalysisResult *)self goodAssetIdentifiers];
  bestAssetIdentifier = [(CAMBurstAnalysisResult *)self bestAssetIdentifier];
  v9 = [v3 stringWithFormat:@"<%@ identifier:%@, allAssetIidentifiers:%@, goodAssetIdentifiers:%@, bestAssetIdentifiers:%@>", v4, identifier, allAssetIdentifiers, goodAssetIdentifiers, bestAssetIdentifier];

  return v9;
}

@end