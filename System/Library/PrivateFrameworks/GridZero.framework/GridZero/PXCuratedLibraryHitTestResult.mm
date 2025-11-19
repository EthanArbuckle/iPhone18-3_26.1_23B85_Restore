@interface PXCuratedLibraryHitTestResult
- (PXCuratedLibraryHitTestResult)initWithControl:(int64_t)a3 spriteReference:(id)a4 layout:(id)a5 assetReference:(id)a6 assetCollectionReference:(id)a7;
- (PXCuratedLibraryHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userData:(id)a6;
@end

@implementation PXCuratedLibraryHitTestResult

- (PXCuratedLibraryHitTestResult)initWithSpriteReference:(id)a3 layout:(id)a4 identifier:(id)a5 userData:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryHitTestResult.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXCuratedLibraryHitTestResult initWithSpriteReference:layout:identifier:userData:]"}];

  abort();
}

- (PXCuratedLibraryHitTestResult)initWithControl:(int64_t)a3 spriteReference:(id)a4 layout:(id)a5 assetReference:(id)a6 assetCollectionReference:(id)a7
{
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;
  v21.receiver = self;
  v21.super_class = PXCuratedLibraryHitTestResult;
  v18 = [(PXGHitTestResult *)&v21 initWithSpriteReference:a4 layout:a5 identifier:0 userData:v17];
  v19 = v18;
  if (v18)
  {
    v18->_control = a3;
    objc_storeStrong(&v18->_assetReference, a6);
    objc_storeStrong(&v19->_assetCollectionReference, a7);
  }

  return v19;
}

@end