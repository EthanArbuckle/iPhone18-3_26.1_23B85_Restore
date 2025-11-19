@interface HFSetDiff
+ (id)diffFromSet:(id)a3 toSet:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithFromSet:(id)a3 toSet:(id)a4 additions:(id)a5 deletions:(id)a6 updates:(id)a7;
- (id)description;
- (id)diffByMergingDiff:(id)a3 keyGenerator:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HFSetDiff

+ (id)diffFromSet:(id)a3 toSet:(id)a4
{
  v5 = MEMORY[0x277CBEB58];
  v6 = a4;
  v7 = a3;
  v8 = [v5 setWithSet:v6];
  [v8 minusSet:v7];
  v9 = [MEMORY[0x277CBEB58] setWithSet:v7];
  [v9 minusSet:v6];
  v10 = [MEMORY[0x277CBEB58] setWithSet:v6];
  [v10 minusSet:v8];
  [v10 minusSet:v9];
  v11 = [HFSetDiff alloc];
  v12 = [v6 mutableCopy];

  v13 = [(HFSetDiff *)v11 _initWithFromSet:v7 toSet:v12 additions:v8 deletions:v9 updates:v10];

  return v13;
}

- (id)_initWithFromSet:(id)a3 toSet:(id)a4 additions:(id)a5 deletions:(id)a6 updates:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HFSetDiff;
  v17 = [(HFSetDiff *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_fromSet, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
  }

  return p_isa;
}

- (unint64_t)hash
{
  v2 = [(HFSetDiff *)self fromSet];
  v3 = [v2 hash];

  return v3;
}

- (id)diffByMergingDiff:(id)a3 keyGenerator:(id)a4
{
  v35[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HFSetDiff *)self toSet];
  v9 = [(HFSetDiff *)self deletions];
  v10 = [v8 setByAddingObjectsFromSet:v9];
  v11 = [v10 na_dictionaryWithKeyGenerator:v7];

  v12 = [v6 toSet];
  v13 = [v6 deletions];
  v14 = [v12 setByAddingObjectsFromSet:v13];
  v15 = [v14 na_dictionaryWithKeyGenerator:v7];

  v16 = MEMORY[0x277CBEB98];
  v17 = [v11 allKeys];
  v35[0] = v17;
  v18 = [v15 allKeys];
  v35[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  v20 = [v19 na_arrayByFlattening];
  v21 = [v16 setWithArray:v20];

  v22 = [(HFSetDiff *)self mutableCopy];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __44__HFSetDiff_diffByMergingDiff_keyGenerator___block_invoke;
  v30[3] = &unk_277E016D0;
  v31 = v11;
  v32 = v15;
  v33 = v6;
  v34 = v22;
  v23 = v22;
  v24 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HFSetDiff *)v5 fromSet];
      v7 = [(HFSetDiff *)self fromSet];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(HFSetDiff *)v5 fromSet];
        v9 = [(HFSetDiff *)self fromSet];
        v10 = [v8 isEqual:v9];
      }

      v11 = [(HFSetDiff *)v5 toSet];
      v12 = [(HFSetDiff *)self toSet];
      if (v11 != v12)
      {
        v13 = [(HFSetDiff *)v5 toSet];
        v14 = [(HFSetDiff *)self toSet];
        v10 &= [v13 isEqual:v14];
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HFMutableSetDiff alloc];
  v16 = [(HFSetDiff *)self fromSet];
  v5 = [v16 copy];
  v6 = [(HFSetDiff *)self toSet];
  v7 = [v6 mutableCopy];
  v8 = [(HFSetDiff *)self additions];
  v9 = [v8 mutableCopy];
  v10 = [(HFSetDiff *)self deletions];
  v11 = [v10 mutableCopy];
  v12 = [(HFSetDiff *)self updates];
  v13 = [v12 mutableCopy];
  v14 = [(HFSetDiff *)v4 _initWithFromSet:v5 toSet:v7 additions:v9 deletions:v11 updates:v13];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HFSetDiff *)self fromSet];
  v5 = [(HFSetDiff *)self toSet];
  v6 = [(HFSetDiff *)self additions];
  v7 = [(HFSetDiff *)self deletions];
  v8 = [(HFSetDiff *)self updates];
  v9 = [v3 stringWithFormat:@"From Set: %@\n To Set: %@\n Additions: %@\n Deletions: %@\n Updates:%@", v4, v5, v6, v7, v8];

  return v9;
}

@end