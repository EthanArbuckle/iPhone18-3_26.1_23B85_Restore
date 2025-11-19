@interface HFGroupedItemDiff
+ (id)diffFromGroups:(id)a3 toGroups:(id)a4 changeTest:(id)a5;
- (HFGroupedItemDiff)initWithFromGroups:(id)a3 toGroups:(id)a4 changeTest:(id)a5;
- (NSArray)allOperations;
- (id)_briefDescriptionForOperations:(id)a3 type:(id)a4;
- (id)_operationDescriptionWithPrefix:(id)a3;
- (id)_performItemDiffFromGroup:(id)a3 atIndex:(id)a4 toGroup:(id)a5 atIndex:(unint64_t)a6;
- (id)debugDescription;
- (id)description;
- (void)_performDiff;
@end

@implementation HFGroupedItemDiff

+ (id)diffFromGroups:(id)a3 toGroups:(id)a4 changeTest:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HFGroupedItemDiff alloc] initWithFromGroups:v9 toGroups:v8 changeTest:v7];

  return v10;
}

- (HFGroupedItemDiff)initWithFromGroups:(id)a3 toGroups:(id)a4 changeTest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HFGroupedItemDiff;
  v11 = [(HFGroupedItemDiff *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HFGroupedItemDiff *)v11 setFromGroups:v8];
    [(HFGroupedItemDiff *)v12 setToGroups:v9];
    [(HFGroupedItemDiff *)v12 setChangeTest:v10];
    [(HFGroupedItemDiff *)v12 _performDiff];
  }

  return v12;
}

- (NSArray)allOperations
{
  v3 = [(HFGroupedItemDiff *)self groupOperations];
  v4 = [(HFGroupedItemDiff *)self itemOperations];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (void)_performDiff
{
  v3 = objc_alloc_init(HFUniqueArrayDiffOptions);
  [(HFUniqueArrayDiffOptions *)v3 setEqualComparator:&__block_literal_global_69];
  [(HFUniqueArrayDiffOptions *)v3 setHashGenerator:&__block_literal_global_72_0];
  [(HFUniqueArrayDiffOptions *)v3 setAllowMoves:0];
  v4 = [(HFGroupedItemDiff *)self fromGroups];
  v5 = [(HFGroupedItemDiff *)self toGroups];
  v6 = [HFUniqueArrayDiff diffFromArray:v4 toArray:v5 options:v3];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "numberOfOperations")}];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __33__HFGroupedItemDiff__performDiff__block_invoke_3;
  v35[3] = &unk_277DF2B48;
  v8 = v7;
  v36 = v8;
  v37 = self;
  [v6 enumerateDeletesUsingBlock:v35];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __33__HFGroupedItemDiff__performDiff__block_invoke_4;
  v32[3] = &unk_277DFA998;
  v9 = v8;
  v33 = v9;
  v34 = self;
  [v6 enumerateMovesUsingBlock:v32];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __33__HFGroupedItemDiff__performDiff__block_invoke_5;
  v29[3] = &unk_277DF2B48;
  v30 = v9;
  v31 = self;
  v10 = v9;
  [v6 enumerateInsertsUsingBlock:v29];
  v11 = MEMORY[0x277CBEB38];
  v12 = [(HFGroupedItemDiff *)self fromGroups];
  v13 = [v11 dictionaryWithCapacity:{objc_msgSend(v12, "count")}];

  v14 = [(HFGroupedItemDiff *)self fromGroups];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __33__HFGroupedItemDiff__performDiff__block_invoke_6;
  v27[3] = &unk_277DFA9C0;
  v15 = v13;
  v28 = v15;
  [v14 enumerateObjectsUsingBlock:v27];

  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [(HFGroupedItemDiff *)self toGroups];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __33__HFGroupedItemDiff__performDiff__block_invoke_7;
  v23 = &unk_277DFA9E8;
  v24 = v15;
  v25 = self;
  v26 = v16;
  v18 = v16;
  v19 = v15;
  [v17 enumerateObjectsUsingBlock:&v20];

  [(HFGroupedItemDiff *)self setGroupOperations:v10, v20, v21, v22, v23];
  [(HFGroupedItemDiff *)self setItemOperations:v18];
}

uint64_t __33__HFGroupedItemDiff__performDiff__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 groupIdentifier];
  v6 = [v4 groupIdentifier];

  v7 = [v5 isEqualToString:v6];
  return v7;
}

