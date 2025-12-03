@interface HRECharacteristicActionMap
+ (id)characteristicActionMap:(id)map;
+ (id)conditonalCharacteristicActionMap:(id)map condition:(id)condition;
+ (id)emptyMap;
- (HRECharacteristicActionMap)initWithMap:(id)map condition:(id)condition;
- (id)copyWithZone:(_NSZone *)zone;
- (id)flattenedMapEvaluatedForObject:(id)object;
- (id)mergeWithActionMaps:(id)maps;
@end

@implementation HRECharacteristicActionMap

- (HRECharacteristicActionMap)initWithMap:(id)map condition:(id)condition
{
  mapCopy = map;
  v11.receiver = self;
  v11.super_class = HRECharacteristicActionMap;
  v7 = [(HREActionMap *)&v11 initWithCondition:condition childMaps:0];
  if (v7)
  {
    v8 = [mapCopy mutableCopy];
    characteristicTypeValues = v7->_characteristicTypeValues;
    v7->_characteristicTypeValues = v8;
  }

  return v7;
}

+ (id)emptyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HRECharacteristicActionMap_emptyMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_27F5F97F0 != -1)
  {
    dispatch_once(&qword_27F5F97F0, block);
  }

  v2 = _MergedGlobals_23;

  return v2;
}

uint64_t __38__HRECharacteristicActionMap_emptyMap__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  _MergedGlobals_23 = [v1 initWithMap:MEMORY[0x277CBEC10] condition:0];

  return MEMORY[0x2821F96F8]();
}

+ (id)characteristicActionMap:(id)map
{
  mapCopy = map;
  v4 = [[HRECharacteristicActionMap alloc] initWithMap:mapCopy condition:0];

  return v4;
}

+ (id)conditonalCharacteristicActionMap:(id)map condition:(id)condition
{
  conditionCopy = condition;
  mapCopy = map;
  v7 = [[HRECharacteristicActionMap alloc] initWithMap:mapCopy condition:conditionCopy];

  return v7;
}

- (id)mergeWithActionMaps:(id)maps
{
  mapsCopy = maps;
  if ([mapsCopy count])
  {
    v5 = [mapsCopy na_filter:&__block_literal_global_5];

    if ([v5 na_all:&__block_literal_global_4])
    {
      v6 = +[HREActionMap emptyMap];
      if ([(HRECharacteristicActionMap *)self isEqual:v6])
      {
        v7 = [HRECharacteristicActionMap alloc];
        v8 = [(HRECharacteristicActionMap *)v7 initWithMap:MEMORY[0x277CBEC10] condition:0];
      }

      else
      {
        v8 = [(HRECharacteristicActionMap *)self copy];
      }

      v10 = v8;

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __50__HRECharacteristicActionMap_mergeWithActionMaps___block_invoke_3;
      v12[3] = &unk_279776D78;
      selfCopy2 = v10;
      v13 = selfCopy2;
      [v5 na_each:v12];
    }

    else
    {
      NSLog(&cfstr_CannotMergeMap.isa, self, v5);
      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = self;
    v5 = mapsCopy;
  }

  return selfCopy2;
}

uint64_t __50__HRECharacteristicActionMap_mergeWithActionMaps___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HREActionMap emptyMap];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1u;
}

uint64_t __50__HRECharacteristicActionMap_mergeWithActionMaps___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __50__HRECharacteristicActionMap_mergeWithActionMaps___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 characteristicTypeValues];
  v5 = [v4 allKeys];
  v6 = [v5 mutableCopy];

  v7 = [*(a1 + 32) characteristicTypeValues];
  v8 = [v7 allKeys];
  [v6 removeObjectsInArray:v8];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __50__HRECharacteristicActionMap_mergeWithActionMaps___block_invoke_4;
  v15 = &unk_279776D50;
  v16 = *(a1 + 32);
  v17 = v3;
  v9 = v3;
  [v6 na_each:&v12];
  v10 = [*(a1 + 32) childMaps];
  v11 = [v9 childMaps];
  [v10 addObjectsFromArray:v11];
}

void __50__HRECharacteristicActionMap_mergeWithActionMaps___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v7 = [v3 characteristicTypeValues];
  v5 = [v7 objectForKeyedSubscript:v4];
  v6 = [*(a1 + 32) characteristicTypeValues];
  [v6 setObject:v5 forKeyedSubscript:v4];
}

- (id)flattenedMapEvaluatedForObject:(id)object
{
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = HRECharacteristicActionMap;
  v5 = [(HREActionMap *)&v10 flattenedMapEvaluatedForObject:objectCopy];
  if (v5)
  {
    objc_opt_class();
    v6 = v5;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      goto LABEL_8;
    }

    NSLog(&cfstr_SuperFlattened.isa, self, objectCopy, v6);
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = HRECharacteristicActionMap;
  v4 = [(HREActionMap *)&v12 copyWithZone:zone];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  characteristicTypeValues = [(HRECharacteristicActionMap *)self characteristicTypeValues];
  v9 = [characteristicTypeValues mutableCopy];
  if (v9)
  {
    [v7 setCharacteristicTypeValues:v9];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [v7 setCharacteristicTypeValues:dictionary];
  }

  return v5;
}

@end