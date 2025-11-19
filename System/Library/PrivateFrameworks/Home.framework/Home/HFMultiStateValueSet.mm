@interface HFMultiStateValueSet
+ (id)binaryValueSetWithCharacteristicMetadata:(id)a3 firstValue:(id)a4 firstTitle:(id)a5 secondValue:(id)a6 secondTitle:(id)a7;
- (BOOL)addValue:(id)a3 displayResults:(id)a4 addOnlyIfValid:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (HFMultiStateValueSet)init;
- (HFMultiStateValueSet)initWithCharacteristicMetadata:(id)a3;
- (NSArray)sortedValues;
- (NSSet)allValues;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)displayResultsForValue:(id)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)addValuesFromArray:(id)a3 displayResultsGenerator:(id)a4;
- (void)minusSet:(id)a3;
- (void)removeValue:(id)a3;
- (void)removeValuesFromArray:(id)a3;
- (void)unionSet:(id)a3 displayResultsGenerator:(id)a4;
@end

@implementation HFMultiStateValueSet

+ (id)binaryValueSetWithCharacteristicMetadata:(id)a3 firstValue:(id)a4 firstTitle:(id)a5 secondValue:(id)a6 secondTitle:(id)a7
{
  v30[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (a3)
  {
    v15 = a3;
    v16 = [[HFMultiStateValueSet alloc] initWithCharacteristicMetadata:v15];

    v29 = @"title";
    v30[0] = v12;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [(HFMultiStateValueSet *)v16 addValue:v11 displayResults:v17];

    v27 = @"title";
    v28 = v14;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [(HFMultiStateValueSet *)v16 addValue:v13 displayResults:v18];

    v19 = [(HFMultiStateValueSet *)v16 allValues];
    v20 = [v19 count];

    if (v20 == 2)
    {
      v26[0] = v11;
      v26[1] = v13;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCharacteristicMetadata_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFMultiStateControlItem.m" lineNumber:112 description:{@"%s is unavailable; use %@ instead", "-[HFMultiStateValueSet init]", v5}];

  return 0;
}

- (HFMultiStateValueSet)initWithCharacteristicMetadata:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFMultiStateValueSet;
  v6 = [(HFMultiStateValueSet *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristicMetadata, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    displayResultsByValue = v7->_displayResultsByValue;
    v7->_displayResultsByValue = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HFMultiStateValueSet *)self characteristicMetadata];
  v6 = [v4 initWithCharacteristicMetadata:v5];

  v7 = [(HFMultiStateValueSet *)self displayResultsByValue];
  v8 = [v7 mutableCopy];
  v9 = v6[3];
  v6[3] = v8;

  v10 = [(HFMultiStateValueSet *)self valueComparator];
  [v6 setValueComparator:v10];

  return v6;
}

- (NSSet)allValues
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFMultiStateValueSet *)self displayResultsByValue];
  v4 = [v3 allKeys];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (NSArray)sortedValues
{
  v3 = [(HFMultiStateValueSet *)self allValues];
  v4 = [v3 allObjects];

  v5 = [(HFMultiStateValueSet *)self valueComparator];
  if (v5)
  {
    v6 = [(HFMultiStateValueSet *)self valueComparator];
    v7 = [v4 sortedArrayUsingComparator:v6];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(HFMultiStateValueSet *)self sortedValues];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (unint64_t)count
{
  v2 = [(HFMultiStateValueSet *)self displayResultsByValue];
  v3 = [v2 count];

  return v3;
}

- (id)displayResultsForValue:(id)a3
{
  v4 = a3;
  v5 = [(HFMultiStateValueSet *)self displayResultsByValue];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v4 = [(HFMultiStateValueSet *)self sortedValues];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (BOOL)addValue:(id)a3 displayResults:(id)a4 addOnlyIfValid:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HFMultiStateControlItem.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"HFMultiStateControlItem.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"displayResults"}];

LABEL_3:
  v12 = [(HFMultiStateValueSet *)self displayResultsByValue];
  v13 = [v12 objectForKeyedSubscript:v9];

  if (v13)
  {
    NSLog(&cfstr_ValueAlreadyEx.isa, v9, self);
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v14 = [(HFMultiStateValueSet *)self characteristicMetadata];
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = [(HFMultiStateValueSet *)self characteristicMetadata];
  v17 = [v16 hf_isValidValue:v9];

  if (!v17)
  {
    v19 = 0;
  }

  else
  {
LABEL_8:
    v18 = [(HFMultiStateValueSet *)self displayResultsByValue];
    [v18 setObject:v11 forKeyedSubscript:v9];

    v19 = 1;
  }

  return v19;
}

- (void)removeValue:(id)a3
{
  v7 = a3;
  v4 = [(HFMultiStateValueSet *)self displayResultsByValue];
  v5 = [v4 objectForKeyedSubscript:v7];

  if (!v5)
  {
    NSLog(&cfstr_ValueDoesNotEx.isa, v7, self);
  }

  v6 = [(HFMultiStateValueSet *)self displayResultsByValue];
  [v6 removeObjectForKey:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HFMultiStateValueSet *)self displayResultsByValue];
    v6 = [v4 displayResultsByValue];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addValuesFromArray:(id)a3 displayResultsGenerator:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HFMultiStateValueSet_addValuesFromArray_displayResultsGenerator___block_invoke;
  v8[3] = &unk_277DFA828;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateObjectsUsingBlock:v8];
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

- (void)removeValuesFromArray:(id)a3
{
  v4 = a3;
  v5 = [(HFMultiStateValueSet *)self displayResultsByValue];
  [v5 removeObjectsForKeys:v4];
}

- (void)unionSet:(id)a3 displayResultsGenerator:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HFMultiStateValueSet_unionSet_displayResultsGenerator___block_invoke;
  v8[3] = &unk_277DFA850;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateObjectsUsingBlock:v8];
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

- (void)minusSet:(id)a3
{
  v4 = [a3 allObjects];
  [(HFMultiStateValueSet *)self removeValuesFromArray:v4];
}

- (unint64_t)hash
{
  v2 = [(HFMultiStateValueSet *)self displayResultsByValue];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = [(HFMultiStateValueSet *)self displayResultsByValue];
  v3 = [v2 description];

  return v3;
}

@end