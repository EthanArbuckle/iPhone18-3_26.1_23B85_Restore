@interface IKChangeSet
- (IKChangeSet)initWithAddedIndexes:(id)a3 removedIndexes:(id)a4 movedIndexesByNewIndex:(id)a5 updatedIndexesByNewIndex:(id)a6;
- (id)changeSetByConcatenatingChangeSet:(id)a3;
- (id)changeSetByConvertingOldIndexesUsingChangeSet:(id)a3 andNewIndexesUsingChangeSet:(id)a4;
- (id)changeSetBySubtractingChangeSet:(id)a3;
- (id)inverseChangeSet;
- (int64_t)newIndexByShiftingOldIndex:(int64_t)a3 grouped:(BOOL)a4;
- (int64_t)newIndexForOldIndex:(int64_t)a3;
- (int64_t)oldIndexForNewIndex:(int64_t)a3;
@end

@implementation IKChangeSet

- (IKChangeSet)initWithAddedIndexes:(id)a3 removedIndexes:(id)a4 movedIndexesByNewIndex:(id)a5 updatedIndexesByNewIndex:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = IKChangeSet;
  v14 = [(IKChangeSet *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    addedIndexes = v14->_addedIndexes;
    v14->_addedIndexes = v15;

    v17 = [v11 copy];
    removedIndexes = v14->_removedIndexes;
    v14->_removedIndexes = v17;

    v19 = [v12 copy];
    movedIndexesByNewIndex = v14->_movedIndexesByNewIndex;
    v14->_movedIndexesByNewIndex = v19;

    v21 = [v13 copy];
    updatedIndexesByNewIndex = v14->_updatedIndexesByNewIndex;
    v14->_updatedIndexesByNewIndex = v21;
  }

  return v14;
}

- (int64_t)newIndexForOldIndex:(int64_t)a3
{
  v5 = [(IKChangeSet *)self removedIndexes];
  v6 = [v5 containsIndex:a3];

  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v6 & 1) == 0)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [(IKChangeSet *)self movedIndexesByNewIndex];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __35__IKChangeSet_newIndexForOldIndex___block_invoke;
    v28[3] = &unk_27979B4F0;
    v28[4] = &v29;
    v28[5] = a3;
    [v8 enumerateKeysAndObjectsUsingBlock:v28];

    v7 = v30[3];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30[3] = a3;
      v9 = [(IKChangeSet *)self removedIndexes];
      if (v9)
      {
        v10 = [(IKChangeSet *)self removedIndexes];
        v11 = [v10 mutableCopy];
      }

      else
      {
        v11 = [MEMORY[0x277CCAB58] indexSet];
      }

      v12 = [(IKChangeSet *)self addedIndexes];
      if (v12)
      {
        v13 = [(IKChangeSet *)self addedIndexes];
        v14 = [v13 mutableCopy];
      }

      else
      {
        v14 = [MEMORY[0x277CCAB58] indexSet];
      }

      v15 = [(IKChangeSet *)self movedIndexesByNewIndex];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __35__IKChangeSet_newIndexForOldIndex___block_invoke_2;
      v25 = &unk_27979B518;
      v16 = v11;
      v26 = v16;
      v17 = v14;
      v27 = v17;
      [v15 enumerateKeysAndObjectsUsingBlock:&v22];

      for (i = [v16 indexLessThanIndex:{a3, v22, v23, v24, v25}]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v16, "indexLessThanIndex:"))
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

- (int64_t)oldIndexForNewIndex:(int64_t)a3
{
  v5 = [(IKChangeSet *)self addedIndexes];
  v6 = [v5 containsIndex:a3];

  if (v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(IKChangeSet *)self movedIndexesByNewIndex];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [(IKChangeSet *)self movedIndexesByNewIndex];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v13 = [v11 objectForKeyedSubscript:v12];
  v7 = [v13 integerValue];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v14 = [(IKChangeSet *)self removedIndexes];
    if (v14)
    {
      v15 = [(IKChangeSet *)self removedIndexes];
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = [MEMORY[0x277CCAB58] indexSet];
    }

    v17 = [(IKChangeSet *)self addedIndexes];
    if (v17)
    {
      v18 = [(IKChangeSet *)self addedIndexes];
      v19 = [v18 mutableCopy];
    }

    else
    {
      v19 = [MEMORY[0x277CCAB58] indexSet];
    }

    v20 = [(IKChangeSet *)self movedIndexesByNewIndex];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __35__IKChangeSet_oldIndexForNewIndex___block_invoke;
    v32 = &unk_27979B518;
    v21 = v16;
    v33 = v21;
    v22 = v19;
    v34 = v22;
    [v20 enumerateKeysAndObjectsUsingBlock:&v29];

    v23 = [v22 indexLessThanIndex:{a3, v29, v30, v31, v32}];
    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v23; i != 0x7FFFFFFFFFFFFFFFLL; i = [v22 indexLessThanIndex:i])
      {
        --a3;
      }
    }

    v25 = [v21 firstIndex];
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = v25;
      if (v25 <= a3)
      {
        do
        {
          ++a3;
          v27 = [v21 indexGreaterThanIndex:v26];
          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v26 = v27;
        }

        while (v27 <= a3);
      }
    }

    return a3;
  }

  return v7;
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

