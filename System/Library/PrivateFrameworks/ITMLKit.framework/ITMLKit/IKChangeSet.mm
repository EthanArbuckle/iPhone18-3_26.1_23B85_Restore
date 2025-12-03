@interface IKChangeSet
- (IKChangeSet)initWithAddedIndexes:(id)indexes removedIndexes:(id)removedIndexes movedIndexesByNewIndex:(id)index updatedIndexesByNewIndex:(id)newIndex;
- (id)changeSetByConcatenatingChangeSet:(id)set;
- (id)changeSetByConvertingOldIndexesUsingChangeSet:(id)set andNewIndexesUsingChangeSet:(id)changeSet;
- (id)changeSetBySubtractingChangeSet:(id)set;
- (id)inverseChangeSet;
- (int64_t)newIndexByShiftingOldIndex:(int64_t)index grouped:(BOOL)grouped;
- (int64_t)newIndexForOldIndex:(int64_t)index;
- (int64_t)oldIndexForNewIndex:(int64_t)index;
@end

@implementation IKChangeSet

- (IKChangeSet)initWithAddedIndexes:(id)indexes removedIndexes:(id)removedIndexes movedIndexesByNewIndex:(id)index updatedIndexesByNewIndex:(id)newIndex
{
  indexesCopy = indexes;
  removedIndexesCopy = removedIndexes;
  indexCopy = index;
  newIndexCopy = newIndex;
  v24.receiver = self;
  v24.super_class = IKChangeSet;
  v14 = [(IKChangeSet *)&v24 init];
  if (v14)
  {
    v15 = [indexesCopy copy];
    addedIndexes = v14->_addedIndexes;
    v14->_addedIndexes = v15;

    v17 = [removedIndexesCopy copy];
    removedIndexes = v14->_removedIndexes;
    v14->_removedIndexes = v17;

    v19 = [indexCopy copy];
    movedIndexesByNewIndex = v14->_movedIndexesByNewIndex;
    v14->_movedIndexesByNewIndex = v19;

    v21 = [newIndexCopy copy];
    updatedIndexesByNewIndex = v14->_updatedIndexesByNewIndex;
    v14->_updatedIndexesByNewIndex = v21;
  }

  return v14;
}

- (int64_t)newIndexForOldIndex:(int64_t)index
{
  removedIndexes = [(IKChangeSet *)self removedIndexes];
  v6 = [removedIndexes containsIndex:index];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v6 & 1) == 0)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    movedIndexesByNewIndex = [(IKChangeSet *)self movedIndexesByNewIndex];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __35__IKChangeSet_newIndexForOldIndex___block_invoke;
    v28[3] = &unk_27979B4F0;
    v28[4] = &v29;
    v28[5] = index;
    [movedIndexesByNewIndex enumerateKeysAndObjectsUsingBlock:v28];

    v7 = v30[3];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30[3] = index;
      removedIndexes2 = [(IKChangeSet *)self removedIndexes];
      if (removedIndexes2)
      {
        removedIndexes3 = [(IKChangeSet *)self removedIndexes];
        indexSet = [removedIndexes3 mutableCopy];
      }

      else
      {
        indexSet = [MEMORY[0x277CCAB58] indexSet];
      }

      addedIndexes = [(IKChangeSet *)self addedIndexes];
      if (addedIndexes)
      {
        addedIndexes2 = [(IKChangeSet *)self addedIndexes];
        indexSet2 = [addedIndexes2 mutableCopy];
      }

      else
      {
        indexSet2 = [MEMORY[0x277CCAB58] indexSet];
      }

      movedIndexesByNewIndex2 = [(IKChangeSet *)self movedIndexesByNewIndex];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __35__IKChangeSet_newIndexForOldIndex___block_invoke_2;
      v25 = &unk_27979B518;
      v16 = indexSet;
      v26 = v16;
      v17 = indexSet2;
      v27 = v17;
      [movedIndexesByNewIndex2 enumerateKeysAndObjectsUsingBlock:&v22];

      for (i = [v16 indexLessThanIndex:{index, v22, v23, v24, v25}]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v16, "indexLessThanIndex:"))
      {
        --v30[3];
      }

      for (j = [v17 firstIndex]; j != 0x7FFFFFFFFFFFFFFFLL; j = objc_msgSend(v17, "indexGreaterThanIndex:"))
      {
        v20 = v30[3];
        if (j > v20)
        {
          break;
        }

        v30[3] = v20 + 1;
      }

      v7 = v30[3];
    }

    _Block_object_dispose(&v29, 8);
  }

  return v7;
}

