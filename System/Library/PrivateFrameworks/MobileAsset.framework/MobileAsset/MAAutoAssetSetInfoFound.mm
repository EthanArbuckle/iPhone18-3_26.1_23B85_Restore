@interface MAAutoAssetSetInfoFound
- (MAAutoAssetSetInfoFound)initWithCoder:(id)coder;
- (id)description;
- (id)initForAssetSetIdentifier:(id)identifier reportingStatus:(id)status;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetInfoFound

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  summary = [(MAAutoAssetSetInfoFound *)self summary];
  currentSetStatus = [(MAAutoAssetSetInfoFound *)self currentSetStatus];
  v6 = [currentSetStatus description];
  v7 = [v3 stringWithFormat:@"%@\n%@", summary, v6];

  return v7;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  assetSetIdentifier = [(MAAutoAssetSetInfoFound *)self assetSetIdentifier];
  currentSetStatus = [(MAAutoAssetSetInfoFound *)self currentSetStatus];
  summary = [currentSetStatus summary];
  v7 = [v3 stringWithFormat:@"assetSetIdentifier:%@|currentSetStatus:%@", assetSetIdentifier, summary];

  return v7;
}

- (id)initForAssetSetIdentifier:(id)identifier reportingStatus:(id)status
{
  identifierCopy = identifier;
  statusCopy = status;
  v12.receiver = self;
  v12.super_class = MAAutoAssetSetInfoFound;
  v9 = [(MAAutoAssetSetInfoFound *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_assetSetIdentifier, identifier);
    objc_storeStrong(p_isa + 2, status);
  }

  return p_isa;
}

- (MAAutoAssetSetInfoFound)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MAAutoAssetSetInfoFound;
  v5 = [(MAAutoAssetSetInfoFound *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentSetStatus"];
    currentSetStatus = v5->_currentSetStatus;
    v5->_currentSetStatus = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSetIdentifier = [(MAAutoAssetSetInfoFound *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  currentSetStatus = [(MAAutoAssetSetInfoFound *)self currentSetStatus];
  [coderCopy encodeObject:currentSetStatus forKey:@"currentSetStatus"];
}

@end