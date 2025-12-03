@interface HFUniqueArrayDiff
+ (id)_createContainerSetFromArray:(id)array options:(id)options;
+ (id)diffFromArray:(id)array toArray:(id)toArray options:(id)options;
- (NSIndexSet)changedIndexes;
- (NSIndexSet)deletedIndexes;
- (NSIndexSet)insertedIndexes;
- (NSSet)movedIndexes;
- (unint64_t)numberOfOperations;
- (void)enumerateChangesUsingBlock:(id)block;
- (void)enumerateDeletesUsingBlock:(id)block;
- (void)enumerateInsertsUsingBlock:(id)block;
- (void)enumerateMovesUsingBlock:(id)block;
@end

@implementation HFUniqueArrayDiff

+ (id)diffFromArray:(id)array toArray:(id)toArray options:(id)options
{
  v129 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  toArrayCopy = toArray;
  optionsCopy = options;
  v11 = objc_alloc_init(self);
  [v11 setFromArray:arrayCopy];
  [v11 setToArray:toArrayCopy];
  if (![arrayCopy count])
  {
    v74 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(toArrayCopy, "count")}];
    [v11 setInsertedIndexes:v74];
LABEL_68:

    goto LABEL_71;
  }

  if (![toArrayCopy count])
  {
    v74 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(arrayCopy, "count")}];
    [v11 setDeletedIndexes:v74];
    goto LABEL_68;
  }

  v81 = v11;
  v82 = arrayCopy;
  v12 = [self _createContainerSetFromArray:arrayCopy options:optionsCopy];
  v80 = toArrayCopy;
  v85 = optionsCopy;
  v13 = [self _createContainerSetFromArray:toArrayCopy options:optionsCopy];
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [MEMORY[0x277CBEB58] set];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v118 objects:v128 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v119;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v119 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v118 + 1) + 8 * i);
        if ([v13 containsObject:v21])
        {
          v22 = v15;
        }

        else
        {
          v22 = v14;
        }

        [v22 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v118 objects:v128 count:16];
    }

    while (v18);
  }

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v14;
  v24 = [obj countByEnumeratingWithState:&v114 objects:v127 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v115;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v115 != v26)
        {
          objc_enumerationMutation(obj);
        }

        [indexSet addIndex:{objc_msgSend(*(*(&v114 + 1) + 8 * j), "index")}];
      }

      v25 = [obj countByEnumeratingWithState:&v114 objects:v127 count:16];
    }

    while (v25);
  }

  v83 = indexSet;

  v28 = [MEMORY[0x277CBEB58] set];
  v97 = [MEMORY[0x277CBEB58] set];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v89 = v13;
  v29 = [v89 countByEnumeratingWithState:&v110 objects:v126 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v111;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v111 != v31)
        {
          objc_enumerationMutation(v89);
        }

        v33 = *(*(&v110 + 1) + 8 * k);
        if ([v16 containsObject:v33])
        {
          v34 = v97;
        }

        else
        {
          v34 = v28;
        }

        [v34 addObject:v33];
      }

      v30 = [v89 countByEnumeratingWithState:&v110 objects:v126 count:16];
    }

    while (v30);
  }

  indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v88 = v28;
  v36 = [v88 countByEnumeratingWithState:&v106 objects:v125 count:16];
  v37 = v85;
  if (v36)
  {
    v38 = v36;
    v39 = *v107;
    do
    {
      for (m = 0; m != v38; ++m)
      {
        if (*v107 != v39)
        {
          objc_enumerationMutation(v88);
        }

        [indexSet2 addIndex:{objc_msgSend(*(*(&v106 + 1) + 8 * m), "index")}];
      }

      v38 = [v88 countByEnumeratingWithState:&v106 objects:v125 count:16];
    }

    while (v38);
  }

  v41 = [v15 count];
  if (v41 != [v97 count])
  {
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v97, "count")}];
    NSLog(&cfstr_UnexpectedDisc.isa, v42, v43);
  }

  v79 = v16;
  indexSet3 = [MEMORY[0x277CCAB58] indexSet];
  v84 = [MEMORY[0x277CBEB58] set];
  v44 = [v83 mutableCopy];
  v96 = [indexSet2 mutableCopy];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v87 = v15;
  v45 = [v87 countByEnumeratingWithState:&v102 objects:v124 count:16];
  v95 = indexSet2;
  if (v45)
  {
    v46 = v45;
    v93 = *v103;
    do
    {
      for (n = 0; n != v46; ++n)
      {
        if (*v103 != v93)
        {
          objc_enumerationMutation(v87);
        }

        v48 = *(*(&v102 + 1) + 8 * n);
        v49 = [v97 member:v48];
        if (!v49)
        {
          object = [v48 object];
          NSLog(&cfstr_MissingObjectI.isa, object);
          goto LABEL_51;
        }

        v50 = v44;
        changeComparator = [v37 changeComparator];
        if (changeComparator)
        {
          v52 = changeComparator;
          changeComparator2 = [v37 changeComparator];
          object2 = [v48 object];
          object3 = [v49 object];
          v56 = (changeComparator2)[2](changeComparator2, object2, object3);

          indexSet2 = v95;
          v37 = v85;

          if (v56)
          {
            [indexSet3 addIndex:{objc_msgSend(v48, "index")}];
          }
        }

        index = [v48 index];
        v44 = v50;
        if (index != [v49 index])
        {
          [v50 addIndex:{objc_msgSend(v48, "index")}];
          [v96 addIndex:{objc_msgSend(v49, "index")}];
          v58 = MEMORY[0x277CCAA70];
          v123[0] = [v48 index];
          v123[1] = [v49 index];
          object = [v58 indexPathWithIndexes:v123 length:2];
          [v84 addObject:object];
LABEL_51:
        }
      }

      v46 = [v87 countByEnumeratingWithState:&v102 objects:v124 count:16];
    }

    while (v46);
  }

  allObjects = [v84 allObjects];
  v61 = [allObjects sortedArrayUsingComparator:&__block_literal_global_215];

  v62 = [MEMORY[0x277CBEB58] set];
  v63 = [v83 mutableCopy];
  v64 = [indexSet2 mutableCopy];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v65 = v61;
  v66 = v63;
  v86 = v65;
  v94 = [v65 countByEnumeratingWithState:&v98 objects:v122 count:16];
  if (v94)
  {
    v92 = *v99;
    do
    {
      for (ii = 0; ii != v94; ++ii)
      {
        if (*v99 != v92)
        {
          objc_enumerationMutation(v86);
        }

        v68 = *(*(&v98 + 1) + 8 * ii);
        v69 = [v68 indexAtPosition:0];
        v70 = [v68 indexAtPosition:1];
        v71 = v44;
        v72 = v69 - [v44 countOfIndexesInRange:{0, v69}];
        if (v72 == v70 - [v96 countOfIndexesInRange:{0, v70}])
        {
          [v71 removeIndex:v69];
          [v96 removeIndex:v70];
        }

        else
        {
          [v62 addObject:v68];
          [v63 addIndex:v69];
          [v64 addIndex:v70];
          [indexSet3 removeIndex:v69];
        }

        v44 = v71;
        indexSet2 = v95;
      }

      v94 = [v86 countByEnumeratingWithState:&v98 objects:v122 count:16];
    }

    while (v94);
  }

  v11 = v81;
  if ([v85 allowMoves])
  {
    v73 = v83;
    [v81 setDeletedIndexes:v83];
    [v81 setInsertedIndexes:indexSet2];
    [v81 setMovedIndexes:v62];
    arrayCopy = v82;
  }

  else
  {
    [v81 setDeletedIndexes:v63];
    [v81 setInsertedIndexes:v64];
    v75 = [MEMORY[0x277CBEB98] set];
    [v81 setMovedIndexes:v75];

    arrayCopy = v82;
    v73 = v83;
  }

  v76 = v64;
  toArrayCopy = v80;
  [v81 setChangedIndexes:indexSet3];

  optionsCopy = v85;
