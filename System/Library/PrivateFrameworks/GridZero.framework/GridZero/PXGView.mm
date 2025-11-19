@interface PXGView
@end

@implementation PXGView

void __99__PXGView_PXCuratedLibraryHitTestResultExtensions__curatedLibraryHitTestResultsInRect_withControl___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 control] == *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __107__PXGView_PXCuratedLibraryHitTestResultExtensions__enumerateCuratedLibraryHitTestResultsInRect_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __132__PXGView_PXCuratedLibraryHitTestResultExtensions__enumerateCuratedLibraryHitTestResultsInDirection_fromSpriteReference_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __105__PXGView_PXCuratedLibraryHitTestResultExtensions__firstCuratedLibraryHitTestResultsAtPoint_withControl___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 control] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __121__PXGView_PXCuratedLibraryHitTestResultExtensions__enumerateCuratedLibraryHitTestResultsAtPoint_withControls_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "control")}];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __108__PXGView_PXCuratedLibraryHitTestResultExtensions__enumerateCuratedLibraryHitTestResultsAtPoint_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end