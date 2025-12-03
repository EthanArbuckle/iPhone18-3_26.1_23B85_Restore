@interface HFMultiStateValueSet
+ (id)binaryValueSetWithCharacteristicMetadata:(id)metadata firstValue:(id)value firstTitle:(id)title secondValue:(id)secondValue secondTitle:(id)secondTitle;
- (BOOL)addValue:(id)value displayResults:(id)results addOnlyIfValid:(BOOL)valid;
- (BOOL)isEqual:(id)equal;
- (HFMultiStateValueSet)init;
- (HFMultiStateValueSet)initWithCharacteristicMetadata:(id)metadata;
- (NSArray)sortedValues;
- (NSSet)allValues;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayResultsForValue:(id)value;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)addValuesFromArray:(id)array displayResultsGenerator:(id)generator;
- (void)minusSet:(id)set;
- (void)removeValue:(id)value;
- (void)removeValuesFromArray:(id)array;
- (void)unionSet:(id)set displayResultsGenerator:(id)generator;
@end

@implementation HFMultiStateValueSet

+ (id)binaryValueSetWithCharacteristicMetadata:(id)metadata firstValue:(id)value firstTitle:(id)title secondValue:(id)secondValue secondTitle:(id)secondTitle
{
  v30[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  titleCopy = title;
  secondValueCopy = secondValue;
  secondTitleCopy = secondTitle;
  if (metadata)
  {
    metadataCopy = metadata;
    v16 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:metadataCopy];

    v29 = @"title";
    v30[0] = titleCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [(HFMultiStateValueSet *)v16 addValue:valueCopy displayResults:v17];

    v27 = @"title";
    v28 = secondTitleCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [(HFMultiStateValueSet *)v16 addValue:secondValueCopy displayResults:v18];

    allValues = [(HFMultiStateValueSet *)v16 allValues];
    v20 = [allValues count];

    if (v20 == 2)
    {
      v26[0] = valueCopy;
      v26[1] = secondValueCopy;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      v22 = [HFUtilities comparatorWithSortedObjects:v21];
      [(HFMultiStateValueSet *)v16 setValueComparator:v22];

      v23 = v16;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (HFMultiStateValueSet)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCharacteristicMetadata_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFMultiStateControlItem.m" lineNumber:112 description:{@"%s is unavailable; use %@ instead", "-[HFMultiStateValueSet init]", v5}];

  return 0;
}

- (HFMultiStateValueSet)initWithCharacteristicMetadata:(id)metadata
{
  metadataCopy = metadata;
  v11.receiver = self;
  v11.super_class = HFMultiStateValueSet;
  v6 = [(HFMultiStateValueSet *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristicMetadata, metadata);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    displayResultsByValue = v7->_displayResultsByValue;
    v7->_displayResultsByValue = dictionary;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  characteristicMetadata = [(HFMultiStateValueSet *)self characteristicMetadata];
  v6 = [v4 initWithCharacteristicMetadata:characteristicMetadata];

  displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
  v8 = [displayResultsByValue mutableCopy];
  v9 = v6[3];
  v6[3] = v8;

  valueComparator = [(HFMultiStateValueSet *)self valueComparator];
  [v6 setValueComparator:valueComparator];

  return v6;
}

- (NSSet)allValues
{
  v2 = MEMORY[0x277CBEB98];
  displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
  allKeys = [displayResultsByValue allKeys];
  v5 = [v2 setWithArray:allKeys];

  return v5;
}

- (NSArray)sortedValues
{
  allValues = [(HFMultiStateValueSet *)self allValues];
  allObjects = [allValues allObjects];

  valueComparator = [(HFMultiStateValueSet *)self valueComparator];
  if (valueComparator)
  {
    valueComparator2 = [(HFMultiStateValueSet *)self valueComparator];
    v7 = [allObjects sortedArrayUsingComparator:valueComparator2];
  }

  else
  {
    v7 = allObjects;
  }

  return v7;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  sortedValues = [(HFMultiStateValueSet *)self sortedValues];
  v9 = [sortedValues countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (unint64_t)count
{
  displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
  v3 = [displayResultsByValue count];

  return v3;
}

- (id)displayResultsForValue:(id)value
{
  valueCopy = value;
  displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
  v6 = [displayResultsByValue objectForKeyedSubscript:valueCopy];

  return v6;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  sortedValues = [(HFMultiStateValueSet *)self sortedValues];
  v5 = [sortedValues objectAtIndexedSubscript:subscript];

  return v5;
}

- (BOOL)addValue:(id)value displayResults:(id)results addOnlyIfValid:(BOOL)valid
{
  validCopy = valid;
  valueCopy = value;
  resultsCopy = results;
  v11 = resultsCopy;
  if (valueCopy)
  {
    if (resultsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFMultiStateControlItem.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFMultiStateControlItem.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"displayResults"}];

LABEL_3:
  displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
  v13 = [displayResultsByValue objectForKeyedSubscript:valueCopy];

  if (v13)
  {
    NSLog(&cfstr_ValueAlreadyEx.isa, valueCopy, self);
  }

  if (!validCopy)
  {
    goto LABEL_8;
  }

  characteristicMetadata = [(HFMultiStateValueSet *)self characteristicMetadata];
  if (!characteristicMetadata)
  {
    goto LABEL_8;
  }

  v15 = characteristicMetadata;
  characteristicMetadata2 = [(HFMultiStateValueSet *)self characteristicMetadata];
  v17 = [characteristicMetadata2 hf_isValidValue:valueCopy];

  if (!v17)
  {
    v19 = 0;
  }

  else
  {
LABEL_8:
    displayResultsByValue2 = [(HFMultiStateValueSet *)self displayResultsByValue];
    [displayResultsByValue2 setObject:v11 forKeyedSubscript:valueCopy];

    v19 = 1;
  }

  return v19;
}

- (void)removeValue:(id)value
{
  valueCopy = value;
  displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
  v5 = [displayResultsByValue objectForKeyedSubscript:valueCopy];

  if (!v5)
  {
    NSLog(&cfstr_ValueDoesNotEx.isa, valueCopy, self);
  }

  displayResultsByValue2 = [(HFMultiStateValueSet *)self displayResultsByValue];
  [displayResultsByValue2 removeObjectForKey:valueCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
    displayResultsByValue2 = [equalCopy displayResultsByValue];
    v7 = [displayResultsByValue isEqual:displayResultsByValue2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addValuesFromArray:(id)array displayResultsGenerator:(id)generator
{
  generatorCopy = generator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HFMultiStateValueSet_addValuesFromArray_displayResultsGenerator___block_invoke;
  v8[3] = &unk_277DFA828;
  v8[4] = self;
  v9 = generatorCopy;
  v7 = generatorCopy;
  [array enumerateObjectsUsingBlock:v8];
}

void __67__HFMultiStateValueSet_addValuesFromArray_displayResultsGenerator___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) displayResultsForValue:?];

  if (!v3)
  {
    v4 = v8;
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = (*(v5 + 16))(v5, v8);
      v4 = v8;
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x277CBEC10];
    }

    [*(a1 + 32) addValue:v4 displayResults:v7];
  }
}

- (void)removeValuesFromArray:(id)array
{
  arrayCopy = array;
  displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
  [displayResultsByValue removeObjectsForKeys:arrayCopy];
}

- (void)unionSet:(id)set displayResultsGenerator:(id)generator
{
  generatorCopy = generator;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HFMultiStateValueSet_unionSet_displayResultsGenerator___block_invoke;
  v8[3] = &unk_277DFA850;
  v8[4] = self;
  v9 = generatorCopy;
  v7 = generatorCopy;
  [set enumerateObjectsUsingBlock:v8];
}

void __57__HFMultiStateValueSet_unionSet_displayResultsGenerator___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) displayResultsForValue:?];

  if (!v3)
  {
    v4 = v8;
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = (*(v5 + 16))(v5, v8);
      v4 = v8;
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x277CBEC10];
    }

    [*(a1 + 32) addValue:v4 displayResults:v7];
  }
}

- (void)minusSet:(id)set
{
  allObjects = [set allObjects];
  [(HFMultiStateValueSet *)self removeValuesFromArray:allObjects];
}

- (unint64_t)hash
{
  displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
  v3 = [displayResultsByValue hash];

  return v3;
}

- (id)description
{
  displayResultsByValue = [(HFMultiStateValueSet *)self displayResultsByValue];
  v3 = [displayResultsByValue description];

  return v3;
}

@end