LABEL_71:

  v77 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __51__HFUniqueArrayDiff_diffFromArray_toArray_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 indexAtPosition:0];
  v7 = [v5 indexAtPosition:1];

  v8 = [v4 indexAtPosition:0];
  v9 = [v4 indexAtPosition:1];

  v10 = v7 - v6;
  if (v6 > v7)
  {
    v10 = v6 - v7;
  }

  v11 = v9 - v8;
  if (v8 > v9)
  {
    v11 = v8 - v9;
  }

  if (v6 < v8)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  v13 = v10 == v11;
  if (v10 < v11)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (v13)
  {
    return v12;
  }

  else
  {
    return v14;
  }
}

+ (id)_createContainerSetFromArray:(id)array options:(id)options
{
  arrayCopy = array;
  optionsCopy = options;
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__HFUniqueArrayDiff__createContainerSetFromArray_options___block_invoke;
  v14[3] = &unk_277E01010;
  v8 = v7;
  v15 = v8;
  v16 = optionsCopy;
  v9 = optionsCopy;
  [arrayCopy enumerateObjectsUsingBlock:v14];
  v10 = [v8 count];
  if (v10 != [arrayCopy count])
  {
    NSLog(&cfstr_DetectedAnAtte.isa, arrayCopy);
  }

  v11 = v16;
  v12 = v8;

  return v8;
}