uint64_t __33__HFGroupedItemDiff__performDiff__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 groupIdentifier];
  v3 = [v2 hash];

  return v3;
}

void __33__HFGroupedItemDiff__performDiff__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = [*(a1 + 40) fromGroups];
  v4 = [v6 objectAtIndexedSubscript:a2];
  v5 = [HFGroupDiffOperation deleteOperationWithGroup:v4 atIndex:a2];
  [v3 addObject:v5];
}

void __33__HFGroupedItemDiff__performDiff__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v8 = [*(a1 + 40) toGroups];
  v6 = [v8 objectAtIndexedSubscript:a3];
  v7 = [HFGroupDiffOperation moveOperationWithGroup:v6 fromIndex:a2 toIndex:a3];
  [v5 addObject:v7];
}

void __33__HFGroupedItemDiff__performDiff__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v6 = [*(a1 + 40) toGroups];
  v4 = [v6 objectAtIndexedSubscript:a2];
  v5 = [HFGroupDiffOperation insertOperationWithGroup:v4 atIndex:a2];
  [v3 addObject:v5];
}

void __33__HFGroupedItemDiff__performDiff__block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v9 = [v5 numberWithUnsignedInteger:a3];
  v7 = *(a1 + 32);
  v8 = [v6 groupIdentifier];

  [v7 setObject:v9 forKeyedSubscript:v8];
}

void __33__HFGroupedItemDiff__performDiff__block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v13 = v5;
  v7 = [v5 groupIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [*(a1 + 40) fromGroups];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v8, "unsignedIntegerValue")}];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 48);
  v12 = [*(a1 + 40) _performItemDiffFromGroup:v10 atIndex:v8 toGroup:v13 atIndex:a3];
  [v11 addObjectsFromArray:v12];
}

- (id)_performItemDiffFromGroup:(id)a3 atIndex:(id)a4 toGroup:(id)a5 atIndex:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v12)
  {
    NSLog(&cfstr_CannotPerformA.isa, v10);
  }

  v13 = [v10 diffableItems];
  v14 = v13;
  v15 = MEMORY[0x277CBEBF8];
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = v16;

  v18 = [v12 diffableItems];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  v21 = v20;

  v22 = objc_alloc_init(HFUniqueArrayDiffOptions);
  v23 = [(HFGroupedItemDiff *)self changeTest];
  [(HFUniqueArrayDiffOptions *)v22 setChangeComparator:v23];

  v24 = [HFUniqueArrayDiff diffFromArray:v17 toArray:v21 options:v22];
  v25 = v24;
  if (!v10)
  {
    v26 = [v24 insertedIndexes];
    v27 = v12;
    v28 = a6;
    v29 = [v26 count];
    v30 = [v25 numberOfOperations];

    v31 = v29 == v30;
    a6 = v28;
    v12 = v27;
    v10 = 0;
    if (!v31)
    {
      NSLog(&cfstr_FoundNonInsert.isa, v12, v25);
    }
  }

  v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v25, "numberOfOperations")}];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __71__HFGroupedItemDiff__performItemDiffFromGroup_atIndex_toGroup_atIndex___block_invoke;
  v60[3] = &unk_277DFAA10;
  v33 = v11;
  v61 = v33;
  v34 = v32;
  v62 = v34;
  v35 = v17;
  v63 = v35;
  [v25 enumerateChangesUsingBlock:v60];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __71__HFGroupedItemDiff__performItemDiffFromGroup_atIndex_toGroup_atIndex___block_invoke_2;
  v56[3] = &unk_277DFAA10;
  v36 = v33;
  v57 = v36;
  v37 = v34;
  v58 = v37;
  v59 = v35;
  v38 = v35;
  [v25 enumerateDeletesUsingBlock:v56];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __71__HFGroupedItemDiff__performItemDiffFromGroup_atIndex_toGroup_atIndex___block_invoke_3;
  v51[3] = &unk_277DFAA38;
  v52 = v36;
  v55 = a6;
  v39 = v37;
  v53 = v39;
  v40 = v21;
  v54 = v40;
  v41 = v36;
  [v25 enumerateMovesUsingBlock:v51];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __71__HFGroupedItemDiff__performItemDiffFromGroup_atIndex_toGroup_atIndex___block_invoke_4;
  v47[3] = &unk_277DFAA60;
  v50 = a6;
  v42 = v39;
  v48 = v42;
  v49 = v40;
  v43 = v40;
  [v25 enumerateInsertsUsingBlock:v47];
  v44 = v49;
  v45 = v42;

  return v42;
}

