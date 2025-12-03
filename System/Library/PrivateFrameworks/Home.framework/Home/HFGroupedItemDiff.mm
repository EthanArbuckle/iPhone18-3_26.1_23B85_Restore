@interface HFGroupedItemDiff
+ (id)diffFromGroups:(id)groups toGroups:(id)toGroups changeTest:(id)test;
- (HFGroupedItemDiff)initWithFromGroups:(id)groups toGroups:(id)toGroups changeTest:(id)test;
- (NSArray)allOperations;
- (id)_briefDescriptionForOperations:(id)operations type:(id)type;
- (id)_operationDescriptionWithPrefix:(id)prefix;
- (id)_performItemDiffFromGroup:(id)group atIndex:(id)index toGroup:(id)toGroup atIndex:(unint64_t)atIndex;
- (id)debugDescription;
- (id)description;
- (void)_performDiff;
@end

@implementation HFGroupedItemDiff

+ (id)diffFromGroups:(id)groups toGroups:(id)toGroups changeTest:(id)test
{
  testCopy = test;
  toGroupsCopy = toGroups;
  groupsCopy = groups;
  v10 = [[HFGroupedItemDiff alloc] initWithFromGroups:groupsCopy toGroups:toGroupsCopy changeTest:testCopy];

  return v10;
}

- (HFGroupedItemDiff)initWithFromGroups:(id)groups toGroups:(id)toGroups changeTest:(id)test
{
  groupsCopy = groups;
  toGroupsCopy = toGroups;
  testCopy = test;
  v14.receiver = self;
  v14.super_class = HFGroupedItemDiff;
  v11 = [(HFGroupedItemDiff *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(HFGroupedItemDiff *)v11 setFromGroups:groupsCopy];
    [(HFGroupedItemDiff *)v12 setToGroups:toGroupsCopy];
    [(HFGroupedItemDiff *)v12 setChangeTest:testCopy];
    [(HFGroupedItemDiff *)v12 _performDiff];
  }

  return v12;
}

- (NSArray)allOperations
{
  groupOperations = [(HFGroupedItemDiff *)self groupOperations];
  itemOperations = [(HFGroupedItemDiff *)self itemOperations];
  v5 = [groupOperations arrayByAddingObjectsFromArray:itemOperations];

  return v5;
}

- (void)_performDiff
{
  v3 = objc_alloc_init(HFUniqueArrayDiffOptions);
  [(HFUniqueArrayDiffOptions *)v3 setEqualComparator:&__block_literal_global_69];
  [(HFUniqueArrayDiffOptions *)v3 setHashGenerator:&__block_literal_global_72_0];
  [(HFUniqueArrayDiffOptions *)v3 setAllowMoves:0];
  fromGroups = [(HFGroupedItemDiff *)self fromGroups];
  toGroups = [(HFGroupedItemDiff *)self toGroups];
  v6 = [HFUniqueArrayDiff diffFromArray:fromGroups toArray:toGroups options:v3];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "numberOfOperations")}];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __33__HFGroupedItemDiff__performDiff__block_invoke_3;
  v35[3] = &unk_277DF2B48;
  v8 = v7;
  v36 = v8;
  selfCopy = self;
  [v6 enumerateDeletesUsingBlock:v35];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __33__HFGroupedItemDiff__performDiff__block_invoke_4;
  v32[3] = &unk_277DFA998;
  v9 = v8;
  v33 = v9;
  selfCopy2 = self;
  [v6 enumerateMovesUsingBlock:v32];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __33__HFGroupedItemDiff__performDiff__block_invoke_5;
  v29[3] = &unk_277DF2B48;
  v30 = v9;
  selfCopy3 = self;
  v10 = v9;
  [v6 enumerateInsertsUsingBlock:v29];
  v11 = MEMORY[0x277CBEB38];
  fromGroups2 = [(HFGroupedItemDiff *)self fromGroups];
  v13 = [v11 dictionaryWithCapacity:{objc_msgSend(fromGroups2, "count")}];

  fromGroups3 = [(HFGroupedItemDiff *)self fromGroups];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __33__HFGroupedItemDiff__performDiff__block_invoke_6;
  v27[3] = &unk_277DFA9C0;
  v15 = v13;
  v28 = v15;
  [fromGroups3 enumerateObjectsUsingBlock:v27];

  array = [MEMORY[0x277CBEB18] array];
  toGroups2 = [(HFGroupedItemDiff *)self toGroups];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __33__HFGroupedItemDiff__performDiff__block_invoke_7;
  v23 = &unk_277DFA9E8;
  v24 = v15;
  selfCopy4 = self;
  v26 = array;
  v18 = array;
  v19 = v15;
  [toGroups2 enumerateObjectsUsingBlock:&v20];

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