- (int64_t)newIndexByShiftingOldIndex:(int64_t)a3 grouped:(BOOL)a4
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a4;
    v8 = [(IKChangeSet *)self removedIndexes];
    if (v8)
    {
      v9 = [(IKChangeSet *)self removedIndexes];
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x277CCAB58] indexSet];
    }

    v11 = [(IKChangeSet *)self addedIndexes];
    if (v11)
    {
      v12 = [(IKChangeSet *)self addedIndexes];
      v13 = [v12 mutableCopy];
    }

    else
    {
      v13 = [MEMORY[0x277CCAB58] indexSet];
    }

    v14 = [(IKChangeSet *)self movedIndexesByNewIndex];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __50__IKChangeSet_newIndexByShiftingOldIndex_grouped___block_invoke;
    v26 = &unk_27979B518;
    v15 = v10;
    v27 = v15;
    v16 = v13;
    v28 = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:&v23];

    v17 = [v15 firstIndex];
    if (v17 >= a3)
    {
      v4 = a3;
    }

    else
    {
      v18 = v17;
      v4 = a3;
      do
      {
        --v4;
        v18 = [v15 indexGreaterThanIndex:v18];
      }

      while (v18 < a3);
    }

    v19 = [v16 firstIndex];
    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v19; i != 0x7FFFFFFFFFFFFFFFLL; i = [v16 indexGreaterThanIndex:?])
      {
        v21 = v4 == i && v5;
        if (i >= v4 && !v21)
        {
          break;
        }

        ++v4;
      }
    }
  }

  return v4;
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
  v3 = [(IKChangeSet *)self removedIndexes];
  v4 = [(IKChangeSet *)self addedIndexes];
  v5 = MEMORY[0x277CBEB38];
  v6 = [(IKChangeSet *)self movedIndexesByNewIndex];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [(IKChangeSet *)self movedIndexesByNewIndex];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __31__IKChangeSet_inverseChangeSet__block_invoke;
  v26[3] = &unk_27979B540;
  v9 = v7;
  v27 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v26];

  v10 = MEMORY[0x277CBEB38];
  v11 = [(IKChangeSet *)self updatedIndexesByNewIndex];
  v12 = [v10 dictionaryWithCapacity:{objc_msgSend(v11, "count")}];

  v13 = [(IKChangeSet *)self updatedIndexesByNewIndex];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __31__IKChangeSet_inverseChangeSet__block_invoke_2;
  v24 = &unk_27979B540;
  v14 = v12;
  v25 = v14;
  [v13 enumerateKeysAndObjectsUsingBlock:&v21];

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
    v19 = [(IKChangeSet *)v15 initWithAddedIndexes:v3 removedIndexes:v4 movedIndexesByNewIndex:v17 updatedIndexesByNewIndex:v18];

    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v19 = [(IKChangeSet *)v15 initWithAddedIndexes:v3 removedIndexes:v4 movedIndexesByNewIndex:v17 updatedIndexesByNewIndex:0];
  if (v16)
  {
LABEL_6:
  }

LABEL_7:
  v19->_reducing = 1;

  return v19;
}