void __58__HFUniqueArrayDiff__createContainerSetFromArray_options___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v10 = [v6 equalComparator];
  v8 = [*(a1 + 40) hashGenerator];
  v9 = [_HFSetContainer containerWithObject:v7 atIndex:a3 comparator:v10 hashGenerator:v8];

  [v5 addObject:v9];
}

- (NSIndexSet)insertedIndexes
{
  insertedIndexes = self->_insertedIndexes;
  if (insertedIndexes)
  {
    indexSet = insertedIndexes;
  }

  else
  {
    indexSet = [MEMORY[0x277CCAA78] indexSet];
  }

  return indexSet;
}

- (NSIndexSet)deletedIndexes
{
  deletedIndexes = self->_deletedIndexes;
  if (deletedIndexes)
  {
    indexSet = deletedIndexes;
  }

  else
  {
    indexSet = [MEMORY[0x277CCAA78] indexSet];
  }

  return indexSet;
}

- (NSIndexSet)changedIndexes
{
  changedIndexes = self->_changedIndexes;
  if (changedIndexes)
  {
    indexSet = changedIndexes;
  }

  else
  {
    indexSet = [MEMORY[0x277CCAA78] indexSet];
  }

  return indexSet;
}

- (NSSet)movedIndexes
{
  movedIndexes = self->_movedIndexes;
  if (movedIndexes)
  {
    v3 = movedIndexes;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  return v3;
}

- (unint64_t)numberOfOperations
{
  deletedIndexes = [(HFUniqueArrayDiff *)self deletedIndexes];
  v4 = [deletedIndexes count];
  insertedIndexes = [(HFUniqueArrayDiff *)self insertedIndexes];
  v6 = [insertedIndexes count] + v4;
  movedIndexes = [(HFUniqueArrayDiff *)self movedIndexes];
  v8 = [movedIndexes count];
  changedIndexes = [(HFUniqueArrayDiff *)self changedIndexes];
  v10 = v8 + [changedIndexes count];

  return v6 + v10;
}

- (void)enumerateInsertsUsingBlock:(id)block
{
  blockCopy = block;
  insertedIndexes = [(HFUniqueArrayDiff *)self insertedIndexes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HFUniqueArrayDiff_enumerateInsertsUsingBlock___block_invoke;
  v7[3] = &unk_277E01038;
  v8 = blockCopy;
  v6 = blockCopy;
  [insertedIndexes enumerateIndexesUsingBlock:v7];
}

- (void)enumerateDeletesUsingBlock:(id)block
{
  blockCopy = block;
  deletedIndexes = [(HFUniqueArrayDiff *)self deletedIndexes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HFUniqueArrayDiff_enumerateDeletesUsingBlock___block_invoke;
  v7[3] = &unk_277E01038;
  v8 = blockCopy;
  v6 = blockCopy;
  [deletedIndexes enumerateIndexesWithOptions:2 usingBlock:v7];
}

- (void)enumerateChangesUsingBlock:(id)block
{
  blockCopy = block;
  changedIndexes = [(HFUniqueArrayDiff *)self changedIndexes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HFUniqueArrayDiff_enumerateChangesUsingBlock___block_invoke;
  v7[3] = &unk_277E01038;
  v8 = blockCopy;
  v6 = blockCopy;
  [changedIndexes enumerateIndexesUsingBlock:v7];
}

- (void)enumerateMovesUsingBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  movedIndexes = [(HFUniqueArrayDiff *)self movedIndexes];
  allObjects = [movedIndexes allObjects];
  v7 = [allObjects sortedArrayUsingComparator:&__block_literal_global_76_3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        blockCopy[2](blockCopy, [*(*(&v14 + 1) + 8 * v12) indexAtPosition:{0, v14}], objc_msgSend(*(*(&v14 + 1) + 8 * v12), "indexAtPosition:", 1));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end