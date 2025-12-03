@interface HFServiceStateRecipe
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFServiceStateRecipe)initWithPredicate:(id)predicate characteristicRecipes:(id)recipes;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)matchResultForServices:(id)services;
- (unint64_t)hash;
@end

@implementation HFServiceStateRecipe

- (HFServiceStateRecipe)initWithPredicate:(id)predicate characteristicRecipes:(id)recipes
{
  predicateCopy = predicate;
  recipesCopy = recipes;
  v12.receiver = self;
  v12.super_class = HFServiceStateRecipe;
  v9 = [(HFServiceStateRecipe *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_predicate, predicate);
    objc_storeStrong(&v10->_characteristicRecipes, recipes);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  predicate = [(HFServiceStateRecipe *)self predicate];
  characteristicRecipes = [(HFServiceStateRecipe *)self characteristicRecipes];
  v7 = [v4 initWithPredicate:predicate characteristicRecipes:characteristicRecipes];

  return v7;
}

- (id)matchResultForServices:(id)services
{
  v36 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v5 = [MEMORY[0x277CBEB58] set];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = servicesCopy;
  v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    selfCopy = self;
    v23 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        predicate = [(HFServiceStateRecipe *)self predicate];
        v9 = [predicate matchingServicesForRootService:v7];

        if ([v9 count])
        {
          v25 = v9;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          characteristicRecipes = [(HFServiceStateRecipe *)self characteristicRecipes];
          v11 = [characteristicRecipes countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v27;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v27 != v13)
                {
                  objc_enumerationMutation(characteristicRecipes);
                }

                v15 = *(*(&v26 + 1) + 8 * j);
                v16 = [MEMORY[0x277CBEB98] setWithObject:v7];
                v17 = [v15 matchResultForServices:v16];

                [v5 addObject:v17];
              }

              v12 = [characteristicRecipes countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v12);
          }

          self = selfCopy;
          v9 = v25;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  v18 = [HFServiceStateCharacteristicMatchResult matchResultByMergingResults:v5];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  predicate = [(HFServiceStateRecipe *)self predicate];
  v5 = [v3 appendObject:predicate withName:@"predicate"];

  characteristicRecipes = [(HFServiceStateRecipe *)self characteristicRecipes];
  allObjects = [characteristicRecipes allObjects];
  [v3 appendArraySection:allObjects withName:@"characteristicRecipes" skipIfEmpty:0];

  build = [v3 build];

  return build;
}

+ (NAIdentity)na_identity
{
  if (qword_280E03E78 != -1)
  {
    dispatch_once(&qword_280E03E78, &__block_literal_global_266);
  }

  v3 = qword_280E03E80;

  return v3;
}

void __35__HFServiceStateRecipe_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_271];
  v2 = [v0 appendCharacteristic:&__block_literal_global_274];
  v3 = [v0 build];

  v4 = qword_280E03E80;
  qword_280E03E80 = v3;
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