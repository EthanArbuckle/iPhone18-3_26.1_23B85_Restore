@interface PXSectionedSelectionManager(DirectionalSelection)
- (uint64_t)_selectInitialItemForMoveInDirection:()DirectionalSelection withDelegate:;
- (uint64_t)_selectInitialSectionForMoveInDirection:()DirectionalSelection withDelegate:;
- (uint64_t)moveSelectionInDirection:()DirectionalSelection withDelegate:;
- (void)_extendSelectionFromIndexPath:()DirectionalSelection toIndexPath:inDirection:withDelegate:;
- (void)_initialItemIndexPathForMoveInDirection:()DirectionalSelection;
- (void)_initialSectionIndexPathForMoveInDirection:()DirectionalSelection;
- (void)_moveItemSelectionInDirection:()DirectionalSelection withDelegate:;
- (void)_moveSectionSelectionInDirection:()DirectionalSelection withDelegate:;
- (void)_moveSelectionFromIndexPath:()DirectionalSelection inDirection:withDelegate:;
- (void)extendSelectionFromIndexPath:()DirectionalSelection inDirection:withDelegate:;
- (void)extendSelectionToItemIndexPath:()DirectionalSelection withDelegate:;
- (void)startingIndexPathForMoveInDirection:()DirectionalSelection;
@end

@implementation PXSectionedSelectionManager(DirectionalSelection)

- (void)_moveSelectionFromIndexPath:()DirectionalSelection inDirection:withDelegate:
{
  v9 = a4;
  v10 = v9;
  *a5 = 0u;
  a5[1] = 0u;
  if (v9)
  {
    v11 = a2[1];
    v17[0] = *a2;
    v17[1] = v11;
    [v9 selectionManager:self indexPathClosestToIndexPath:v17 inDirection:a3];
    v12 = *a5;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != *MEMORY[0x277D3CF78])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __106__PXSectionedSelectionManager_DirectionalSelection___moveSelectionFromIndexPath_inDirection_withDelegate___block_invoke;
    v14[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v13 = a5[1];
    v15 = *a5;
    v16 = v13;
    [self performChanges:v14];
  }
}

- (uint64_t)_selectInitialItemForMoveInDirection:()DirectionalSelection withDelegate:
{
  *a2 = 0u;
  a2[1] = 0u;
  result = [self _initialItemIndexPathForMoveInDirection:?];
  if (*a2 != *MEMORY[0x277D3CF78])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __103__PXSectionedSelectionManager_DirectionalSelection___selectInitialItemForMoveInDirection_withDelegate___block_invoke;
    v6[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v5 = a2[1];
    v7 = *a2;
    v8 = v5;
    return [self performChanges:v6];
  }

  return result;
}

- (uint64_t)_selectInitialSectionForMoveInDirection:()DirectionalSelection withDelegate:
{
  *a2 = 0u;
  a2[1] = 0u;
  result = [self _initialSectionIndexPathForMoveInDirection:?];
  if (*a2 != *MEMORY[0x277D3CF78])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __106__PXSectionedSelectionManager_DirectionalSelection___selectInitialSectionForMoveInDirection_withDelegate___block_invoke;
    v6[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v5 = a2[1];
    v7 = *a2;
    v8 = v5;
    return [self performChanges:v6];
  }

  return result;
}

