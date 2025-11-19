@interface DESDediscoKey
- (DESDediscoKey)initWithPrivacyID:(id)a3 environment:(id)a4 recipeID:(id)a5;
- (id)metadataEncodedMetricsKeyString;
- (id)metadataKeyString;
- (id)metricsKeyString;
- (id)resultsKeyString;
- (id)resultsKeyStringForChunk:(id)a3;
@end

@implementation DESDediscoKey

- (DESDediscoKey)initWithPrivacyID:(id)a3 environment:(id)a4 recipeID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DESDediscoKey;
  v12 = [(DESDediscoKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_privacyID, a3);
    objc_storeStrong(&v13->_environment, a4);
    objc_storeStrong(&v13->_recipeID, a5);
  }

  return v13;
}

- (id)resultsKeyString
{
  v10[5] = *MEMORY[0x277D85DE8];
  v3 = [(DESDediscoKey *)self privacyID];
  v10[1] = v3;
  v10[2] = @"results";
  v4 = [(DESDediscoKey *)self environment];
  v10[3] = v4;
  v5 = [(DESDediscoKey *)self recipeID];
  v10[4] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)resultsKeyStringForChunk:(id)a3
{
  v12[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"pfl";
  v4 = a3;
  v5 = [(DESDediscoKey *)self privacyID];
  v12[1] = v5;
  v12[2] = @"results";
  v12[3] = v4;
  v6 = [(DESDediscoKey *)self environment];
  v12[4] = v6;
  v7 = [(DESDediscoKey *)self recipeID];
  v12[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];

  v9 = [v8 componentsJoinedByString:@":"];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)metricsKeyString
{
  v10[5] = *MEMORY[0x277D85DE8];
  v3 = [(DESDediscoKey *)self privacyID];
  v10[1] = v3;
  v10[2] = @"metrics";
  v4 = [(DESDediscoKey *)self environment];
  v10[3] = v4;
  v5 = [(DESDediscoKey *)self recipeID];
  v10[4] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)metadataKeyString
{
  v10[5] = *MEMORY[0x277D85DE8];
  v3 = [(DESDediscoKey *)self privacyID];
  v10[1] = v3;
  v10[2] = @"metadata";
  v4 = [(DESDediscoKey *)self environment];
  v10[3] = v4;
  v5 = [(DESDediscoKey *)self recipeID];
  v10[4] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)metadataEncodedMetricsKeyString
{
  v10[5] = *MEMORY[0x277D85DE8];
  v3 = [(DESDediscoKey *)self privacyID];
  v10[1] = v3;
  v10[2] = @"encoded-metrics";
  v4 = [(DESDediscoKey *)self environment];
  v10[3] = v4;
  v5 = [(DESDediscoKey *)self recipeID];
  v10[4] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end