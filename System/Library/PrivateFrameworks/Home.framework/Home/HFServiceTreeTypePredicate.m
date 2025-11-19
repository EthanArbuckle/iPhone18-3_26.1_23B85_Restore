@interface HFServiceTreeTypePredicate
+ (NAIdentity)na_identity;
+ (id)anyServiceTypePredicate;
+ (id)anyServiceTypePredicateIncludingChildServices;
- (BOOL)_matchesService:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HFServiceTreeTypePredicate)initWithServiceTypes:(id)a3 serviceSubtypes:(id)a4 includeChildServices:(BOOL)a5;
- (NSString)description;
- (id)matchingServicesForRootService:(id)a3;
- (unint64_t)hash;
@end

@implementation HFServiceTreeTypePredicate

+ (id)anyServiceTypePredicate
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v2 initWithServiceTypes:v3 serviceSubtypes:v4 includeChildServices:0];

  return v5;
}

+ (id)anyServiceTypePredicateIncludingChildServices
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v2 initWithServiceTypes:v3 serviceSubtypes:v4 includeChildServices:1];

  return v5;
}

- (HFServiceTreeTypePredicate)initWithServiceTypes:(id)a3 serviceSubtypes:(id)a4 includeChildServices:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HFServiceTreeTypePredicate;
  v11 = [(HFServiceTreeTypePredicate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceTypes, a3);
    objc_storeStrong(&v12->_serviceSubtypes, a4);
    v12->_includeChildServices = a5;
  }

  return v12;
}

- (BOOL)_matchesService:(id)a3
{
  v4 = a3;
  v5 = [(HFServiceTreeTypePredicate *)self serviceTypes];
  if ([v5 count])
  {
    v6 = [(HFServiceTreeTypePredicate *)self serviceTypes];
    v7 = [v4 serviceType];
    v8 = [v6 containsObject:v7];

    if (!v8)
    {
      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = [(HFServiceTreeTypePredicate *)self serviceSubtypes];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(HFServiceTreeTypePredicate *)self serviceSubtypes];
    v13 = [v4 serviceSubtype];
    v9 = [v12 containsObject:v13];
  }

  else
  {
    v9 = 1;
  }

LABEL_8:

  return v9;
}

- (id)matchingServicesForRootService:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HFServiceTreeTypePredicate *)self _matchesService:v4])
  {
    v5 = [MEMORY[0x277CBEB58] setWithObject:v4];
    if ([(HFServiceTreeTypePredicate *)self includeChildServices])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = [v4 hf_childServices];
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [(HFServiceTreeTypePredicate *)self matchingServicesForRootService:*(*(&v14 + 1) + 8 * i)];
            [v5 unionSet:v11];
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFServiceTreeTypePredicate *)self serviceTypes];
  v5 = [v4 allObjects];
  v6 = [v5 na_map:&__block_literal_global_239];
  [v3 appendArraySection:v6 withName:@"serviceTypes" skipIfEmpty:0];

  v7 = [(HFServiceTreeTypePredicate *)self serviceSubtypes];
  v8 = [v7 allObjects];
  [v3 appendArraySection:v8 withName:@"serviceSubtypes" skipIfEmpty:1];

  v9 = [v3 appendBool:-[HFServiceTreeTypePredicate includeChildServices](self withName:"includeChildServices") ifEqualTo:{@"includeChildServices", 1}];
  v10 = [v3 build];

  return v10;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_333 != -1)
  {
    dispatch_once(&_MergedGlobals_333, &__block_literal_global_16_9);
  }

  v3 = qword_280E03E40;

  return v3;
}

void __41__HFServiceTreeTypePredicate_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_23_7];
  v2 = [v0 appendCharacteristic:&__block_literal_global_25_16];
  v3 = [v0 appendCharacteristic:&__block_literal_global_28_8];
  v4 = [v0 build];

  v5 = qword_280E03E40;
  qword_280E03E40 = v4;
}

uint64_t __41__HFServiceTreeTypePredicate_na_identity__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 includeChildServices];

  return [v2 numberWithBool:v3];
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