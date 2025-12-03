@interface COElectionInfo
- (BOOL)hasGreaterGenerationThan:(id)than;
- (BOOL)hasSameGenerationAndLeader:(id)leader;
- (BOOL)isEqual:(id)equal;
- (COElectionInfo)initWithCommand:(id)command;
- (COElectionInfo)initWithGeneration:(unint64_t)generation ballot:(id)ballot;
- (id)copyWithZone:(_NSZone *)zone;
- (id)leader;
- (unint64_t)hash;
- (void)setBallot:(id)ballot;
@end

@implementation COElectionInfo

- (COElectionInfo)initWithGeneration:(unint64_t)generation ballot:(id)ballot
{
  ballotCopy = ballot;
  v12.receiver = self;
  v12.super_class = COElectionInfo;
  v7 = [(COElectionInfo *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_generation = generation;
    v9 = [ballotCopy copy];
    ballot = v8->_ballot;
    v8->_ballot = v9;
  }

  return v8;
}

- (COElectionInfo)initWithCommand:(id)command
{
  commandCopy = command;
  v9.receiver = self;
  v9.super_class = COElectionInfo;
  v5 = [(COElectionInfo *)&v9 init];
  if (v5)
  {
    v5->_generation = [commandCopy generation];
    ballot = [commandCopy ballot];
    ballot = v5->_ballot;
    v5->_ballot = ballot;
  }

  return v5;
}

- (void)setBallot:(id)ballot
{
  ballotCopy = ballot;
  if ([MEMORY[0x277CFD0B8] isSlimBallotsEnabled])
  {
    v4 = [ballotCopy mutableCopy];
    [(COBallot *)v4 clearInsignificantCandidates];
    ballot = self->_ballot;
    self->_ballot = v4;
  }

  else
  {
    v6 = ballotCopy;
    ballot = self->_ballot;
    self->_ballot = v6;
  }
}

- (id)leader
{
  ballot = [(COElectionInfo *)self ballot];
  candidates = [ballot candidates];
  firstObject = [candidates firstObject];

  return firstObject;
}

- (BOOL)hasGreaterGenerationThan:(id)than
{
  thanCopy = than;
  generation = [(COElectionInfo *)self generation];
  generation2 = [thanCopy generation];

  return generation > generation2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [COElectionInfo alloc];
  generation = [(COElectionInfo *)self generation];
  ballot = [(COElectionInfo *)self ballot];
  v7 = [(COElectionInfo *)v4 initWithGeneration:generation ballot:ballot];

  return v7;
}

- (unint64_t)hash
{
  generation = [(COElectionInfo *)self generation];
  ballot = [(COElectionInfo *)self ballot];
  v5 = [ballot hash];

  return v5 ^ generation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(COElectionInfo *)self generation], v5 == [(COElectionInfo *)equalCopy generation]))
    {
      ballot = [(COElectionInfo *)self ballot];
      ballot2 = [(COElectionInfo *)equalCopy ballot];
      v8 = [ballot isEqualToBallot:ballot2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)hasSameGenerationAndLeader:(id)leader
{
  leaderCopy = leader;
  generation = [(COElectionInfo *)self generation];
  if (generation == [leaderCopy generation])
  {
    leader = [(COElectionInfo *)self leader];
    leader2 = [leaderCopy leader];
    v8 = [leader isEqual:leader2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end