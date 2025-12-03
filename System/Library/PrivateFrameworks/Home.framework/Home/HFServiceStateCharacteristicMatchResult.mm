@interface HFServiceStateCharacteristicMatchResult
+ (NAIdentity)na_identity;
+ (id)matchResultByMergingResults:(id)results;
- (BOOL)isEqual:(id)equal;
- (HFServiceStateCharacteristicMatchResult)init;
- (HFServiceStateCharacteristicMatchResult)initWithServices:(id)services characteristics:(id)characteristics;
- (HFServiceStateCharacteristicMatchResult)initWithServices:(id)services characteristicsByServiceUUID:(id)d;
- (NSDictionary)servicesByUUID;
- (NSSet)allCharacteristics;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HFServiceStateCharacteristicMatchResult

- (HFServiceStateCharacteristicMatchResult)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(HFServiceStateCharacteristicMatchResult *)self initWithServices:v3 characteristicsByServiceUUID:MEMORY[0x277CBEC10]];

  return v4;
}

- (HFServiceStateCharacteristicMatchResult)initWithServices:(id)services characteristics:(id)characteristics
{
  servicesCopy = services;
  v7 = [characteristics na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_146_1];
  v8 = [(HFServiceStateCharacteristicMatchResult *)self initWithServices:servicesCopy characteristicsByServiceUUID:v7];

  return v8;
}

id __76__HFServiceStateCharacteristicMatchResult_initWithServices_characteristics___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (HFServiceStateCharacteristicMatchResult)initWithServices:(id)services characteristicsByServiceUUID:(id)d
{
  servicesCopy = services;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = HFServiceStateCharacteristicMatchResult;
  v9 = [(HFServiceStateCharacteristicMatchResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_services, services);
    objc_storeStrong(&v10->_characteristicsByServiceUUID, d);
  }

  return v10;
}

- (NSDictionary)servicesByUUID
{
  servicesByUUID = self->_servicesByUUID;
  if (!servicesByUUID)
  {
    services = [(HFServiceStateCharacteristicMatchResult *)self services];
    v5 = [services na_dictionaryWithKeyGenerator:&__block_literal_global_150_5];
    v6 = self->_servicesByUUID;
    self->_servicesByUUID = v5;

    servicesByUUID = self->_servicesByUUID;
  }

  return servicesByUUID;
}

- (NSSet)allCharacteristics
{
  allCharacteristics = self->_allCharacteristics;
  if (!allCharacteristics)
  {
    v4 = MEMORY[0x277CBEB98];
    characteristicsByServiceUUID = [(HFServiceStateCharacteristicMatchResult *)self characteristicsByServiceUUID];
    allValues = [characteristicsByServiceUUID allValues];
    v7 = [allValues na_flatMap:&__block_literal_global_153_2];
    v8 = [v4 setWithArray:v7];
    v9 = self->_allCharacteristics;
    self->_allCharacteristics = v8;

    allCharacteristics = self->_allCharacteristics;
  }

  return allCharacteristics;
}

+ (id)matchResultByMergingResults:(id)results
{
  v24 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = resultsCopy;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        services = [v10 services];
        [v4 unionSet:services];

        characteristicsByServiceUUID = [v10 characteristicsByServiceUUID];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __71__HFServiceStateCharacteristicMatchResult_matchResultByMergingResults___block_invoke;
        v17[3] = &unk_277E03118;
        v18 = v5;
        [characteristicsByServiceUUID enumerateKeysAndObjectsUsingBlock:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [[HFServiceStateCharacteristicMatchResult alloc] initWithServices:v4 characteristicsByServiceUUID:v5];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __71__HFServiceStateCharacteristicMatchResult_matchResultByMergingResults___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 na_objectForKey:a2 withDefaultValue:&__block_literal_global_157_0];
  [v6 unionSet:v5];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  characteristicsByServiceUUID = [(HFServiceStateCharacteristicMatchResult *)self characteristicsByServiceUUID];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __54__HFServiceStateCharacteristicMatchResult_description__block_invoke;
  v11 = &unk_277E03140;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  [characteristicsByServiceUUID enumerateKeysAndObjectsUsingBlock:&v8];

  build = [v5 build];

  return build;
}

void __54__HFServiceStateCharacteristicMatchResult_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v11 = [a3 allObjects];
  v7 = [v11 na_map:&__block_literal_global_162_1];
  v8 = [*(a1 + 40) servicesByUUID];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v9 hf_prettyDescription];
  [v5 appendArraySection:v7 withName:v10 skipIfEmpty:0];
}

+ (NAIdentity)na_identity
{
  if (qword_280E03E58 != -1)
  {
    dispatch_once(&qword_280E03E58, &__block_literal_global_166_2);
  }

  v3 = qword_280E03E60;

  return v3;
}

void __54__HFServiceStateCharacteristicMatchResult_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_171_1];
  v2 = [v0 appendCharacteristic:&__block_literal_global_174_2];
  v3 = [v0 build];

  v4 = qword_280E03E60;
  qword_280E03E60 = v3;
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