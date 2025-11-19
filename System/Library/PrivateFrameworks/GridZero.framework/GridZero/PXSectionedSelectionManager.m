@interface PXSectionedSelectionManager
@end

@implementation PXSectionedSelectionManager

uint64_t __106__PXSectionedSelectionManager_DirectionalSelection___moveSelectionFromIndexPath_inDirection_withDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

uint64_t __103__PXSectionedSelectionManager_DirectionalSelection___selectInitialItemForMoveInDirection_withDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

uint64_t __106__PXSectionedSelectionManager_DirectionalSelection___selectInitialSectionForMoveInDirection_withDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedIndexPath:v4];
}

uint64_t __97__PXSectionedSelectionManager_DirectionalSelection__extendSelectionToItemIndexPath_withDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(MEMORY[0x277D3CFD8] + 16);
  v4[0] = *MEMORY[0x277D3CFD8];
  v4[1] = v2;
  return [a2 setCursorIndexPath:v4];
}

void __120__PXSectionedSelectionManager_DirectionalSelection___extendSelectionFromIndexPath_toIndexPath_inDirection_withDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 setSelectedState:(v3 & 1) == 0 forIndexPathSet:v4];
  v6 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v6;
  [v5 setCursorIndexPath:v7];
}

@end