- (void)_initialItemIndexPathForMoveInDirection:()DirectionalSelection
{
  selectionSnapshot = [self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  if (a2 <= 6)
  {
    if (((1 << a2) & 0x34) != 0)
    {
      if (dataSource)
      {
        [dataSource firstItemIndexPath];
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    if (((1 << a2) & 0x4A) != 0)
    {
      if (dataSource)
      {
        [dataSource lastItemIndexPath];
        goto LABEL_10;
      }

LABEL_8:
      *a3 = 0u;
      a3[1] = 0u;
      goto LABEL_10;
    }

    v6 = *(MEMORY[0x277D3CFD8] + 16);
    *a3 = *MEMORY[0x277D3CFD8];
    a3[1] = v6;
  }

LABEL_10:
}

- (void)_initialSectionIndexPathForMoveInDirection:()DirectionalSelection
{
  selectionSnapshot = [self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];

  if (a2 <= 6)
  {
    if (((1 << a2) & 0x34) != 0)
    {
      if (dataSource)
      {
        [dataSource firstSectionIndexPath];
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    if (((1 << a2) & 0x4A) != 0)
    {
      if (dataSource)
      {
        [dataSource lastSectionIndexPath];
        goto LABEL_10;
      }

LABEL_8:
      *a3 = 0u;
      a3[1] = 0u;
      goto LABEL_10;
    }

    v6 = *(MEMORY[0x277D3CFD8] + 16);
    *a3 = *MEMORY[0x277D3CFD8];
    a3[1] = v6;
  }

LABEL_10:
}

- (void)_moveItemSelectionInDirection:()DirectionalSelection withDelegate:
{
  v10 = 0u;
  v11 = 0u;
  v7 = a3;
  [self startingIndexPathForMoveInDirection:a2];
  v8 = *(MEMORY[0x277D3CFD8] + 16);
  *a4 = *MEMORY[0x277D3CFD8];
  a4[1] = v8;
  if (v10 == *MEMORY[0x277D3CF78])
  {
    [self _selectInitialItemForMoveInDirection:a2 withDelegate:v7];
  }

  else
  {
    v9[0] = v10;
    v9[1] = v11;
    [self _moveSelectionFromIndexPath:v9 inDirection:a2 withDelegate:v7];
  }
}

- (void)_moveSectionSelectionInDirection:()DirectionalSelection withDelegate:
{
  v10 = 0u;
  v11 = 0u;
  v7 = a3;
  [self startingIndexPathForMoveInDirection:a2];
  v8 = *(MEMORY[0x277D3CFD8] + 16);
  *a4 = *MEMORY[0x277D3CFD8];
  a4[1] = v8;
  if (v10 == *MEMORY[0x277D3CF78])
  {
    [self _selectInitialSectionForMoveInDirection:a2 withDelegate:v7];
  }

  else
  {
    v9[0] = v10;
    v9[1] = v11;
    [self _moveSelectionFromIndexPath:v9 inDirection:a2 withDelegate:v7];
  }
}

- (uint64_t)moveSelectionInDirection:()DirectionalSelection withDelegate:
{
  v11 = a3;
  v7 = [v11 selectionBasisForSelectionManager:self];
  v8 = *(MEMORY[0x277D3CFD8] + 16);
  *a4 = *MEMORY[0x277D3CFD8];
  a4[1] = v8;
  if (v7)
  {
    v9 = v11;
    if (v7 != 1)
    {
      goto LABEL_6;
    }

    v7 = [self _moveSectionSelectionInDirection:a2 withDelegate:v11];
  }

  else
  {
    v7 = [self _moveItemSelectionInDirection:a2 withDelegate:v11];
  }

  v9 = v11;
LABEL_6:

  return MEMORY[0x2821F96F8](v7, v9);
}

- (void)extendSelectionFromIndexPath:()DirectionalSelection inDirection:withDelegate:
{
  v8 = a5;
  v9 = v8;
  v15 = 0u;
  v16 = 0u;
  if (v8)
  {
    v10 = a3[1];
    v13 = *a3;
    v14 = v10;
    [v8 selectionManager:self indexPathClosestToIndexPath:&v13 inDirection:a4];
  }

  v11 = a3[1];
  v13 = *a3;
  v14 = v11;
  v12[0] = v15;
  v12[1] = v16;
  [self _extendSelectionFromIndexPath:&v13 toIndexPath:v12 inDirection:a4 withDelegate:v9];
}

- (void)extendSelectionToItemIndexPath:()DirectionalSelection withDelegate:
{
  v6 = a4;
  selectionSnapshot = [self selectionSnapshot];
  if (([selectionSnapshot isAnyItemSelected] & 1) == 0)
  {
    [self performChanges:&__block_literal_global_8955];
  }

  v11 = 0u;
  v12 = 0u;
  [self startingIndexPathForMoveInDirection:0];
  v10[0] = v11;
  v10[1] = v12;
  v8 = a3[1];
  v9[0] = *a3;
  v9[1] = v8;
  [self _extendSelectionFromIndexPath:v10 toIndexPath:v9 inDirection:0 withDelegate:v6];
}

- (void)_extendSelectionFromIndexPath:()DirectionalSelection toIndexPath:inDirection:withDelegate:
{
  v11 = a5;
  v12 = v11;
  if (*a3 != *MEMORY[0x277D3CF78])
  {
    if (*a2 == *MEMORY[0x277D3CF78])
    {
      v14 = a3[1];
      v42 = *a3;
      v43 = v14;
      v15 = [MEMORY[0x277D3CD78] indexPathSetWithIndexPath:&v42];
      if (a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = a2[1];
      v42 = *a2;
      v43 = v16;
      v17 = a3[1];
      v40 = *a3;
      v41 = v17;
      v18 = [v11 selectionManager:self indexPathsBetweenIndexPath:&v42 andIndexPath:&v40 inDirection:a4];
      v15 = [v18 mutableCopy];

      if (a4)
      {
        goto LABEL_10;
      }
    }

    v19 = a2[1];
    v42 = *a2;
    v43 = v19;
    v20 = a3[1];
    v40 = *a3;
    v41 = v20;
    if (PXSimpleIndexPathCompare() == -1)
    {
      a4 = 4;
    }

    else
    {
      a4 = 3;
    }

LABEL_10:
    selectionSnapshot = [self selectionSnapshot];
    v22 = a3[1];
    v42 = *a3;
    v43 = v22;
    v23 = [selectionSnapshot isIndexPathSelected:&v42];

    if (!v23)
    {
      goto LABEL_30;
    }

    v24 = a3[1];
    v42 = *a3;
    v43 = v24;
    [v15 removeIndexPath:&v42];
    v25 = a4 & 0xFFFFFFFFFFFFFFFELL;
    if (a4 == 3 || a4 == 6)
    {
      if (v25 != 4)
      {
        goto LABEL_19;
      }
    }

    else if (v25 != 4)
    {
      goto LABEL_26;
    }

    if (*(a3 + 2) > *(a2 + 2))
    {
      v42 = 0u;
      v43 = 0u;
      selectionSnapshot2 = [self selectionSnapshot];
      v27 = selectionSnapshot2;
      if (selectionSnapshot2)
      {
        [selectionSnapshot2 firstSelectedIndexPath];
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
      }

      v28 = v43 >= *(a2 + 2) && *(&v42 + 1) >= *(a2 + 1);
LABEL_20:
      if ((a4 == 6 || a4 == 3) && *(a3 + 2) < *(a2 + 2))
      {
        v42 = 0u;
        v43 = 0u;
        selectionSnapshot3 = [self selectionSnapshot];
        v30 = selectionSnapshot3;
        if (selectionSnapshot3)
        {
          [selectionSnapshot3 lastSelectedIndexPath];
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
        }

        if (v43 > *(a2 + 2) || *(&v42 + 1) > *(a2 + 1))
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      if (v28)
      {
LABEL_26:
        v31 = a2[1];
        v42 = *a2;
        v43 = v31;
        [v15 addIndexPath:&v42];
      }

LABEL_30:
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v32 = a3[1];
      v37 = *a3;
      v35[2] = __120__PXSectionedSelectionManager_DirectionalSelection___extendSelectionFromIndexPath_toIndexPath_inDirection_withDelegate___block_invoke;
      v35[3] = &unk_278299558;
      v39 = v23;
      v36 = v15;
      v38 = v32;
      v33 = v15;
      [self performChanges:v35];
      v34 = a3[1];
      *a6 = *a3;
      a6[1] = v34;

      goto LABEL_31;
    }

LABEL_19:
    v28 = 1;
    goto LABEL_20;
  }

  v13 = a3[1];
  *a6 = *a3;
  a6[1] = v13;
LABEL_31:
}

- (void)startingIndexPathForMoveInDirection:()DirectionalSelection
{
  v5 = *(MEMORY[0x277D3CFD8] + 16);
  *a3 = *MEMORY[0x277D3CFD8];
  a3[1] = v5;
  selectionSnapshot = [self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  if ([selectedIndexPaths count] == 1)
  {
    if (selectedIndexPaths)
    {
      [selectedIndexPaths anyItemIndexPath];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *a3 = v11;
    a3[1] = v12;
  }

  v8 = *a3;
  v9 = *MEMORY[0x277D3CF78];
  if (*a3 == *MEMORY[0x277D3CF78])
  {
    if (selectionSnapshot)
    {
      [selectionSnapshot cursorIndexPath];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *a3 = v11;
    a3[1] = v12;
    v8 = *a3;
  }

  if (v8 == v9)
  {
    if (selectionSnapshot)
    {
      [selectionSnapshot pendingIndexPath];
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    *a3 = v11;
    a3[1] = v12;
    v8 = *a3;
  }

  if (v8 == v9 && a2 <= 6)
  {
    if (((1 << a2) & 0x34) != 0)
    {
      if (selectionSnapshot)
      {
        [selectionSnapshot lastSelectedIndexPath];
        goto LABEL_27;
      }

LABEL_26:
      v11 = 0u;
      v12 = 0u;
      goto LABEL_27;
    }

    if (((1 << a2) & 0x4A) != 0)
    {
      if (selectionSnapshot)
      {
        [selectionSnapshot firstSelectedIndexPath];
LABEL_27:
        *a3 = v11;
        a3[1] = v12;
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

LABEL_28:
}

@end