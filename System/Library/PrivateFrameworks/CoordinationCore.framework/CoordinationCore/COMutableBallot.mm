@interface COMutableBallot
- (BOOL)addDiscoveryRecord:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addCandidate:(id)a3;
- (void)clearInsignificantCandidates;
- (void)mergeBallot:(id)a3;
- (void)removeCandidate:(id)a3;
@end

@implementation COMutableBallot

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [COBallot alloc];

  return [(COBallot *)v4 initWithBallot:self];
}

- (void)addCandidate:(id)a3
{
  v4 = a3;
  v5 = [(COBallot *)self candidates];
  v6 = [v5 mutableCopy];

  [v6 addObject:v4];
  [v6 sortUsingComparator:&__block_literal_global_12];
  [(COBallot *)self setCandidates:v6];
}

- (void)removeCandidate:(id)a3
{
  v4 = a3;
  v5 = [(COBallot *)self candidates];
  v8 = [v5 mutableCopy];

  [v8 removeObject:v4];
  [(COBallot *)self setCandidates:v8];
  v6 = [(COBallot *)self discovery];
  v7 = [v6 mutableCopy];

  [v7 removeObjectForKey:v4];
  [(COBallot *)self setDiscovery:v7];
}

- (void)mergeBallot:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(COBallot *)self candidates];
  v6 = [v5 mutableCopy];

  v7 = [v4 candidates];
  [v6 unionOrderedSet:v7];

  [v6 sortUsingComparator:&__block_literal_global_59];
  v22 = v6;
  [(COBallot *)self setCandidates:v6];
  v24 = self;
  v8 = [(COBallot *)self discovery];
  v9 = [v8 mutableCopy];

  v23 = v4;
  v10 = [v4 discovery];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v10 objectForKey:v15];
        v17 = [(COBallot *)v24 discovery];
        v18 = [v17 objectForKey:v15];

        if (v18)
        {
          v19 = [v18 mutableCopy];
          [v19 addDestinationsFromDiscoveryRecord:v16];
          v20 = [[CODiscoveryRecord alloc] initWithDiscoveryRecord:v19];
        }

        else
        {
          v20 = v16;
        }

        [v9 setObject:v20 forKey:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  [(COBallot *)v24 setDiscovery:v9];

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)addDiscoveryRecord:(id)a3
{
  v4 = a3;
  v5 = [(CODiscoveryRecord *)v4 constituent];
  v6 = [(COBallot *)self discovery];
  v7 = [v6 mutableCopy];

  v8 = [v7 objectForKey:v5];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  if (([v8 isEqualToDiscoveryRecord:v4] & 1) == 0)
  {
    v11 = [v9 mutableCopy];
    [v11 addDestinationsFromDiscoveryRecord:v4];
    v12 = [[CODiscoveryRecord alloc] initWithDiscoveryRecord:v11];

    v4 = v12;
LABEL_5:
    [v7 setObject:v4 forKey:v5];
    [(COBallot *)self setDiscovery:v7];
    v10 = 1;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)clearInsignificantCandidates
{
  v3 = [(COBallot *)self candidates];
  v6 = [v3 firstObject];

  v4 = v6;
  if (v6)
  {
    v5 = [MEMORY[0x277CBEB70] orderedSetWithObject:v6];
    [(COBallot *)self setCandidates:v5];

    v4 = v6;
  }
}

@end