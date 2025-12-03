@interface HFSetDiff
+ (id)diffFromSet:(id)set toSet:(id)toSet;
- (BOOL)isEqual:(id)equal;
- (id)_initWithFromSet:(id)set toSet:(id)toSet additions:(id)additions deletions:(id)deletions updates:(id)updates;
- (id)description;
- (id)diffByMergingDiff:(id)diff keyGenerator:(id)generator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HFSetDiff

+ (id)diffFromSet:(id)set toSet:(id)toSet
{
  v5 = MEMORY[0x277CBEB58];
  toSetCopy = toSet;
  setCopy = set;
  v8 = [v5 setWithSet:toSetCopy];
  [v8 minusSet:setCopy];
  v9 = [MEMORY[0x277CBEB58] setWithSet:setCopy];
  [v9 minusSet:toSetCopy];
  v10 = [MEMORY[0x277CBEB58] setWithSet:toSetCopy];
  [v10 minusSet:v8];
  [v10 minusSet:v9];
  v11 = [HFSetDiff alloc];
  v12 = [toSetCopy mutableCopy];

  v13 = [(HFSetDiff *)v11 _initWithFromSet:setCopy toSet:v12 additions:v8 deletions:v9 updates:v10];

  return v13;
}

- (id)_initWithFromSet:(id)set toSet:(id)toSet additions:(id)additions deletions:(id)deletions updates:(id)updates
{
  setCopy = set;
  toSetCopy = toSet;
  additionsCopy = additions;
  deletionsCopy = deletions;
  updatesCopy = updates;
  v21.receiver = self;
  v21.super_class = HFSetDiff;
  v17 = [(HFSetDiff *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_fromSet, set);
    objc_storeStrong(p_isa + 2, toSet);
    objc_storeStrong(p_isa + 3, additions);
    objc_storeStrong(p_isa + 4, deletions);
    objc_storeStrong(p_isa + 5, updates);
  }

  return p_isa;
}

- (unint64_t)hash
{
  fromSet = [(HFSetDiff *)self fromSet];
  v3 = [fromSet hash];

  return v3;
}

- (id)diffByMergingDiff:(id)diff keyGenerator:(id)generator
{
  v35[2] = *MEMORY[0x277D85DE8];
  diffCopy = diff;
  generatorCopy = generator;
  toSet = [(HFSetDiff *)self toSet];
  deletions = [(HFSetDiff *)self deletions];
  v10 = [toSet setByAddingObjectsFromSet:deletions];
  v11 = [v10 na_dictionaryWithKeyGenerator:generatorCopy];

  toSet2 = [diffCopy toSet];
  deletions2 = [diffCopy deletions];
  v14 = [toSet2 setByAddingObjectsFromSet:deletions2];
  v15 = [v14 na_dictionaryWithKeyGenerator:generatorCopy];

  v16 = MEMORY[0x277CBEB98];
  allKeys = [v11 allKeys];
  v35[0] = allKeys;
  allKeys2 = [v15 allKeys];
  v35[1] = allKeys2;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  na_arrayByFlattening = [v19 na_arrayByFlattening];
  v21 = [v16 setWithArray:na_arrayByFlattening];

  v22 = [(HFSetDiff *)self mutableCopy];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __44__HFSetDiff_diffByMergingDiff_keyGenerator___block_invoke;
  v30[3] = &unk_277E016D0;
  v31 = v11;
  v32 = v15;
  v33 = diffCopy;
  v34 = v22;
  v23 = v22;
  v24 = diffCopy;
  v25 = v15;
  v26 = v11;
  [v21 na_each:v30];
  v27 = [v23 copy];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

void __44__HFSetDiff_diffByMergingDiff_keyGenerator___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v12 = [v3 objectForKey:v4];
  v5 = [*(a1 + 40) objectForKey:v4];

  v6 = [*(a1 + 48) deletions];
  v7 = [v6 containsObject:v5];

  if (!v12 || !v5)
  {
    if (v12)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5 == 0;
    }

    v11 = v10;
    if ((v11 | v7))
    {
      goto LABEL_14;
    }

    v8 = (a1 + 56);
    goto LABEL_13;
  }

  v9 = *(a1 + 56);
  v8 = (a1 + 56);
  [v9 deleteObject:v12];
  if ((v7 & 1) == 0)
  {
LABEL_13:
    [*v8 addObject:v5];
  }

LABEL_14:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fromSet = [(HFSetDiff *)v5 fromSet];
      fromSet2 = [(HFSetDiff *)self fromSet];
      if (fromSet == fromSet2)
      {
        v10 = 1;
      }

      else
      {
        fromSet3 = [(HFSetDiff *)v5 fromSet];
        fromSet4 = [(HFSetDiff *)self fromSet];
        v10 = [fromSet3 isEqual:fromSet4];
      }

      toSet = [(HFSetDiff *)v5 toSet];
      toSet2 = [(HFSetDiff *)self toSet];
      if (toSet != toSet2)
      {
        toSet3 = [(HFSetDiff *)v5 toSet];
        toSet4 = [(HFSetDiff *)self toSet];
        v10 &= [toSet3 isEqual:toSet4];
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HFMutableSetDiff alloc];
  fromSet = [(HFSetDiff *)self fromSet];
  v5 = [fromSet copy];
  toSet = [(HFSetDiff *)self toSet];
  v7 = [toSet mutableCopy];
  additions = [(HFSetDiff *)self additions];
  v9 = [additions mutableCopy];
  deletions = [(HFSetDiff *)self deletions];
  v11 = [deletions mutableCopy];
  updates = [(HFSetDiff *)self updates];
  v13 = [updates mutableCopy];
  v14 = [(HFSetDiff *)v4 _initWithFromSet:v5 toSet:v7 additions:v9 deletions:v11 updates:v13];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  fromSet = [(HFSetDiff *)self fromSet];
  toSet = [(HFSetDiff *)self toSet];
  additions = [(HFSetDiff *)self additions];
  deletions = [(HFSetDiff *)self deletions];
  updates = [(HFSetDiff *)self updates];
  v9 = [v3 stringWithFormat:@"From Set: %@\n To Set: %@\n Additions: %@\n Deletions: %@\n Updates:%@", fromSet, toSet, additions, deletions, updates];

  return v9;
}

@end