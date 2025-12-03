@interface HFServiceTreeTypePredicate
+ (NAIdentity)na_identity;
+ (id)anyServiceTypePredicate;
+ (id)anyServiceTypePredicateIncludingChildServices;
- (BOOL)_matchesService:(id)service;
- (BOOL)isEqual:(id)equal;
- (HFServiceTreeTypePredicate)initWithServiceTypes:(id)types serviceSubtypes:(id)subtypes includeChildServices:(BOOL)services;
- (NSString)description;
- (id)matchingServicesForRootService:(id)service;
- (unint64_t)hash;
@end

@implementation HFServiceTreeTypePredicate

+ (id)anyServiceTypePredicate
{
  v2 = [self alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v2 initWithServiceTypes:v3 serviceSubtypes:v4 includeChildServices:0];

  return v5;
}

+ (id)anyServiceTypePredicateIncludingChildServices
{
  v2 = [self alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v2 initWithServiceTypes:v3 serviceSubtypes:v4 includeChildServices:1];

  return v5;
}

- (HFServiceTreeTypePredicate)initWithServiceTypes:(id)types serviceSubtypes:(id)subtypes includeChildServices:(BOOL)services
{
  typesCopy = types;
  subtypesCopy = subtypes;
  v14.receiver = self;
  v14.super_class = HFServiceTreeTypePredicate;
  v11 = [(HFServiceTreeTypePredicate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceTypes, types);
    objc_storeStrong(&v12->_serviceSubtypes, subtypes);
    v12->_includeChildServices = services;
  }

  return v12;
}

- (BOOL)_matchesService:(id)service
{
  serviceCopy = service;
  serviceTypes = [(HFServiceTreeTypePredicate *)self serviceTypes];
  if ([serviceTypes count])
  {
    serviceTypes2 = [(HFServiceTreeTypePredicate *)self serviceTypes];
    serviceType = [serviceCopy serviceType];
    v8 = [serviceTypes2 containsObject:serviceType];

    if (!v8)
    {
      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  serviceSubtypes = [(HFServiceTreeTypePredicate *)self serviceSubtypes];
  v11 = [serviceSubtypes count];

  if (v11)
  {
    serviceSubtypes2 = [(HFServiceTreeTypePredicate *)self serviceSubtypes];
    serviceSubtype = [serviceCopy serviceSubtype];
    v9 = [serviceSubtypes2 containsObject:serviceSubtype];
  }

  else
  {
    v9 = 1;
  }

LABEL_8:

  return v9;
}

- (id)matchingServicesForRootService:(id)service
{
  v19 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  if ([(HFServiceTreeTypePredicate *)self _matchesService:serviceCopy])
  {
    v5 = [MEMORY[0x277CBEB58] setWithObject:serviceCopy];
    if ([(HFServiceTreeTypePredicate *)self includeChildServices])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      hf_childServices = [serviceCopy hf_childServices];
      v7 = [hf_childServices countByEnumeratingWithState:&v14 objects:v18 count:16];
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
              objc_enumerationMutation(hf_childServices);
            }

            v11 = [(HFServiceTreeTypePredicate *)self matchingServicesForRootService:*(*(&v14 + 1) + 8 * i)];
            [v5 unionSet:v11];
          }

          v8 = [hf_childServices countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  serviceTypes = [(HFServiceTreeTypePredicate *)self serviceTypes];
  allObjects = [serviceTypes allObjects];
  v6 = [allObjects na_map:&__block_literal_global_239];
  [v3 appendArraySection:v6 withName:@"serviceTypes" skipIfEmpty:0];

  serviceSubtypes = [(HFServiceTreeTypePredicate *)self serviceSubtypes];
  allObjects2 = [serviceSubtypes allObjects];
  [v3 appendArraySection:allObjects2 withName:@"serviceSubtypes" skipIfEmpty:1];

  v9 = [v3 appendBool:-[HFServiceTreeTypePredicate includeChildServices](self withName:"includeChildServices") ifEqualTo:{@"includeChildServices", 1}];
  build = [v3 build];

  return build;
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