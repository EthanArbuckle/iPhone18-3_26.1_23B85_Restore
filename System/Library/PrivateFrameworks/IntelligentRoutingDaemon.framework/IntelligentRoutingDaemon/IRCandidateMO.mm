@interface IRCandidateMO
+ (id)MOCandidate:(id)candidate candidatesContainerMO:(id)o inManagedObjectContext:(id)context;
+ (void)setPropertiesOfCandidateMO:(id)o withCandidate:(id)candidate managedObjectContext:(id)context;
- (id)convert;
@end

@implementation IRCandidateMO

+ (id)MOCandidate:(id)candidate candidatesContainerMO:(id)o inManagedObjectContext:(id)context
{
  contextCopy = context;
  oCopy = o;
  candidateCopy = candidate;
  v10 = [[IRCandidateMO alloc] initWithContext:contextCopy];
  [(IRCandidateMO *)v10 setCandidatesContainer:oCopy];

  [IRCandidateMO setPropertiesOfCandidateMO:v10 withCandidate:candidateCopy managedObjectContext:contextCopy];

  return v10;
}

+ (void)setPropertiesOfCandidateMO:(id)o withCandidate:(id)candidate managedObjectContext:(id)context
{
  oCopy = o;
  contextCopy = context;
  candidateCopy = candidate;
  lastSeenDate = [candidateCopy lastSeenDate];
  [oCopy setLastSeenDate:lastSeenDate];

  lastUsedDate = [candidateCopy lastUsedDate];
  [oCopy setLastUsedDate:lastUsedDate];

  firstSeenDate = [candidateCopy firstSeenDate];
  [oCopy setFirstSeenDate:firstSeenDate];

  candidateIdentifier = [candidateCopy candidateIdentifier];
  [oCopy setCandidateIdentifier:candidateIdentifier];

  nodes = [oCopy nodes];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__IRCandidateMO_setPropertiesOfCandidateMO_withCandidate_managedObjectContext___block_invoke;
  v23[3] = &unk_2797E13A8;
  v15 = contextCopy;
  v24 = v15;
  [nodes enumerateObjectsUsingBlock:v23];

  nodes2 = [oCopy nodes];
  [oCopy removeNodes:nodes2];

  nodes3 = [candidateCopy nodes];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__IRCandidateMO_setPropertiesOfCandidateMO_withCandidate_managedObjectContext___block_invoke_2;
  v20[3] = &unk_2797E13D0;
  v21 = oCopy;
  v22 = v15;
  v18 = v15;
  v19 = oCopy;
  [nodes3 enumerateObjectsUsingBlock:v20];
}

void __79__IRCandidateMO_setPropertiesOfCandidateMO_withCandidate_managedObjectContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRNodeMO nodeMOFromNodeDO:a2 forCandidate:v2 inManagedObjectContext:*(a1 + 40)];
  [v2 addNodesObject:v3];
}

- (id)convert
{
  v3 = objc_opt_new();
  nodes = [(IRCandidateMO *)self nodes];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __24__IRCandidateMO_convert__block_invoke;
  v12[3] = &unk_2797E13A8;
  v13 = v3;
  v5 = v3;
  [nodes enumerateObjectsUsingBlock:v12];

  lastSeenDate = [(IRCandidateMO *)self lastSeenDate];
  lastUsedDate = [(IRCandidateMO *)self lastUsedDate];
  firstSeenDate = [(IRCandidateMO *)self firstSeenDate];
  candidateIdentifier = [(IRCandidateMO *)self candidateIdentifier];
  v10 = [IRCandidateDO candidateDOWithLastSeenDate:lastSeenDate lastUsedDate:lastUsedDate firstSeenDate:firstSeenDate candidateIdentifier:candidateIdentifier nodes:v5];

  return v10;
}

void __24__IRCandidateMO_convert__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 convert];
  [v2 addObject:v3];
}

@end