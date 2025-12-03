@interface HFMultiStateControlItem
+ (id)na_identity;
- (HFMultiStateControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFMultiStateControlItem)initWithValueSource:(id)source characteristicType:(id)type possibleValueSet:(id)set displayResults:(id)results;
- (HFMultiStateControlItem)initWithValueSource:(id)source multiStateCharacteristicType:(id)type allCharacteristicOptions:(id)options possibleValueSet:(id)set displayResults:(id)results;
- (id)characteristicValuesForValue:(id)value;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)valueForCharacteristicValues:(id)values;
@end

@implementation HFMultiStateControlItem

+ (id)na_identity
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__HFMultiStateControlItem_na_identity__block_invoke;
  v4[3] = &__block_descriptor_40_e5__8__0l;
  v4[4] = self;
  v2 = __38__HFMultiStateControlItem_na_identity__block_invoke(v4);

  return v2;
}

id __38__HFMultiStateControlItem_na_identity__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HFMultiStateControlItem_na_identity__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (_MergedGlobals_1_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1_1, block);
  }

  v1 = qword_280E02718;

  return v1;
}

void __38__HFMultiStateControlItem_na_identity__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D2C908];
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___HFMultiStateControlItem;
  v2 = objc_msgSendSuper2(&v7, sel_na_identity);
  v3 = [v1 builderWithIdentity:v2];
  v4 = [v3 appendCharacteristic:&__block_literal_global_98 withRole:3 comparatorBlock:0 hashBlock:&__block_literal_global_4_4];
  v5 = [v4 build];
  v6 = qword_280E02718;
  qword_280E02718 = v5;
}

id __38__HFMultiStateControlItem_na_identity__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 possibleValueSet];
  v3 = [v2 allValues];

  return v3;
}

uint64_t __38__HFMultiStateControlItem_na_identity__block_invoke_4(uint64_t a1, void *a2)
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

- (HFMultiStateControlItem)initWithValueSource:(id)source characteristicType:(id)type possibleValueSet:(id)set displayResults:(id)results
{
  v10 = MEMORY[0x277CBEB98];
  resultsCopy = results;
  setCopy = set;
  typeCopy = type;
  sourceCopy = source;
  v15 = [v10 setWithObject:typeCopy];
  v16 = [HFControlItemCharacteristicOptions optionsWithReadWriteCharacteristicTypes:v15];

  v17 = [(HFMultiStateControlItem *)self initWithValueSource:sourceCopy multiStateCharacteristicType:typeCopy allCharacteristicOptions:v16 possibleValueSet:setCopy displayResults:resultsCopy];
  return v17;
}

- (HFMultiStateControlItem)initWithValueSource:(id)source multiStateCharacteristicType:(id)type allCharacteristicOptions:(id)options possibleValueSet:(id)set displayResults:(id)results
{
  typeCopy = type;
  setCopy = set;
  v20.receiver = self;
  v20.super_class = HFMultiStateControlItem;
  v14 = [(HFControlItem *)&v20 initWithValueSource:source characteristicOptions:options displayResults:results];
  if (v14)
  {
    v15 = [setCopy copy];
    possibleValueSet = v14->_possibleValueSet;
    v14->_possibleValueSet = v15;

    v17 = [typeCopy copy];
    multiStateCharacteristicType = v14->_multiStateCharacteristicType;
    v14->_multiStateCharacteristicType = v17;
  }

  return v14;
}

- (HFMultiStateControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_characteristicType_possibleValueSet_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFMultiStateControlItem.m" lineNumber:57 description:{@"%s is unavailable; use %@ instead", "-[HFMultiStateControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  sourceCopy = source;
  v6 = objc_alloc(objc_opt_class());
  multiStateCharacteristicType = [(HFMultiStateControlItem *)self multiStateCharacteristicType];
  possibleValueSet = [(HFMultiStateControlItem *)self possibleValueSet];
  displayResults = [(HFControlItem *)self displayResults];
  v10 = [v6 initWithValueSource:sourceCopy characteristicType:multiStateCharacteristicType possibleValueSet:possibleValueSet displayResults:displayResults];

  [v10 copyLatestResultsFromItem:self];
  return v10;
}

- (id)valueForCharacteristicValues:(id)values
{
  valuesCopy = values;
  multiStateCharacteristicType = [(HFMultiStateControlItem *)self multiStateCharacteristicType];
  v6 = [valuesCopy objectForKeyedSubscript:multiStateCharacteristicType];

  return v6;
}

- (id)characteristicValuesForValue:(id)value
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (value)
  {
    valueCopy = value;
    multiStateCharacteristicType = [(HFMultiStateControlItem *)self multiStateCharacteristicType];
    v10 = multiStateCharacteristicType;
    v11[0] = valueCopy;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

    v7 = [(HFControlItem *)self normalizedCharacteristicValuesForValues:v6];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end