void __35__IKChangeSet_newIndexForOldIndex___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if ([a3 integerValue] == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v7 integerValue];
    *a4 = 1;
  }
}

uint64_t __35__IKChangeSet_newIndexForOldIndex___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 addIndex:{objc_msgSend(a3, "integerValue")}];
  v7 = *(a1 + 40);
  v8 = [v6 integerValue];

  return [v7 addIndex:v8];
}

- (int64_t)oldIndexForNewIndex:(int64_t)index
{
  addedIndexes = [(IKChangeSet *)self addedIndexes];
  v6 = [addedIndexes containsIndex:index];

  if (v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  movedIndexesByNewIndex = [(IKChangeSet *)self movedIndexesByNewIndex];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v10 = [movedIndexesByNewIndex objectForKeyedSubscript:v9];

  if (!v10)
  {
    goto LABEL_5;
  }

  movedIndexesByNewIndex2 = [(IKChangeSet *)self movedIndexesByNewIndex];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v13 = [movedIndexesByNewIndex2 objectForKeyedSubscript:v12];
  integerValue = [v13 integerValue];

  if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    removedIndexes = [(IKChangeSet *)self removedIndexes];
    if (removedIndexes)
    {
      removedIndexes2 = [(IKChangeSet *)self removedIndexes];
      indexSet = [removedIndexes2 mutableCopy];
    }

    else
    {
      indexSet = [MEMORY[0x277CCAB58] indexSet];
    }

    addedIndexes2 = [(IKChangeSet *)self addedIndexes];
    if (addedIndexes2)
    {
      addedIndexes3 = [(IKChangeSet *)self addedIndexes];
      indexSet2 = [addedIndexes3 mutableCopy];
    }

    else
    {
      indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    }

    movedIndexesByNewIndex3 = [(IKChangeSet *)self movedIndexesByNewIndex];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __35__IKChangeSet_oldIndexForNewIndex___block_invoke;
    v32 = &unk_27979B518;
    v21 = indexSet;
    v33 = v21;
    v22 = indexSet2;
    v34 = v22;
    [movedIndexesByNewIndex3 enumerateKeysAndObjectsUsingBlock:&v29];

    v23 = [v22 indexLessThanIndex:{index, v29, v30, v31, v32}];
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v23; i != 0x7FFFFFFFFFFFFFFFLL; i = [v22 indexLessThanIndex:i])
      {
        --index;
      }
    }

    firstIndex = [v21 firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = firstIndex;
      if (firstIndex <= index)
      {
        do
        {
          ++index;
          v27 = [v21 indexGreaterThanIndex:v26];
          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v26 = v27;
        }

        while (v27 <= index);
      }
    }

    return index;
  }

  return integerValue;
}

uint64_t __35__IKChangeSet_oldIndexForNewIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 addIndex:{objc_msgSend(a3, "integerValue")}];
  v7 = *(a1 + 40);
  v8 = [v6 integerValue];

  return [v7 addIndex:v8];
}

