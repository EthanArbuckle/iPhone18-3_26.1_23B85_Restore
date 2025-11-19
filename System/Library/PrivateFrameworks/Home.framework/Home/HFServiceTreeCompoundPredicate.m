@interface HFServiceTreeCompoundPredicate
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFServiceTreeCompoundPredicate)initWithRootServicePredicate:(id)a3 childServicePredicates:(id)a4;
- (NSString)description;
- (id)matchingServicesForRootService:(id)a3;
- (unint64_t)hash;
@end

@implementation HFServiceTreeCompoundPredicate

- (HFServiceTreeCompoundPredicate)initWithRootServicePredicate:(id)a3 childServicePredicates:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFServiceTreeCompoundPredicate;
  v9 = [(HFServiceTreeCompoundPredicate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootServicePredicate, a3);
    objc_storeStrong(&v10->_childServicePredicates, a4);
  }

  return v10;
}

- (id)matchingServicesForRootService:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFServiceTreeCompoundPredicate *)self rootServicePredicate];
  v6 = [v5 matchingServicesForRootService:v4];
  v7 = [v6 mutableCopy];

  if ([v7 count])
  {
    v21 = v4;
    v23 = [v4 hf_childServices];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(HFServiceTreeCompoundPredicate *)self childServicePredicates];
    v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = v23;
          v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v25;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [v12 matchingServicesForRootService:*(*(&v24 + 1) + 8 * j)];
                [v7 unionSet:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v15);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v4 = v21;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFServiceTreeCompoundPredicate *)self rootServicePredicate];
  v5 = [v3 appendObject:v4 withName:@"rootServicePredicate"];

  v6 = [(HFServiceTreeCompoundPredicate *)self childServicePredicates];
  [v3 appendArraySection:v6 withName:@"childServicePredicates" skipIfEmpty:0];

  v7 = [v3 build];

  return v7;
}

+ (NAIdentity)na_identity
{
  if (qword_280E03E48 != -1)
  {
    dispatch_once(&qword_280E03E48, &__block_literal_global_118_2);
  }

  v3 = qword_280E03E50;

  return v3;
}

void __45__HFServiceTreeCompoundPredicate_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_123_2];
  v2 = [v0 appendCharacteristic:&__block_literal_global_126_2];
  v3 = [v0 build];

  v4 = qword_280E03E50;
  qword_280E03E50 = v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end