- (id)_performItemDiffFromGroup:(id)group atIndex:(id)index toGroup:(id)toGroup atIndex:(unint64_t)atIndex
{
  groupCopy = group;
  indexCopy = index;
  toGroupCopy = toGroup;
  if (!toGroupCopy)
  {
    NSLog(&cfstr_CannotPerformA.isa, groupCopy);
  }

  diffableItems = [groupCopy diffableItems];
  v14 = diffableItems;
  v15 = MEMORY[0x277CBEBF8];
  if (diffableItems)
  {
    v16 = diffableItems;
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = v16;

  diffableItems2 = [toGroupCopy diffableItems];
  v19 = diffableItems2;
  if (diffableItems2)
  {
    v20 = diffableItems2;
  }

  else
  {
    v20 = v15;
  }

  v21 = v20;

  v22 = objc_alloc_init(HFUniqueArrayDiffOptions);
  changeTest = [(HFGroupedItemDiff *)self changeTest];
  [(HFUniqueArrayDiffOptions *)v22 setChangeComparator:changeTest];

  v24 = [HFUniqueArrayDiff diffFromArray:v17 toArray:v21 options:v22];
  v25 = v24;
  if (!groupCopy)
  {
    insertedIndexes = [v24 insertedIndexes];
    v27 = toGroupCopy;
    atIndexCopy = atIndex;
    v29 = [insertedIndexes count];
    numberOfOperations = [v25 numberOfOperations];

    v31 = v29 == numberOfOperations;
    atIndex = atIndexCopy;
    toGroupCopy = v27;
    groupCopy = 0;
    if (!v31)
    {
      NSLog(&cfstr_FoundNonInsert.isa, toGroupCopy, v25);
    }
  }

  v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v25, "numberOfOperations")}];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __71__HFGroupedItemDiff__performItemDiffFromGroup_atIndex_toGroup_atIndex___block_invoke;
  v60[3] = &unk_277DFAA10;
  v33 = indexCopy;
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
  atIndexCopy2 = atIndex;
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
  atIndexCopy3 = atIndex;
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

- (id)_briefDescriptionForOperations:(id)operations type:(id)type
{
  v33 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  typeCopy = type;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = operationsCopy;
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

        type = [*(*(&v28 + 1) + 8 * i) type];
        if (type > 1)
        {
          if (type == 2)
          {
            ++v10;
          }

          else if (type == 3)
          {
            ++v9;
          }
        }

        else if (type)
        {
          if (type == 1)
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

  string = [MEMORY[0x277CCAB68] string];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HFGroupedItemDiff__briefDescriptionForOperations_type___block_invoke;
  aBlock[3] = &unk_277DFAA88;
  v17 = string;
  v24 = v17;
  v26 = v27;
  v18 = typeCopy;
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
  groupOperations = [(HFGroupedItemDiff *)self groupOperations];
  v4 = [(HFGroupedItemDiff *)self _briefDescriptionForOperations:groupOperations type:@"groups"];
  v12[0] = v4;
  itemOperations = [(HFGroupedItemDiff *)self itemOperations];
  v6 = [(HFGroupedItemDiff *)self _briefDescriptionForOperations:itemOperations type:@"items"];
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

- (id)_operationDescriptionWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  allOperations = [(HFGroupedItemDiff *)self allOperations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HFGroupedItemDiff__operationDescriptionWithPrefix___block_invoke;
  v10[3] = &unk_277DFAAB0;
  v11 = prefixCopy;
  v6 = prefixCopy;
  v7 = [allOperations na_map:v10];
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