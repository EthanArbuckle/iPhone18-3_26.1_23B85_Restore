@interface PXPhotosViewInteraction
+ (id)interactionWithViewModel:(id)a3;
- (PXPhotosContentController)contentController;
- (PXPhotosViewInteraction)initWithViewModel:(id)a3;
- (PXPhotosViewInteractionDelegate)delegate;
- (UIViewController)presentingViewController;
- (id)assetHitTestResultAtPoint:(CGPoint)a3 coordinateSpace:(id)a4;
- (id)assetReferenceAtLocation:(CGPoint)a3 withPadding:(UIEdgeInsets)a4 inCoordinateSpace:(id)a5;
- (id)regionOfInterestForAssetReference:(id)a3 image:(CGImage *)a4 fallbackMediaProvider:(id)a5 shouldSnapshot:(BOOL)a6;
- (id)zoomablePhotosInteraction:(id)a3 assetReferenceAtLocation:(CGPoint)a4;
- (void)setZoomablePhotosInteraction:(id)a3;
- (void)zoomablePhotosInteractionWillBegin:(id)a3;
@end

@implementation PXPhotosViewInteraction

- (PXPhotosContentController)contentController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentController);

  return WeakRetained;
}

- (PXPhotosViewInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)zoomablePhotosInteraction:(id)a3 assetReferenceAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(PXGInteraction *)self view];
  v8 = [(PXPhotosViewInteraction *)self assetHitTestResultAtPoint:v7 coordinateSpace:x, y];

  v9 = [v8 userData];

  return v9;
}

- (void)zoomablePhotosInteractionWillBegin:(id)a3
{
  v3 = [(PXPhotosViewInteraction *)self viewModel];
  v6 = [v3 dataSourceManager];

  v4 = [v6 dataSource];
  v5 = [v4 areAllSectionsConsideredAccurate];

  if ((v5 & 1) == 0)
  {
    [v6 performChanges:&__block_literal_global_4];
  }
}

- (UIViewController)presentingViewController
{
  v3 = [(PXPhotosViewInteraction *)self delegate];
  v4 = [v3 presentingViewControllerForPhotosInteraction:self];

  return v4;
}

- (id)regionOfInterestForAssetReference:(id)a3 image:(CGImage *)a4 fallbackMediaProvider:(id)a5 shouldSnapshot:(BOOL)a6
{
  v9 = a5;
  v10 = a3;
  v11 = [(PXGInteraction *)self view];
  v12 = [(PXGInteraction *)self layout];
  v13 = PXRegionOfInterestForAssetReference(v11, v12, v10, a4, v9);

  return v13;
}

- (id)assetReferenceAtLocation:(CGPoint)a3 withPadding:(UIEdgeInsets)a4 inCoordinateSpace:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  y = a3.y;
  x = a3.x;
  v12 = a5;
  v13 = [(PXGInteraction *)self view];
  [v13 convertPoint:v12 fromCoordinateSpace:{x, y}];
  v15 = v14;
  v17 = v16;

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1506;
  v27 = __Block_byref_object_dispose__1507;
  v28 = 0;
  v18 = [(PXGInteraction *)self view];
  v19 = [v18 hitTestResultsAtPoint:0 padding:v15 passingTest:{v17, top, left, bottom, right}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__PXPhotosViewInteraction_assetReferenceAtLocation_withPadding_inCoordinateSpace___block_invoke;
  v22[3] = &unk_278297B48;
  v22[4] = &v23;
  [v19 enumerateObjectsUsingBlock:v22];

  v20 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v20;
}

void __82__PXPhotosViewInteraction_assetReferenceAtLocation_withPadding_inCoordinateSpace___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [v13 identifier];
  if (v6 == @"PXPhotosLayoutHitTestIdentifierAsset")
  {

    goto LABEL_5;
  }

  v7 = v6;
  v8 = [(__CFString *)v6 isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];

  v9 = v13;
  if (v8)
  {
LABEL_5:
    v10 = [v13 userData];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v9 = v13;
    *a4 = 1;
  }
}

- (id)assetHitTestResultAtPoint:(CGPoint)a3 coordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXGInteraction *)self view];
  v7 = [v6 hitTestResultsAtPoint:{x, y}];

  v8 = PXFind();

  return v8;
}

uint64_t __69__PXPhotosViewInteraction_assetHitTestResultAtPoint_coordinateSpace___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = v2;
  if (v2 == @"PXPhotosLayoutHitTestIdentifierAsset")
  {
    v4 = 1;
  }

  else
  {
    v4 = [(__CFString *)v2 isEqualToString:@"PXPhotosLayoutHitTestIdentifierAsset"];
  }

  return v4;
}

- (void)setZoomablePhotosInteraction:(id)a3
{
  v9 = a3;
  v5 = self->_zoomablePhotosInteraction;
  v6 = v5;
  if (v5 != v9)
  {
    v7 = [(PXZoomablePhotosInteraction *)v5 isEqual:v9];

    v8 = v9;
    if (v7)
    {
      goto LABEL_5;
    }

    [(PXZoomablePhotosInteraction *)self->_zoomablePhotosInteraction setDelegate:0];
    objc_storeStrong(&self->_zoomablePhotosInteraction, a3);
    [(PXZoomablePhotosInteraction *)v9 setDelegate:self];
    v6 = [(PXGInteraction *)self view];
    [(PXZoomablePhotosInteraction *)v9 setView:v6];
  }

  v8 = v9;
LABEL_5:
}

- (PXPhotosViewInteraction)initWithViewModel:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PXPhotosViewInteraction;
  v6 = [(PXPhotosViewInteraction *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    v8 = [v5 viewModelHelper];
    v9 = [v8 createInteractionHelperWithInteraction:v7 viewModel:v5];
    interactionHelper = v7->_interactionHelper;
    v7->_interactionHelper = v9;
  }

  return v7;
}

+ (id)interactionWithViewModel:(id)a3
{
  v3 = a3;
  v4 = [(PXPhotosViewInteraction *)[PXPhotosViewUIInteraction alloc] initWithViewModel:v3];

  return v4;
}

@end