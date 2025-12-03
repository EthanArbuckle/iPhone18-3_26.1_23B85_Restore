@interface HFServiceTreeCompoundPredicate
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFServiceTreeCompoundPredicate)initWithRootServicePredicate:(id)predicate childServicePredicates:(id)predicates;
- (NSString)description;
- (id)matchingServicesForRootService:(id)service;
- (unint64_t)hash;
@end

@implementation HFServiceTreeCompoundPredicate

- (HFServiceTreeCompoundPredicate)initWithRootServicePredicate:(id)predicate childServicePredicates:(id)predicates
{
  predicateCopy = predicate;
  predicatesCopy = predicates;
  v12.receiver = self;
  v12.super_class = HFServiceTreeCompoundPredicate;
  v9 = [(HFServiceTreeCompoundPredicate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rootServicePredicate, predicate);
    objc_storeStrong(&v10->_childServicePredicates, predicates);
  }

  return v10;
}

- (id)matchingServicesForRootService:(id)service
{
  v34 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  rootServicePredicate = [(HFServiceTreeCompoundPredicate *)self rootServicePredicate];
  v6 = [rootServicePredicate matchingServicesForRootService:serviceCopy];
  v7 = [v6 mutableCopy];

  if ([v7 count])
  {
    v21 = serviceCopy;
    hf_childServices = [serviceCopy hf_childServices];
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
          v13 = hf_childServices;
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

    serviceCopy = v21;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  rootServicePredicate = [(HFServiceTreeCompoundPredicate *)self rootServicePredicate];
  v5 = [v3 appendObject:rootServicePredicate withName:@"rootServicePredicate"];

  childServicePredicates = [(HFServiceTreeCompoundPredicate *)self childServicePredicates];
  [v3 appendArraySection:childServicePredicates withName:@"childServicePredicates" skipIfEmpty:0];

  build = [v3 build];

  return build;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

@end