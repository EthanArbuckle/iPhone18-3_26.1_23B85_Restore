@interface COMutableBallot
- (BOOL)addDiscoveryRecord:(id)record;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addCandidate:(id)candidate;
- (void)clearInsignificantCandidates;
- (void)mergeBallot:(id)ballot;
- (void)removeCandidate:(id)candidate;
@end

@implementation COMutableBallot

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [COBallot alloc];

  return [(COBallot *)v4 initWithBallot:self];
}

- (void)addCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidates = [(COBallot *)self candidates];
  v6 = [candidates mutableCopy];

  [v6 addObject:candidateCopy];
  [v6 sortUsingComparator:&__block_literal_global_12];
  [(COBallot *)self setCandidates:v6];
}

- (void)removeCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidates = [(COBallot *)self candidates];
  v8 = [candidates mutableCopy];

  [v8 removeObject:candidateCopy];
  [(COBallot *)self setCandidates:v8];
  discovery = [(COBallot *)self discovery];
  v7 = [discovery mutableCopy];

  [v7 removeObjectForKey:candidateCopy];
  [(COBallot *)self setDiscovery:v7];
}

- (void)mergeBallot:(id)ballot
{
  v30 = *MEMORY[0x277D85DE8];
  ballotCopy = ballot;
  candidates = [(COBallot *)self candidates];
  v6 = [candidates mutableCopy];

  candidates2 = [ballotCopy candidates];
  [v6 unionOrderedSet:candidates2];

  [v6 sortUsingComparator:&__block_literal_global_59];
  v22 = v6;
  [(COBallot *)self setCandidates:v6];
  selfCopy = self;
  discovery = [(COBallot *)self discovery];
  v9 = [discovery mutableCopy];

  v23 = ballotCopy;
  discovery2 = [ballotCopy discovery];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = [discovery2 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(discovery2);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [discovery2 objectForKey:v15];
        discovery3 = [(COBallot *)selfCopy discovery];
        v18 = [discovery3 objectForKey:v15];

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

      v12 = [discovery2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  [(COBallot *)selfCopy setDiscovery:v9];

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)addDiscoveryRecord:(id)record
{
  recordCopy = record;
  constituent = [(CODiscoveryRecord *)recordCopy constituent];
  discovery = [(COBallot *)self discovery];
  v7 = [discovery mutableCopy];

  v8 = [v7 objectForKey:constituent];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  if (([v8 isEqualToDiscoveryRecord:recordCopy] & 1) == 0)
  {
    v11 = [v9 mutableCopy];
    [v11 addDestinationsFromDiscoveryRecord:recordCopy];
    v12 = [[CODiscoveryRecord alloc] initWithDiscoveryRecord:v11];

    recordCopy = v12;
LABEL_5:
    [v7 setObject:recordCopy forKey:constituent];
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
  candidates = [(COBallot *)self candidates];
  firstObject = [candidates firstObject];

  v4 = firstObject;
  if (firstObject)
  {
    v5 = [MEMORY[0x277CBEB70] orderedSetWithObject:firstObject];
    [(COBallot *)self setCandidates:v5];

    v4 = firstObject;
  }
}

@end