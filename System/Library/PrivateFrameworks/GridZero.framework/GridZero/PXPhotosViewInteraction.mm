@interface PXPhotosViewInteraction
+ (id)interactionWithViewModel:(id)model;
- (PXPhotosContentController)contentController;
- (PXPhotosViewInteraction)initWithViewModel:(id)model;
- (PXPhotosViewInteractionDelegate)delegate;
- (UIViewController)presentingViewController;
- (id)assetHitTestResultAtPoint:(CGPoint)point coordinateSpace:(id)space;
- (id)assetReferenceAtLocation:(CGPoint)location withPadding:(UIEdgeInsets)padding inCoordinateSpace:(id)space;
- (id)regionOfInterestForAssetReference:(id)reference image:(CGImage *)image fallbackMediaProvider:(id)provider shouldSnapshot:(BOOL)snapshot;
- (id)zoomablePhotosInteraction:(id)interaction assetReferenceAtLocation:(CGPoint)location;
- (void)setZoomablePhotosInteraction:(id)interaction;
- (void)zoomablePhotosInteractionWillBegin:(id)begin;
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

- (id)zoomablePhotosInteraction:(id)interaction assetReferenceAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  view = [(PXGInteraction *)self view];
  v8 = [(PXPhotosViewInteraction *)self assetHitTestResultAtPoint:view coordinateSpace:x, y];

  userData = [v8 userData];

  return userData;
}

- (void)zoomablePhotosInteractionWillBegin:(id)begin
{
  viewModel = [(PXPhotosViewInteraction *)self viewModel];
  dataSourceManager = [viewModel dataSourceManager];

  dataSource = [dataSourceManager dataSource];
  areAllSectionsConsideredAccurate = [dataSource areAllSectionsConsideredAccurate];

  if ((areAllSectionsConsideredAccurate & 1) == 0)
  {
    [dataSourceManager performChanges:&__block_literal_global_4];
  }
}

- (UIViewController)presentingViewController
{
  delegate = [(PXPhotosViewInteraction *)self delegate];
  v4 = [delegate presentingViewControllerForPhotosInteraction:self];

  return v4;
}

- (id)regionOfInterestForAssetReference:(id)reference image:(CGImage *)image fallbackMediaProvider:(id)provider shouldSnapshot:(BOOL)snapshot
{
  providerCopy = provider;
  referenceCopy = reference;
  view = [(PXGInteraction *)self view];
  layout = [(PXGInteraction *)self layout];
  v13 = PXRegionOfInterestForAssetReference(view, layout, referenceCopy, image, providerCopy);

  return v13;
}

- (id)assetReferenceAtLocation:(CGPoint)location withPadding:(UIEdgeInsets)padding inCoordinateSpace:(id)space
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  y = location.y;
  x = location.x;
  spaceCopy = space;
  view = [(PXGInteraction *)self view];
  [view convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v15 = v14;
  v17 = v16;

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1506;
  v27 = __Block_byref_object_dispose__1507;
  v28 = 0;
  view2 = [(PXGInteraction *)self view];
  v19 = [view2 hitTestResultsAtPoint:0 padding:v15 passingTest:{v17, top, left, bottom, right}];
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

- (id)assetHitTestResultAtPoint:(CGPoint)point coordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  view = [(PXGInteraction *)self view];
  v7 = [view hitTestResultsAtPoint:{x, y}];

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

- (void)setZoomablePhotosInteraction:(id)interaction
{
  interactionCopy = interaction;
  v5 = self->_zoomablePhotosInteraction;
  view = v5;
  if (v5 != interactionCopy)
  {
    v7 = [(PXZoomablePhotosInteraction *)v5 isEqual:interactionCopy];

    v8 = interactionCopy;
    if (v7)
    {
      goto LABEL_5;
    }

    [(PXZoomablePhotosInteraction *)self->_zoomablePhotosInteraction setDelegate:0];
    objc_storeStrong(&self->_zoomablePhotosInteraction, interaction);
    [(PXZoomablePhotosInteraction *)interactionCopy setDelegate:self];
    view = [(PXGInteraction *)self view];
    [(PXZoomablePhotosInteraction *)interactionCopy setView:view];
  }

  v8 = interactionCopy;
LABEL_5:
}

- (PXPhotosViewInteraction)initWithViewModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = PXPhotosViewInteraction;
  v6 = [(PXPhotosViewInteraction *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    viewModelHelper = [modelCopy viewModelHelper];
    v9 = [viewModelHelper createInteractionHelperWithInteraction:v7 viewModel:modelCopy];
    interactionHelper = v7->_interactionHelper;
    v7->_interactionHelper = v9;
  }

  return v7;
}

+ (id)interactionWithViewModel:(id)model
{
  modelCopy = model;
  v4 = [(PXPhotosViewInteraction *)[PXPhotosViewUIInteraction alloc] initWithViewModel:modelCopy];

  return v4;
}

@end