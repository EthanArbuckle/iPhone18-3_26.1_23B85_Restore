@interface HFControlItemCharacteristicOptions
+ (HFControlItemCharacteristicOptions)optionsWithReadWriteCharacteristicTypes:(id)types;
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFControlItemCharacteristicOptions)initWithCharacteristicTypesByUsage:(id)usage;
- (NSString)description;
- (id)_characteristicTypesForUsagesPassingTest:(id)test;
- (id)_optionsByReducingWithOptions:(id)options reducer:(id)reducer;
- (id)characteristicTypesForUsage:(unint64_t)usage;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)optionsByAddingCharacteristicTypes:(id)types forUsage:(unint64_t)usage;
- (unint64_t)hash;
@end

@implementation HFControlItemCharacteristicOptions

+ (HFControlItemCharacteristicOptions)optionsWithReadWriteCharacteristicTypes:(id)types
{
  v11[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v5 = [self alloc];
  v10 = &unk_282523B80;
  v11[0] = typesCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithCharacteristicTypesByUsage:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HFControlItemCharacteristicOptions)initWithCharacteristicTypesByUsage:(id)usage
{
  usageCopy = usage;
  v9.receiver = self;
  v9.super_class = HFControlItemCharacteristicOptions;
  v5 = [(HFControlItemCharacteristicOptions *)&v9 init];
  if (v5)
  {
    v6 = [usageCopy copy];
    characteristicTypesByUsage = v5->_characteristicTypesByUsage;
    v5->_characteristicTypesByUsage = v6;
  }

  return v5;
}

- (id)_characteristicTypesForUsagesPassingTest:(id)test
{
  testCopy = test;
  characteristicTypesByUsage = [(HFControlItemCharacteristicOptions *)self characteristicTypesByUsage];
  v6 = [MEMORY[0x277CBEB58] set];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HFControlItemCharacteristicOptions__characteristicTypesForUsagesPassingTest___block_invoke;
  v10[3] = &unk_277DF79A8;
  v11 = testCopy;
  v7 = testCopy;
  v8 = [characteristicTypesByUsage na_reduceWithInitialValue:v6 reducer:v10];

  return v8;
}

id __79__HFControlItemCharacteristicOptions__characteristicTypesForUsagesPassingTest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((*(*(a1 + 32) + 16))(*(a1 + 32), [a2 unsignedIntegerValue]))
  {
    [v8 unionSet:v7];
  }

  return v8;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  unsignedIntegerValue = [subscript unsignedIntegerValue];

  return [(HFControlItemCharacteristicOptions *)self characteristicTypesForUsage:unsignedIntegerValue];
}

- (id)characteristicTypesForUsage:(unint64_t)usage
{
  characteristicTypesByUsage = [(HFControlItemCharacteristicOptions *)self characteristicTypesByUsage];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:usage];
  v6 = [characteristicTypesByUsage objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v9 = v8;

  return v9;
}

- (id)optionsByAddingCharacteristicTypes:(id)types forUsage:(unint64_t)usage
{
  v15[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v7 = [HFControlItemCharacteristicOptions alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:usage];
  v14 = v8;
  v15[0] = typesCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];

  v10 = [(HFControlItemCharacteristicOptions *)v7 initWithCharacteristicTypesByUsage:v9];
  v11 = [(HFControlItemCharacteristicOptions *)self optionsByAddingCharacteristicOptions:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_optionsByReducingWithOptions:(id)options reducer:(id)reducer
{
  optionsCopy = options;
  reducerCopy = reducer;
  if (optionsCopy && ([optionsCopy characteristicTypesByUsage], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    characteristicTypesByUsage = [(HFControlItemCharacteristicOptions *)self characteristicTypesByUsage];
    v11 = [characteristicTypesByUsage na_dictionaryByMappingValues:&__block_literal_global_237];
    v12 = [v11 mutableCopy];

    characteristicTypesByUsage2 = [optionsCopy characteristicTypesByUsage];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __76__HFControlItemCharacteristicOptions__optionsByReducingWithOptions_reducer___block_invoke_2;
    v21 = &unk_277DF7A10;
    v22 = v12;
    v23 = reducerCopy;
    v14 = v12;
    [characteristicTypesByUsage2 enumerateKeysAndObjectsUsingBlock:&v18];

    v15 = objc_alloc(objc_opt_class());
    selfCopy = [v15 initWithCharacteristicTypesByUsage:{v14, v18, v19, v20, v21}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

id __76__HFControlItemCharacteristicOptions__optionsByReducingWithOptions_reducer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 mutableCopy];

  return v3;
}

void __76__HFControlItemCharacteristicOptions__optionsByReducingWithOptions_reducer___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 na_objectForKey:a2 withDefaultValue:&__block_literal_global_240];
  (*(v4 + 16))(v4, v7, v6);
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  activeMultilinePrefix = [v3 activeMultilinePrefix];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49__HFControlItemCharacteristicOptions_description__block_invoke;
  v11 = &unk_277DF3370;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [v5 appendBodySectionWithName:@"characteristicsByUsage" multilinePrefix:activeMultilinePrefix block:&v8];

  build = [v5 build];

  return build;
}

void __49__HFControlItemCharacteristicOptions_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) characteristicTypesByUsage];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__HFControlItemCharacteristicOptions_description__block_invoke_2;
  v3[3] = &unk_277DF7A38;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __49__HFControlItemCharacteristicOptions_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v9 = [a3 allObjects];
  v6 = [v9 na_map:&__block_literal_global_247_0];
  v7 = [v5 unsignedIntegerValue];

  if (v7 > 2)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = off_277DF7A78[v7];
  }

  [v4 appendArraySection:v6 withName:v8 skipIfEmpty:1];
}

id __49__HFControlItemCharacteristicOptions_description__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = MEMORY[0x277CD1970];
  v4 = a2;
  v5 = [v3 localizedDescriptionForCharacteristicType:v4];
  v6 = [v2 stringWithFormat:@"%@ (%@)", v5, v4];

  return v6;
}

+ (NAIdentity)na_identity
{
  if (qword_280E023B0 != -1)
  {
    dispatch_once(&qword_280E023B0, &__block_literal_global_255);
  }

  v3 = qword_280E023B8;

  return v3;
}

void __49__HFControlItemCharacteristicOptions_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_260 withRole:3 comparatorBlock:0 hashBlock:&__block_literal_global_262];
  v2 = [v0 build];

  v3 = qword_280E023B8;
  qword_280E023B8 = v2;
}

uint64_t __49__HFControlItemCharacteristicOptions_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v6 = 0;
  }

  v9 = [v6 computeHashFromContents];
  return v9;
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