- (int64_t)newIndexByShiftingOldIndex:(int64_t)index grouped:(BOOL)grouped
{
  indexCopy2 = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    groupedCopy = grouped;
    removedIndexes = [(IKChangeSet *)self removedIndexes];
    if (removedIndexes)
    {
      removedIndexes2 = [(IKChangeSet *)self removedIndexes];
      indexSet = [removedIndexes2 mutableCopy];
    }

    else
    {
      indexSet = [MEMORY[0x277CCAB58] indexSet];
    }

    addedIndexes = [(IKChangeSet *)self addedIndexes];
    if (addedIndexes)
    {
      addedIndexes2 = [(IKChangeSet *)self addedIndexes];
      indexSet2 = [addedIndexes2 mutableCopy];
    }

    else
    {
      indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    }

    movedIndexesByNewIndex = [(IKChangeSet *)self movedIndexesByNewIndex];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __50__IKChangeSet_newIndexByShiftingOldIndex_grouped___block_invoke;
    v26 = &unk_27979B518;
    v15 = indexSet;
    v27 = v15;
    v16 = indexSet2;
    v28 = v16;
    [movedIndexesByNewIndex enumerateKeysAndObjectsUsingBlock:&v23];

    firstIndex = [v15 firstIndex];
    if (firstIndex >= index)
    {
      indexCopy2 = index;
    }

    else
    {
      v18 = firstIndex;
      indexCopy2 = index;
      do
      {
        --indexCopy2;
        v18 = [v15 indexGreaterThanIndex:v18];
      }

      while (v18 < index);
    }

    firstIndex2 = [v16 firstIndex];
    if (firstIndex2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = firstIndex2; i != 0x7FFFFFFFFFFFFFFFLL; i = [v16 indexGreaterThanIndex:?])
      {
        v21 = indexCopy2 == i && groupedCopy;
        if (i >= indexCopy2 && !v21)
        {
          break;
        }

        ++indexCopy2;
      }
    }
  }

  return indexCopy2;
}

uint64_t __50__IKChangeSet_newIndexByShiftingOldIndex_grouped___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 addIndex:{objc_msgSend(a3, "integerValue")}];
  v7 = *(a1 + 40);
  v8 = [v6 integerValue];

  return [v7 addIndex:v8];
}

- (id)inverseChangeSet
{
  removedIndexes = [(IKChangeSet *)self removedIndexes];
  addedIndexes = [(IKChangeSet *)self addedIndexes];
  v5 = MEMORY[0x277CBEB38];
  movedIndexesByNewIndex = [(IKChangeSet *)self movedIndexesByNewIndex];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(movedIndexesByNewIndex, "count")}];

  movedIndexesByNewIndex2 = [(IKChangeSet *)self movedIndexesByNewIndex];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __31__IKChangeSet_inverseChangeSet__block_invoke;
  v26[3] = &unk_27979B540;
  v9 = v7;
  v27 = v9;
  [movedIndexesByNewIndex2 enumerateKeysAndObjectsUsingBlock:v26];

  v10 = MEMORY[0x277CBEB38];
  updatedIndexesByNewIndex = [(IKChangeSet *)self updatedIndexesByNewIndex];
  v12 = [v10 dictionaryWithCapacity:{objc_msgSend(updatedIndexesByNewIndex, "count")}];

  updatedIndexesByNewIndex2 = [(IKChangeSet *)self updatedIndexesByNewIndex];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __31__IKChangeSet_inverseChangeSet__block_invoke_2;
  v24 = &unk_27979B540;
  v14 = v12;
  v25 = v14;
  [updatedIndexesByNewIndex2 enumerateKeysAndObjectsUsingBlock:&v21];

  v15 = [IKChangeSet alloc];
  v16 = [v9 count];
  if (v16)
  {
    v17 = [v9 copy];
  }

  else
  {
    v17 = 0;
  }

  if ([v14 count])
  {
    v18 = [v14 copy];
    v19 = [(IKChangeSet *)v15 initWithAddedIndexes:removedIndexes removedIndexes:addedIndexes movedIndexesByNewIndex:v17 updatedIndexesByNewIndex:v18];

    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v19 = [(IKChangeSet *)v15 initWithAddedIndexes:removedIndexes removedIndexes:addedIndexes movedIndexesByNewIndex:v17 updatedIndexesByNewIndex:0];
  if (v16)
  {
LABEL_6:
  }

LABEL_7:
  v19->_reducing = 1;

  return v19;
}

