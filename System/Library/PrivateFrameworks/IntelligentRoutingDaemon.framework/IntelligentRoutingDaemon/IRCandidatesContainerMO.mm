@interface IRCandidatesContainerMO
+ (id)candidatesContainerMOFromCandidatesContainerDO:(id)a3 withReplayEventMO:(id)a4 managedObjectContext:(id)a5;
+ (void)setPropertiesOfCandidatesContainerMO:(id)a3 withCandidatesContainerDO:(id)a4 inManagedObjectContext:(id)a5;
- (id)convert;
@end

@implementation IRCandidatesContainerMO

+ (id)candidatesContainerMOFromCandidatesContainerDO:(id)a3 withReplayEventMO:(id)a4 managedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRCandidatesContainerMO alloc] initWithContext:v7];
  [(IRCandidatesContainerMO *)v10 setReplayEvent:v8];

  [IRCandidatesContainerMO setPropertiesOfCandidatesContainerMO:v10 withCandidatesContainerDO:v9 inManagedObjectContext:v7];

  return v10;
}

+ (void)setPropertiesOfCandidatesContainerMO:(id)a3 withCandidatesContainerDO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 candidates];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113__IRCandidatesContainerMO_setPropertiesOfCandidatesContainerMO_withCandidatesContainerDO_inManagedObjectContext___block_invoke;
  v12[3] = &unk_2797E13F8;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [v9 enumerateObjectsUsingBlock:v12];
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
  v4 = [(IRCandidatesContainerMO *)self candidates];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__IRCandidatesContainerMO_convert__block_invoke;
  v8[3] = &unk_2797E1420;
  v9 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v8];

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