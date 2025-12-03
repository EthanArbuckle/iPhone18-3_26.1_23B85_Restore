@interface PXCuratedLibraryHitTestResult
- (PXCuratedLibraryHitTestResult)initWithControl:(int64_t)control spriteReference:(id)reference layout:(id)layout assetReference:(id)assetReference assetCollectionReference:(id)collectionReference;
- (PXCuratedLibraryHitTestResult)initWithSpriteReference:(id)reference layout:(id)layout identifier:(id)identifier userData:(id)data;
@end

@implementation PXCuratedLibraryHitTestResult

- (PXCuratedLibraryHitTestResult)initWithSpriteReference:(id)reference layout:(id)layout identifier:(id)identifier userData:(id)data
{
  referenceCopy = reference;
  layoutCopy = layout;
  identifierCopy = identifier;
  dataCopy = data;
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryHitTestResult.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXCuratedLibraryHitTestResult initWithSpriteReference:layout:identifier:userData:]"}];

  abort();
}

- (PXCuratedLibraryHitTestResult)initWithControl:(int64_t)control spriteReference:(id)reference layout:(id)layout assetReference:(id)assetReference assetCollectionReference:(id)collectionReference
{
  assetReferenceCopy = assetReference;
  collectionReferenceCopy = collectionReference;
  v15 = collectionReferenceCopy;
  if (assetReferenceCopy)
  {
    v16 = assetReferenceCopy;
  }

  else
  {
    v16 = collectionReferenceCopy;
  }

  v17 = v16;
  v21.receiver = self;
  v21.super_class = PXCuratedLibraryHitTestResult;
  v18 = [(PXGHitTestResult *)&v21 initWithSpriteReference:reference layout:layout identifier:0 userData:v17];
  v19 = v18;
  if (v18)
  {
    v18->_control = control;
    objc_storeStrong(&v18->_assetReference, assetReference);
    objc_storeStrong(&v19->_assetCollectionReference, collectionReference);
  }

  return v19;
}

@end