- (id)changeSetByConcatenatingChangeSet:(id)a3
{
  v4 = a3;
  v5 = [v4 addedIndexes];
  if (v5)
  {
    v6 = [v4 addedIndexes];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = [MEMORY[0x277CCAB58] indexSet];
  }

  v8 = [(IKChangeSet *)self addedIndexes];
  if (v8)
  {
    v9 = [(IKChangeSet *)self addedIndexes];
    v10 = [v9 firstIndex];

    while (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v4 newIndexForOldIndex:v10];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v7 addIndex:v11];
      }

      v12 = [(IKChangeSet *)self addedIndexes];
      v10 = [v12 indexGreaterThanIndex:v10];
    }
  }

  else
  {
  }

  v13 = [(IKChangeSet *)self removedIndexes];
  if (v13)
  {
    v14 = [(IKChangeSet *)self removedIndexes];
    v15 = [v14 mutableCopy];
  }

  else
  {
    v15 = [MEMORY[0x277CCAB58] indexSet];
  }

  v16 = [v4 removedIndexes];
  if (v16)
  {
    v17 = [v4 removedIndexes];
    v18 = [v17 firstIndex];

    while (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [(IKChangeSet *)self oldIndexForNewIndex:v18];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v15 addIndex:v19];
      }

      v20 = [v4 removedIndexes];
      v18 = [v20 indexGreaterThanIndex:v18];
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277CBEB38];
  v22 = [(IKChangeSet *)self movedIndexesByNewIndex];
  v23 = [v22 count];
  v24 = [v4 movedIndexesByNewIndex];
  v25 = [v21 dictionaryWithCapacity:{objc_msgSend(v24, "count") + v23}];

  v26 = [(IKChangeSet *)self movedIndexesByNewIndex];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke;
  v86[3] = &unk_27979B518;
  v27 = v4;
  v87 = v27;
  v28 = v25;
  v88 = v28;
  [v26 enumerateKeysAndObjectsUsingBlock:v86];

  v29 = [v27 movedIndexesByNewIndex];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_2;
  v84[3] = &unk_27979B518;
  v84[4] = self;
  v71 = v28;
  v85 = v71;
  [v29 enumerateKeysAndObjectsUsingBlock:v84];

  v68 = v15;
  v69 = v7;
  if ([v27 isReducing])
  {
    v66 = v27;
    v67 = [v27 addedIndexes];
    v70 = [(IKChangeSet *)self removedIndexes];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_3;
    v81[3] = &unk_27979B518;
    v30 = v15;
    v82 = v30;
    v31 = v7;
    v83 = v31;
    v32 = v71;
    [v71 enumerateKeysAndObjectsUsingBlock:v81];
    v33 = [v30 firstIndex];
    if (v33 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v33; i != 0x7FFFFFFFFFFFFFFFLL; i = [v30 indexGreaterThanIndex:i])
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

        v38 = [v31 firstIndex];
        if (v38 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = v38;
          while (v39 < v36)
          {
            ++v36;
            v39 = [v31 indexGreaterThanIndex:v39];
            if (v39 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_36;
            }
          }

          if ([v70 containsIndex:i] && (objc_msgSend(v67, "containsIndex:", v39) & 1) != 0)
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

    v15 = v68;
    v7 = v69;
    v27 = v66;
  }

  v45 = MEMORY[0x277CBEB38];
  v46 = [(IKChangeSet *)self updatedIndexesByNewIndex];
  v47 = [v46 count];
  v48 = [v27 updatedIndexesByNewIndex];
  v49 = [v45 dictionaryWithCapacity:{objc_msgSend(v48, "count") + v47}];

  v50 = [(IKChangeSet *)self updatedIndexesByNewIndex];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_5;
  v75[3] = &unk_27979B518;
  v51 = v27;
  v76 = v51;
  v52 = v49;
  v77 = v52;
  [v50 enumerateKeysAndObjectsUsingBlock:v75];

  v53 = [v51 updatedIndexesByNewIndex];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __49__IKChangeSet_changeSetByConcatenatingChangeSet___block_invoke_6;
  v72[3] = &unk_27979B568;
  v72[4] = self;
  v54 = v52;
  v73 = v54;
  v55 = v51;
  v74 = v55;
  [v53 enumerateKeysAndObjectsUsingBlock:v72];

  v56 = [IKChangeSet alloc];
  v57 = [v7 count];
  if (v57)
  {
    v58 = [v7 copy];
  }

  else
  {
    v58 = 0;
  }

  v59 = [v15 count];
  if (v59)
  {
    v60 = [v15 copy];
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

- (id)changeSetBySubtractingChangeSet:(id)a3
{
  v4 = [a3 inverseChangeSet];
  v5 = [(IKChangeSet *)self changeSetByConcatenatingChangeSet:v4];

  return v5;
}

- (id)changeSetByConvertingOldIndexesUsingChangeSet:(id)a3 andNewIndexesUsingChangeSet:(id)a4
{
  v6 = a3;
  v7 = [(IKChangeSet *)self changeSetByConcatenatingChangeSet:a4];
  v8 = [v6 inverseChangeSet];

  v9 = [v8 changeSetByConcatenatingChangeSet:v7];

  return v9;
}

@end