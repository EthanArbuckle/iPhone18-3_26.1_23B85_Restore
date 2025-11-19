@interface HFContainedObjectListDifference
+ (id)containedObjectDifferenceWithKey:(id)a3 objectsA:(id)a4 objectsB:(id)a5 block:(id)a6;
- (BOOL)isASubsetOfB;
- (BOOL)isBSubsetOfA;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilder;
- (id)reevaluateWithBlock:(id)a3;
@end

@implementation HFContainedObjectListDifference

+ (id)containedObjectDifferenceWithKey:(id)a3 objectsA:(id)a4 objectsB:(id)a5 block:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = MEMORY[0x277CBEB38];
  v12 = a5;
  v13 = a4;
  v14 = [v11 dictionary];
  v15 = [v13 na_reduceWithInitialValue:v14 reducer:&__block_literal_global_127];

  v16 = [MEMORY[0x277CBEB38] dictionary];
  v17 = [v12 na_reduceWithInitialValue:v16 reducer:&__block_literal_global_130];

  v18 = MEMORY[0x277CBEB98];
  v19 = [v15 allKeys];
  v20 = [v18 setWithArray:v19];

  v21 = MEMORY[0x277CBEB98];
  v22 = [v17 allKeys];
  v23 = [v21 setWithArray:v22];

  v24 = [v20 setByAddingObjectsFromSet:v23];
  v25 = [MEMORY[0x277CBEB38] dictionary];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __92__HFContainedObjectListDifference_containedObjectDifferenceWithKey_objectsA_objectsB_block___block_invoke_3;
  v35[3] = &unk_277DF4590;
  v26 = v10;
  v38 = v26;
  v27 = v15;
  v36 = v27;
  v28 = v17;
  v37 = v28;
  v29 = [v24 na_reduceWithInitialValue:v25 reducer:v35];

  v30 = [v29 allValues];
  v31 = [v30 na_any:&__block_literal_global_135];

  if (v31)
  {
    v32 = [(HFDifference *)[HFContainedObjectListDifference alloc] initWithKey:v9 priority:2];
    v33 = [v29 allValues];
    [(HFContainedObjectListDifference *)v32 setContainedObjectResults:v33];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

id __92__HFContainedObjectListDifference_containedObjectDifferenceWithKey_objectsA_objectsB_block___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
  [v4 setObject:v6 forKeyedSubscript:v7];

  return v4;
}

id __92__HFContainedObjectListDifference_containedObjectDifferenceWithKey_objectsA_objectsB_block___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "hash")}];
  [v4 setObject:v6 forKeyedSubscript:v7];

  return v4;
}

id __92__HFContainedObjectListDifference_containedObjectDifferenceWithKey_objectsA_objectsB_block___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [*(a1 + 40) objectForKeyedSubscript:v8];
  v11 = (*(v6 + 16))(v6, v9, v10);
  [v5 setObject:v11 forKeyedSubscript:v8];

  return v5;
}

BOOL __92__HFContainedObjectListDifference_containedObjectDifferenceWithKey_objectsA_objectsB_block___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 realDifferences];
  v3 = [v2 count] != 0;

  return v3;
}

HFComparisonResult *__86__HFContainedObjectListDifference_containedObjectDifferenceWithKey_objectsA_objectsB___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 conformsToProtocol:&unk_282531E90])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v5;
  if ([v8 conformsToProtocol:&unk_282531E90])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v4)
  {
    v11 = [v7 compareToObject:v10];
  }

  else
  {
    v11 = [[HFComparisonResult alloc] initWithObjectA:v7 objectB:v10];
  }

  v12 = v11;

  return v12;
}

- (BOOL)isASubsetOfB
{
  isASubsetOfBValue = self->_isASubsetOfBValue;
  if (!isASubsetOfBValue)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v4 = [(HFContainedObjectListDifference *)self containedObjectResults];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__HFContainedObjectListDifference_isASubsetOfB__block_invoke;
    v8[3] = &unk_277DF45F8;
    v8[4] = &v9;
    [v4 na_each:v8];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(v10 + 24)];
    v6 = self->_isASubsetOfBValue;
    self->_isASubsetOfBValue = v5;

    _Block_object_dispose(&v9, 8);
    isASubsetOfBValue = self->_isASubsetOfBValue;
  }

  return [(NSNumber *)isASubsetOfBValue BOOLValue];
}

void __47__HFContainedObjectListDifference_isASubsetOfB__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectA];
  if (v3)
  {
    v4 = v3;
    v5 = [v7 realDifferences];
    v6 = [v5 count];

    if (v6)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

- (BOOL)isBSubsetOfA
{
  isBSubsetOfAValue = self->_isBSubsetOfAValue;
  if (!isBSubsetOfAValue)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v4 = [(HFContainedObjectListDifference *)self containedObjectResults];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__HFContainedObjectListDifference_isBSubsetOfA__block_invoke;
    v8[3] = &unk_277DF45F8;
    v8[4] = &v9;
    [v4 na_each:v8];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(v10 + 24)];
    v6 = self->_isBSubsetOfAValue;
    self->_isBSubsetOfAValue = v5;

    _Block_object_dispose(&v9, 8);
    isBSubsetOfAValue = self->_isBSubsetOfAValue;
  }

  return [(NSNumber *)isBSubsetOfAValue BOOLValue];
}

void __47__HFContainedObjectListDifference_isBSubsetOfA__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectB];
  if (v3)
  {
    v4 = v3;
    v5 = [v7 realDifferences];
    v6 = [v5 count];

    if (v6)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

- (id)reevaluateWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(HFContainedObjectListDifference *)self copy];
  v6 = [(HFContainedObjectListDifference *)self containedObjectResults];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HFContainedObjectListDifference_reevaluateWithBlock___block_invoke;
  v10[3] = &unk_277DF4620;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_map:v10];

  [v5 setContainedObjectResults:v8];
  [v5 setIsASubsetOfBValue:0];
  [v5 setIsBSubsetOfAValue:0];

  return v5;
}

id __55__HFContainedObjectListDifference_reevaluateWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 objectA];
  v5 = [v3 objectB];
  v6 = (*(v2 + 16))(v2, v4, v5, v3);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = HFContainedObjectListDifference;
  v4 = [(HFDifference *)&v11 copyWithZone:a3];
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

  v8 = [(HFContainedObjectListDifference *)self containedObjectResults];
  v9 = [v8 copy];
  [v7 setContainedObjectResults:v9];

  return v7;
}

- (id)descriptionBuilder
{
  v8.receiver = self;
  v8.super_class = HFContainedObjectListDifference;
  v3 = [(HFDifference *)&v8 descriptionBuilder];
  v4 = [(HFContainedObjectListDifference *)self containedObjectResults];
  v5 = [v4 na_filter:&__block_literal_global_189];
  v6 = [v3 appendObject:v5 withName:@"contained results"];

  return v3;
}

BOOL __53__HFContainedObjectListDifference_descriptionBuilder__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 realDifferences];
  v3 = [v2 count] != 0;

  return v3;
}

@end