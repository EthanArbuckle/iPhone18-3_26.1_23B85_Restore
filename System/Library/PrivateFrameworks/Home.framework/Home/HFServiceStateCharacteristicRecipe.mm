@interface HFServiceStateCharacteristicRecipe
+ (NAIdentity)na_identity;
+ (id)recipesForRootServiceCharacteristicTypes:(id)types required:(BOOL)required;
- (BOOL)isEqual:(id)equal;
- (HFServiceStateCharacteristicRecipe)initWithCharacteristicType:(id)type servicePredicate:(id)predicate required:(BOOL)required;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)matchResultForServices:(id)services;
- (unint64_t)hash;
@end

@implementation HFServiceStateCharacteristicRecipe

+ (id)recipesForRootServiceCharacteristicTypes:(id)types required:(BOOL)required
{
  v4 = MEMORY[0x277CBEB98];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__HFServiceStateCharacteristicRecipe_recipesForRootServiceCharacteristicTypes_required___block_invoke;
  v8[3] = &__block_descriptor_41_e54___HFServiceStateCharacteristicRecipe_16__0__NSString_8l;
  v8[4] = self;
  requiredCopy = required;
  v5 = [types na_map:v8];
  v6 = [v4 setWithArray:v5];

  return v6;
}

- (HFServiceStateCharacteristicRecipe)initWithCharacteristicType:(id)type servicePredicate:(id)predicate required:(BOOL)required
{
  typeCopy = type;
  predicateCopy = predicate;
  v14.receiver = self;
  v14.super_class = HFServiceStateCharacteristicRecipe;
  v11 = [(HFServiceStateCharacteristicRecipe *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_characteristicType, type);
    objc_storeStrong(&v12->_servicePredicate, predicate);
    v12->_required = required;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  characteristicType = [(HFServiceStateCharacteristicRecipe *)self characteristicType];
  servicePredicate = [(HFServiceStateCharacteristicRecipe *)self servicePredicate];
  v7 = [v4 initWithCharacteristicType:characteristicType servicePredicate:servicePredicate required:{-[HFServiceStateCharacteristicRecipe isRequired](self, "isRequired")}];

  return v7;
}

- (id)matchResultForServices:(id)services
{
  v39 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v24 = [MEMORY[0x277CBEB58] set];
  v5 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = servicesCopy;
  v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v25 = *v34;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        servicePredicate = [(HFServiceStateCharacteristicRecipe *)self servicePredicate];
        v9 = [servicePredicate matchingServicesForRootService:v7];

        if ([v9 count])
        {
          v28 = i;
          [v24 unionSet:v9];
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = v9;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v30;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v30 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v29 + 1) + 8 * j);
                characteristicType = [(HFServiceStateCharacteristicRecipe *)self characteristicType];
                v17 = [v15 hf_characteristicOfType:characteristicType];

                if (v17)
                {
                  uniqueIdentifier = [v15 uniqueIdentifier];
                  v19 = [v5 na_objectForKey:uniqueIdentifier withDefaultValue:&__block_literal_global_205];
                  [v19 addObject:v17];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v12);
          }

          v9 = v27;
          i = v28;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  v20 = [[HFServiceStateCharacteristicMatchResult alloc] initWithServices:v24 characteristicsByServiceUUID:v5];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = MEMORY[0x277CD1970];
  characteristicType = [(HFServiceStateCharacteristicRecipe *)self characteristicType];
  v6 = [v4 localizedDescriptionForCharacteristicType:characteristicType];
  [v3 appendString:v6 withName:@"characteristicType"];

  servicePredicate = [(HFServiceStateCharacteristicRecipe *)self servicePredicate];
  v8 = [v3 appendObject:servicePredicate withName:@"servicePredicate"];

  v9 = [v3 appendBool:-[HFServiceStateCharacteristicRecipe isRequired](self withName:{"isRequired"), @"required"}];
  build = [v3 build];

  return build;
}

+ (NAIdentity)na_identity
{
  if (qword_280E03E68 != -1)
  {
    dispatch_once(&qword_280E03E68, &__block_literal_global_219_1);
  }

  v3 = qword_280E03E70;

  return v3;
}

void __49__HFServiceStateCharacteristicRecipe_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_224_1];
  v2 = [v0 appendCharacteristic:&__block_literal_global_227_3];
  v3 = [v0 appendCharacteristic:&__block_literal_global_230_0];
  v4 = [v0 build];

  v5 = qword_280E03E70;
  qword_280E03E70 = v4;
}

uint64_t __49__HFServiceStateCharacteristicRecipe_na_identity__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isRequired];

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