- (id)changeSetByConcatenatingChangeSet:(id)set
{
  setCopy = set;
  addedIndexes = [setCopy addedIndexes];
  if (addedIndexes)
  {
    addedIndexes2 = [setCopy addedIndexes];
    indexSet = [addedIndexes2 mutableCopy];
  }

  else
  {
    indexSet = [MEMORY[0x277CCAB58] indexSet];
  }

  addedIndexes3 = [(IKChangeSet *)self addedIndexes];
  if (addedIndexes3)
  {
    addedIndexes4 = [(IKChangeSet *)self addedIndexes];
    firstIndex = [addedIndexes4 firstIndex];

    while (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [setCopy newIndexForOldIndex:firstIndex];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [indexSet addIndex:v11];
      }

      addedIndexes5 = [(IKChangeSet *)self addedIndexes];
      firstIndex = [addedIndexes5 indexGreaterThanIndex:firstIndex];
    }
  }

  else
  {
  }

  removedIndexes = [(IKChangeSet *)self removedIndexes];
  if (removedIndexes)
  {
    removedIndexes2 = [(IKChangeSet *)self removedIndexes];
    indexSet2 = [removedIndexes2 mutableCopy];
  }

  else
  {
    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  }

  removedIndexes3 = [setCopy removedIndexes];
  if (removedIndexes3)
  {
    removedIndexes4 = [setCopy removedIndexes];
    firstIndex2 = [removedIndexes4 firstIndex];

    while (firstIndex2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [(IKChangeSet *)self oldIndexForNewIndex:firstIndex2];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [indexSet2 addIndex:v19];
      }

      removedIndexes5 = [setCopy removedIndexes];
      firstIndex2 = [removedIndexes5 indexGreaterThanIndex:firstIndex2];
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277CBEB38];
  movedIndexesByNewIndex = [(IKChangeSet *)self movedIndexesByNewIndex];
  v23 = [movedIndexesByNewIndex count];
  movedIndexesByNewIndex2 = [setCopy movedIndexesByNewIndex];
  v25 = [v21 dictionaryWithCapacity:{objc_msgSend(movedIndexesByNewIndex2, "count") + v23}];

  movedIndexesByNewIndex3 = [(IKChangeSet *)self movedIndexesByNewIndex];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke;
  v86[3] = &unk_27979B518;
  v27 = setCopy;
  v87 = v27;
  v28 = v25;
  v88 = v28;
  [movedIndexesByNewIndex3 enumerateKeysAndObjectsUsingBlock:v86];

  movedIndexesByNewIndex4 = [v27 movedIndexesByNewIndex];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_2;
  v84[3] = &unk_27979B518;
  v84[4] = self;
  v71 = v28;
  v85 = v71;
  [movedIndexesByNewIndex4 enumerateKeysAndObjectsUsingBlock:v84];

  v68 = indexSet2;
  v69 = indexSet;
  if ([v27 isReducing])
  {
    v66 = v27;
    addedIndexes6 = [v27 addedIndexes];
    removedIndexes6 = [(IKChangeSet *)self removedIndexes];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_3;
    v81[3] = &unk_27979B518;
    v30 = indexSet2;
    v82 = v30;
    v31 = indexSet;
    v83 = v31;
    v32 = v71;
    [v71 enumerateKeysAndObjectsUsingBlock:v81];
    firstIndex3 = [v30 firstIndex];
    if (firstIndex3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = firstIndex3; i != 0x7FFFFFFFFFFFFFFFLL; i = [v30 indexGreaterThanIndex:i])
      {
        v35 = [v30 indexLessThanIndex:i];
        v36 = i;
        if (v35 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = v35;
          v36 = i;
          do
          {
            --v36;
            v37 = [v30 indexLessThanIndex:v37];
          }

          while (v37 != 0x7FFFFFFFFFFFFFFFLL);
        }

        firstIndex4 = [v31 firstIndex];
        if (firstIndex4 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = firstIndex4;
          while (v39 < v36)
          {
            ++v36;
            v39 = [v31 indexGreaterThanIndex:v39];
            if (v39 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_36;
            }
          }

          if ([removedIndexes6 containsIndex:i] && (objc_msgSend(addedIndexes6, "containsIndex:", v39) & 1) != 0)
          {
            goto LABEL_35;
          }

          v40 = [MEMORY[0x277CCABB0] numberWithInteger:v39];
          v41 = [v32 objectForKeyedSubscript:v40];
          v42 = [MEMORY[0x277CCABB0] numberWithInteger:i];
          v43 = [v41 isEqualToNumber:v42];

          v32 = v71;
          if (v43)
          {
LABEL_35:
            [v30 removeIndex:i];
            [v31 removeIndex:v36];
            v44 = [MEMORY[0x277CCABB0] numberWithInteger:i];
            [v32 removeObjectForKey:v44];
          }
        }

LABEL_36:
        ;
      }
    }

    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_4;
    v78[3] = &unk_27979B518;
    v79 = v30;
    v80 = v31;
    [v32 enumerateKeysAndObjectsUsingBlock:v78];

    indexSet2 = v68;
    indexSet = v69;
    v27 = v66;
  }

  v45 = MEMORY[0x277CBEB38];
  updatedIndexesByNewIndex = [(IKChangeSet *)self updatedIndexesByNewIndex];
  v47 = [updatedIndexesByNewIndex count];
  updatedIndexesByNewIndex2 = [v27 updatedIndexesByNewIndex];
  v49 = [v45 dictionaryWithCapacity:{objc_msgSend(updatedIndexesByNewIndex2, "count") + v47}];

  updatedIndexesByNewIndex3 = [(IKChangeSet *)self updatedIndexesByNewIndex];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_5;
  v75[3] = &unk_27979B518;
  v51 = v27;
  v76 = v51;
  v52 = v49;
  v77 = v52;
  [updatedIndexesByNewIndex3 enumerateKeysAndObjectsUsingBlock:v75];

  updatedIndexesByNewIndex4 = [v51 updatedIndexesByNewIndex];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_6;
  v72[3] = &unk_27979B568;
  v72[4] = self;
  v54 = v52;
  v73 = v54;
  v55 = v51;
  v74 = v55;
  [updatedIndexesByNewIndex4 enumerateKeysAndObjectsUsingBlock:v72];

  v56 = [IKChangeSet alloc];
  v57 = [indexSet count];
  if (v57)
  {
    v58 = [indexSet copy];
  }

  else
  {
    v58 = 0;
  }

  v59 = [indexSet2 count];
  if (v59)
  {
    v60 = [indexSet2 copy];
  }

  else
  {
    v60 = 0;
  }

  v61 = [v71 count];
  if (v61)
  {
    v62 = [v71 copy];
  }

  else
  {
    v62 = 0;
  }

  if ([v54 count])
  {
    v63 = [v54 copy];
    v64 = [(IKChangeSet *)v56 initWithAddedIndexes:v58 removedIndexes:v60 movedIndexesByNewIndex:v62 updatedIndexesByNewIndex:v63];

    if (!v61)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v64 = [(IKChangeSet *)v56 initWithAddedIndexes:v58 removedIndexes:v60 movedIndexesByNewIndex:v62 updatedIndexesByNewIndex:0];
  if (v61)
  {
LABEL_49:
  }

LABEL_50:
  if (v59)
  {
  }

  if (v57)
  {
  }

  return v64;
}