void __71__HFGroupedItemDiff__performItemDiffFromGroup_atIndex_toGroup_atIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:{objc_msgSend(*(a1 + 32), "unsignedIntegerValue")}];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) objectAtIndexedSubscript:a2];
  v6 = [HFItemDiffOperation reloadOperationWithItem:v5 atIndexPath:v7];
  [v4 addObject:v6];
}

void __71__HFGroupedItemDiff__performItemDiffFromGroup_atIndex_toGroup_atIndex___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:{objc_msgSend(*(a1 + 32), "unsignedIntegerValue")}];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) objectAtIndexedSubscript:a2];
  v6 = [HFItemDiffOperation deleteOperationWithItem:v5 atIndexPath:v7];
  [v4 addObject:v6];
}

void __71__HFGroupedItemDiff__performItemDiffFromGroup_atIndex_toGroup_atIndex___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:{objc_msgSend(*(a1 + 32), "unsignedIntegerValue")}];
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:*(a1 + 56)];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) objectAtIndexedSubscript:a3];
  v8 = [HFItemDiffOperation moveOperationWithItem:v7 fromIndexPath:v9 toIndexPath:v5];
  [v6 addObject:v8];
}

void __71__HFGroupedItemDiff__performItemDiffFromGroup_atIndex_toGroup_atIndex___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:*(a1 + 48)];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v6 = [HFItemDiffOperation insertOperationWithItem:v5 atIndexPath:v7];
  [v4 addObject:v6];
}

- (id)_briefDescriptionForOperations:(id)a3 type:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = [*(*(&v28 + 1) + 8 * i) type];
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            ++v10;
          }

          else if (v15 == 3)
          {
            ++v9;
          }
        }

        else if (v15)
        {
          if (v15 == 1)
          {
            ++v11;
          }
        }

        else
        {
          ++v8;
        }
      }

      v12 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  v16 = [MEMORY[0x277CCAB68] string];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HFGroupedItemDiff__briefDescriptionForOperations_type___block_invoke;
  aBlock[3] = &unk_277DFAA88;
  v17 = v16;
  v24 = v17;
  v26 = v27;
  v18 = v6;
  v25 = v18;
  v19 = _Block_copy(aBlock);
  v19[2](v19, v11, @"inserted");
  v19[2](v19, v10, @"deleted");
  v19[2](v19, v9, @"moved");
  v19[2](v19, v8, @"reloaded");
  v20 = v17;

  _Block_object_dispose(v27, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __57__HFGroupedItemDiff__briefDescriptionForOperations_type___block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = a1[4];
    if (*(*(a1[6] + 8) + 24))
    {
      v6 = @" ";
    }

    else
    {
      v6 = &stru_2824B1A78;
    }

    v7 = MEMORY[0x277CCABB0];
    v8 = a3;
    v9 = [v7 numberWithUnsignedInteger:a2];
    [v5 appendFormat:@"%@%@ %@ %@", v6, v9, a1[5], v8];

    ++*(*(a1[6] + 8) + 24);
  }
}

- (id)description
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(HFGroupedItemDiff *)self groupOperations];
  v4 = [(HFGroupedItemDiff *)self _briefDescriptionForOperations:v3 type:@"groups"];
  v12[0] = v4;
  v5 = [(HFGroupedItemDiff *)self itemOperations];
  v6 = [(HFGroupedItemDiff *)self _briefDescriptionForOperations:v5 type:@"items"];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  if ([v7 count])
  {
    v8 = [v7 componentsJoinedByString:@" "];
  }

  else
  {
    v8 = @"(no changes)";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p %@>", objc_opt_class(), self, v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HFGroupedItemDiff *)self _operationDescriptionWithPrefix:@"    "];
  v6 = [v3 stringWithFormat:@"<%@:%p> operations: (\n%@\n)", v4, self, v5];

  return v6;
}

- (id)_operationDescriptionWithPrefix:(id)a3
{
  v4 = a3;
  v5 = [(HFGroupedItemDiff *)self allOperations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HFGroupedItemDiff__operationDescriptionWithPrefix___block_invoke;
  v10[3] = &unk_277DFAAB0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 na_map:v10];
  v8 = [v7 componentsJoinedByString:{@", \n"}];

  return v8;
}

id __53__HFGroupedItemDiff__operationDescriptionWithPrefix___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 operationDescription];
  v4 = [v2 stringByAppendingString:v3];

  return v4;
}

@end