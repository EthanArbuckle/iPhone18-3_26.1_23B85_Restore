@interface IRCandidatesContainerMO
+ (id)candidatesContainerMOFromCandidatesContainerDO:(id)o withReplayEventMO:(id)mO managedObjectContext:(id)context;
+ (void)setPropertiesOfCandidatesContainerMO:(id)o withCandidatesContainerDO:(id)dO inManagedObjectContext:(id)context;
- (id)convert;
@end

@implementation IRCandidatesContainerMO

+ (id)candidatesContainerMOFromCandidatesContainerDO:(id)o withReplayEventMO:(id)mO managedObjectContext:(id)context
{
  contextCopy = context;
  mOCopy = mO;
  oCopy = o;
  v10 = [[IRCandidatesContainerMO alloc] initWithContext:contextCopy];
  [(IRCandidatesContainerMO *)v10 setReplayEvent:mOCopy];

  [IRCandidatesContainerMO setPropertiesOfCandidatesContainerMO:v10 withCandidatesContainerDO:oCopy inManagedObjectContext:contextCopy];

  return v10;
}

+ (void)setPropertiesOfCandidatesContainerMO:(id)o withCandidatesContainerDO:(id)dO inManagedObjectContext:(id)context
{
  oCopy = o;
  contextCopy = context;
  candidates = [dO candidates];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113__IRCandidatesContainerMO_setPropertiesOfCandidatesContainerMO_withCandidatesContainerDO_inManagedObjectContext___block_invoke;
  v12[3] = &unk_2797E13F8;
  v13 = oCopy;
  v14 = contextCopy;
  v10 = contextCopy;
  v11 = oCopy;
  [candidates enumerateObjectsUsingBlock:v12];
}

void __113__IRCandidatesContainerMO_setPropertiesOfCandidatesContainerMO_withCandidatesContainerDO_inManagedObjectContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRCandidateMO MOCandidate:a2 candidatesContainerMO:v2 inManagedObjectContext:*(a1 + 40)];
  [v2 addCandidatesObject:v3];
}

- (id)convert
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  candidates = [(IRCandidatesContainerMO *)self candidates];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__IRCandidatesContainerMO_convert__block_invoke;
  v8[3] = &unk_2797E1420;
  v9 = v3;
  v5 = v3;
  [candidates enumerateObjectsUsingBlock:v8];

  v6 = [[IRCandidatesContainerDO alloc] initWithCandidates:v5];

  return v6;
}

void __34__IRCandidatesContainerMO_convert__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 convert];
  [v2 addObject:v3];
}

@end