void __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) newIndexForOldIndex:{objc_msgSend(a2, "integerValue")}];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

void __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) oldIndexForNewIndex:{objc_msgSend(a3, "integerValue")}];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

uint64_t __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 addIndex:{objc_msgSend(a3, "integerValue")}];
  v7 = *(a1 + 40);
  v8 = [v6 integerValue];

  return [v7 addIndex:v8];
}

uint64_t __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 removeIndex:{objc_msgSend(a3, "integerValue")}];
  v7 = *(a1 + 40);
  v8 = [v6 integerValue];

  return [v7 removeIndex:v8];
}

void __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) newIndexForOldIndex:{objc_msgSend(a2, "integerValue")}];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

void __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_6(id *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a1[4] oldIndexForNewIndex:{objc_msgSend(a3, "integerValue")}];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [a1[5] objectForKeyedSubscript:v11];
    if (v7 && (v8 = v7, v9 = [a1[6] isReducing], v8, v9))
    {
      [a1[5] removeObjectForKey:v11];
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
      [a1[5] setObject:v10 forKeyedSubscript:v11];
    }
  }
}

- (id)changeSetBySubtractingChangeSet:(id)set
{
  inverseChangeSet = [set inverseChangeSet];
  v5 = [(IKChangeSet *)self changeSetByConcatenatingChangeSet:inverseChangeSet];

  return v5;
}

- (id)changeSetByConvertingOldIndexesUsingChangeSet:(id)set andNewIndexesUsingChangeSet:(id)changeSet
{
  setCopy = set;
  v7 = [(IKChangeSet *)self changeSetByConcatenatingChangeSet:changeSet];
  inverseChangeSet = [setCopy inverseChangeSet];

  v9 = [inverseChangeSet changeSetByConcatenatingChangeSet:v7];

  return v9;
}

@end