@interface GKPlayerActivityInternal
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivityInternal)initWithServerResponse:(id)response;
- (id)description;
@end

@implementation GKPlayerActivityInternal

- (GKPlayerActivityInternal)initWithServerResponse:(id)response
{
  v23 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v21.receiver = self;
  v21.super_class = GKPlayerActivityInternal;
  v5 = [(GKPlayerActivityInternal *)&v21 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = [responseCopy objectForKeyedSubscript:@"sections"];
    v8 = v7;
    if (v7)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          v12 = 0;
          do
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [[GKPlayerActivitySectionInternal alloc] initWithDictionary:*(*(&v17 + 1) + 8 * v12)];
            [array addObject:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v10);
      }
    }

    [(GKPlayerActivityInternal *)v5 setSections:array];
    v14 = [responseCopy objectForKeyedSubscript:@"continuation-key"];
    [(GKPlayerActivityInternal *)v5 setContinuationToken:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sections = [(GKPlayerActivityInternal *)self sections];
  continuationToken = [(GKPlayerActivityInternal *)self continuationToken];
  v6 = [v3 stringWithFormat:@"sections: %@, continuationKey: %@", sections, continuationToken];

  return v6;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_277 != -1)
  {
    +[GKPlayerActivityInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_276;

  return v3;
}

void __51__GKPlayerActivityInternal_secureCodedPropertyKeys__block_invoke()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"sections";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v6[1] = @"continuationToken";
  v7[0] = v2;
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys_276;
  secureCodedPropertyKeys_sSecureCodedKeys_276 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

@end