@interface PXGView(PXCuratedLibraryHitTestResultExtensions)
- (id)curatedLibraryHitTestResultsInRect:()PXCuratedLibraryHitTestResultExtensions withControl:;
- (id)firstCuratedLibraryHitTestResultsAtPoint:()PXCuratedLibraryHitTestResultExtensions withControl:;
- (void)enumerateCuratedLibraryHitTestResultsAtPoint:()PXCuratedLibraryHitTestResultExtensions usingBlock:;
- (void)enumerateCuratedLibraryHitTestResultsAtPoint:()PXCuratedLibraryHitTestResultExtensions withControls:usingBlock:;
- (void)enumerateCuratedLibraryHitTestResultsInDirection:()PXCuratedLibraryHitTestResultExtensions fromSpriteReference:usingBlock:;
- (void)enumerateCuratedLibraryHitTestResultsInRect:()PXCuratedLibraryHitTestResultExtensions usingBlock:;
@end

@implementation PXGView(PXCuratedLibraryHitTestResultExtensions)

- (id)curatedLibraryHitTestResultsInRect:()PXCuratedLibraryHitTestResultExtensions withControl:
{
  array = [MEMORY[0x277CBEB18] array];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__PXGView_PXCuratedLibraryHitTestResultExtensions__curatedLibraryHitTestResultsInRect_withControl___block_invoke;
  v16[3] = &unk_278297BC0;
  v18 = a7;
  v14 = array;
  v17 = v14;
  [self enumerateCuratedLibraryHitTestResultsInRect:v16 usingBlock:{a2, a3, a4, a5}];

  return v14;
}

- (void)enumerateCuratedLibraryHitTestResultsInRect:()PXCuratedLibraryHitTestResultExtensions usingBlock:
{
  v12 = a7;
  v13 = [self hitTestResultsInRect:0 passingTest:{a2, a3, a4, a5}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__PXGView_PXCuratedLibraryHitTestResultExtensions__enumerateCuratedLibraryHitTestResultsInRect_usingBlock___block_invoke;
  v15[3] = &unk_278297C30;
  v16 = v12;
  v14 = v12;
  [v13 enumerateObjectsUsingBlock:v15];
}

- (void)enumerateCuratedLibraryHitTestResultsInDirection:()PXCuratedLibraryHitTestResultExtensions fromSpriteReference:usingBlock:
{
  v8 = a5;
  if (v8)
  {
    v9 = [self hitTestResultsInDirection:a3 fromSpriteReference:a4];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __132__PXGView_PXCuratedLibraryHitTestResultExtensions__enumerateCuratedLibraryHitTestResultsInDirection_fromSpriteReference_usingBlock___block_invoke;
    v10[3] = &unk_278297C30;
    v11 = v8;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

- (id)firstCuratedLibraryHitTestResultsAtPoint:()PXCuratedLibraryHitTestResultExtensions withControl:
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2058;
  v10 = __Block_byref_object_dispose__2059;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __105__PXGView_PXCuratedLibraryHitTestResultExtensions__firstCuratedLibraryHitTestResultsAtPoint_withControl___block_invoke;
  v5[3] = &unk_278297B98;
  v5[4] = &v6;
  v5[5] = a3;
  [self enumerateCuratedLibraryHitTestResultsAtPoint:v5 usingBlock:?];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)enumerateCuratedLibraryHitTestResultsAtPoint:()PXCuratedLibraryHitTestResultExtensions withControls:usingBlock:
{
  v10 = a5;
  v11 = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __121__PXGView_PXCuratedLibraryHitTestResultExtensions__enumerateCuratedLibraryHitTestResultsAtPoint_withControls_usingBlock___block_invoke;
  v14[3] = &unk_278297B70;
  v15 = v10;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [self enumerateCuratedLibraryHitTestResultsAtPoint:v14 usingBlock:{a2, a3}];
}

- (void)enumerateCuratedLibraryHitTestResultsAtPoint:()PXCuratedLibraryHitTestResultExtensions usingBlock:
{
  v8 = a5;
  if (v8)
  {
    v9 = [self hitTestResultsAtPoint:{a2, a3}];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __108__PXGView_PXCuratedLibraryHitTestResultExtensions__enumerateCuratedLibraryHitTestResultsAtPoint_usingBlock___block_invoke;
    v10[3] = &unk_278297C30;
    v11 = v8;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

@end