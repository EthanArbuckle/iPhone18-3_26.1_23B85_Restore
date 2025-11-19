@interface MAAutoAssetSetInfoFound
- (MAAutoAssetSetInfoFound)initWithCoder:(id)a3;
- (id)description;
- (id)initForAssetSetIdentifier:(id)a3 reportingStatus:(id)a4;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetInfoFound

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetSetInfoFound *)self summary];
  v5 = [(MAAutoAssetSetInfoFound *)self currentSetStatus];
  v6 = [v5 description];
  v7 = [v3 stringWithFormat:@"%@\n%@", v4, v6];

  return v7;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetSetInfoFound *)self assetSetIdentifier];
  v5 = [(MAAutoAssetSetInfoFound *)self currentSetStatus];
  v6 = [v5 summary];
  v7 = [v3 stringWithFormat:@"assetSetIdentifier:%@|currentSetStatus:%@", v4, v6];

  return v7;
}

- (id)initForAssetSetIdentifier:(id)a3 reportingStatus:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MAAutoAssetSetInfoFound;
  v9 = [(MAAutoAssetSetInfoFound *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_assetSetIdentifier, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (MAAutoAssetSetInfoFound)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MAAutoAssetSetInfoFound;
  v5 = [(MAAutoAssetSetInfoFound *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentSetStatus"];
    currentSetStatus = v5->_currentSetStatus;
    v5->_currentSetStatus = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSetInfoFound *)self assetSetIdentifier];
  [v4 encodeObject:v5 forKey:@"assetSetIdentifier"];

  v6 = [(MAAutoAssetSetInfoFound *)self currentSetStatus];
  [v4 encodeObject:v6 forKey:@"currentSetStatus"];
}

@end