@interface DESDediscoKey
- (DESDediscoKey)initWithPrivacyID:(id)d environment:(id)environment recipeID:(id)iD;
- (id)metadataEncodedMetricsKeyString;
- (id)metadataKeyString;
- (id)metricsKeyString;
- (id)resultsKeyString;
- (id)resultsKeyStringForChunk:(id)chunk;
@end

@implementation DESDediscoKey

- (DESDediscoKey)initWithPrivacyID:(id)d environment:(id)environment recipeID:(id)iD
{
  dCopy = d;
  environmentCopy = environment;
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = DESDediscoKey;
  v12 = [(DESDediscoKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_privacyID, d);
    objc_storeStrong(&v13->_environment, environment);
    objc_storeStrong(&v13->_recipeID, iD);
  }

  return v13;
}

- (id)resultsKeyString
{
  v10[5] = *MEMORY[0x277D85DE8];
  privacyID = [(DESDediscoKey *)self privacyID];
  v10[1] = privacyID;
  v10[2] = @"results";
  environment = [(DESDediscoKey *)self environment];
  v10[3] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v10[4] = recipeID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)resultsKeyStringForChunk:(id)chunk
{
  v12[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"pfl";
  chunkCopy = chunk;
  privacyID = [(DESDediscoKey *)self privacyID];
  v12[1] = privacyID;
  v12[2] = @"results";
  v12[3] = chunkCopy;
  environment = [(DESDediscoKey *)self environment];
  v12[4] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v12[5] = recipeID;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];

  v9 = [v8 componentsJoinedByString:@":"];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)metricsKeyString
{
  v10[5] = *MEMORY[0x277D85DE8];
  privacyID = [(DESDediscoKey *)self privacyID];
  v10[1] = privacyID;
  v10[2] = @"metrics";
  environment = [(DESDediscoKey *)self environment];
  v10[3] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v10[4] = recipeID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)metadataKeyString
{
  v10[5] = *MEMORY[0x277D85DE8];
  privacyID = [(DESDediscoKey *)self privacyID];
  v10[1] = privacyID;
  v10[2] = @"metadata";
  environment = [(DESDediscoKey *)self environment];
  v10[3] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v10[4] = recipeID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)metadataEncodedMetricsKeyString
{
  v10[5] = *MEMORY[0x277D85DE8];
  privacyID = [(DESDediscoKey *)self privacyID];
  v10[1] = privacyID;
  v10[2] = @"encoded-metrics";
  environment = [(DESDediscoKey *)self environment];
  v10[3] = environment;
  recipeID = [(DESDediscoKey *)self recipeID];
  v10[4] = recipeID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  v7 = [v6 componentsJoinedByString:@":"];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end