@interface COElectionInfo
- (BOOL)hasGreaterGenerationThan:(id)a3;
- (BOOL)hasSameGenerationAndLeader:(id)a3;
- (BOOL)isEqual:(id)a3;
- (COElectionInfo)initWithCommand:(id)a3;
- (COElectionInfo)initWithGeneration:(unint64_t)a3 ballot:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)leader;
- (unint64_t)hash;
- (void)setBallot:(id)a3;
@end

@implementation COElectionInfo

- (COElectionInfo)initWithGeneration:(unint64_t)a3 ballot:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = COElectionInfo;
  v7 = [(COElectionInfo *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_generation = a3;
    v9 = [v6 copy];
    ballot = v8->_ballot;
    v8->_ballot = v9;
  }

  return v8;
}

- (COElectionInfo)initWithCommand:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COElectionInfo;
  v5 = [(COElectionInfo *)&v9 init];
  if (v5)
  {
    v5->_generation = [v4 generation];
    v6 = [v4 ballot];
    ballot = v5->_ballot;
    v5->_ballot = v6;
  }

  return v5;
}

- (void)setBallot:(id)a3
{
  v7 = a3;
  if ([MEMORY[0x277CFD0B8] isSlimBallotsEnabled])
  {
    v4 = [v7 mutableCopy];
    [(COBallot *)v4 clearInsignificantCandidates];
    ballot = self->_ballot;
    self->_ballot = v4;
  }

  else
  {
    v6 = v7;
    ballot = self->_ballot;
    self->_ballot = v6;
  }
}

- (id)leader
{
  v2 = [(COElectionInfo *)self ballot];
  v3 = [v2 candidates];
  v4 = [v3 firstObject];

  return v4;
}

- (BOOL)hasGreaterGenerationThan:(id)a3
{
  v4 = a3;
  v5 = [(COElectionInfo *)self generation];
  v6 = [v4 generation];

  return v5 > v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [COElectionInfo alloc];
  v5 = [(COElectionInfo *)self generation];
  v6 = [(COElectionInfo *)self ballot];
  v7 = [(COElectionInfo *)v4 initWithGeneration:v5 ballot:v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(COElectionInfo *)self generation];
  v4 = [(COElectionInfo *)self ballot];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(COElectionInfo *)self generation], v5 == [(COElectionInfo *)v4 generation]))
    {
      v6 = [(COElectionInfo *)self ballot];
      v7 = [(COElectionInfo *)v4 ballot];
      v8 = [v6 isEqualToBallot:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)hasSameGenerationAndLeader:(id)a3
{
  v4 = a3;
  v5 = [(COElectionInfo *)self generation];
  if (v5 == [v4 generation])
  {
    v6 = [(COElectionInfo *)self leader];
    v7 = [v4 leader];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end