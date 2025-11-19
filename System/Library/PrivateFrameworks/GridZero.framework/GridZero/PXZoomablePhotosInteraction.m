@interface PXZoomablePhotosInteraction
- (BOOL)_pinchInteractionShouldBeginForViewModel:(id)a3;
- (BOOL)handlePinch:(id)a3;
- (BOOL)handleTapOnAssetReference:(id)a3;
- (PXZoomablePhotosInteraction)init;
- (PXZoomablePhotosInteraction)initWithViewModelProvider:(id)a3;
- (PXZoomablePhotosInteraction)initWithZoomablePhotosViewModel:(id)a3;
- (PXZoomablePhotosInteractionDelegate)delegate;
- (PXZoomablePhotosInteractionViewModelProvider)viewModelProvider;
- (UIView)view;
- (id)_getWorkingViewModelForPoint:(CGPoint)a3 coordinateSpace:(id)a4;
@end

@implementation PXZoomablePhotosInteraction

- (PXZoomablePhotosInteractionViewModelProvider)viewModelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModelProvider);

  return WeakRetained;
}

- (PXZoomablePhotosInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (BOOL)handlePinch:(id)a3
{
  v5 = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [(PXZoomablePhotosInteraction *)self view];
  v9 = [(PXZoomablePhotosInteraction *)self view];
  [v5 locationInView:v8];
  v10 = [(PXZoomablePhotosInteraction *)self _getWorkingViewModelForPoint:v9 coordinateSpace:?];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = self->_currentViewModel;
    if (!v12)
    {
      v35 = 0;
      goto LABEL_22;
    }
  }

  objc_storeStrong(&self->_currentViewModel, v12);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  [(PXZoomablePhotosViewModel *)v12 pinchState];
  v14 = 0;
  v13 = 0;
  v15 = 0;
  v16 = 0.0;
  v17 = [(PXZoomablePhotosViewModel *)v12 anchorAssetReference];
  if ([v5 state] == 1)
  {
    v37 = a2;
    v18 = [(PXZoomablePhotosInteraction *)self _pinchInteractionShouldBeginForViewModel:v12];
    [v5 locationInView:v8];
    v20 = v19;
    v22 = v21;
    v23 = [(PXZoomablePhotosInteraction *)self delegate];
    v24 = [v23 zoomablePhotosInteraction:self assetReferenceAtLocation:{v20, v22}];

    [v8 bounds];
    PXPointNormalize();
    v13 = v25;
    v14 = v26;
    [v5 scale];
    v15 = v27;
    if ([v5 numberOfTouches] == 2)
    {
      [v5 locationOfTouch:0 inView:v8];
      [v5 locationOfTouch:1 inView:v8];
      PXDistanceBetweenPoints();
      v29 = v28;
      [v8 bounds];
      v16 = v29 / v30;
    }

    if (v18)
    {
      v31 = [(PXZoomablePhotosInteraction *)self delegate];
      [v31 zoomablePhotosInteractionWillBegin:self];

      v32 = 0;
      a2 = v37;
LABEL_14:
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __43__PXZoomablePhotosInteraction_handlePinch___block_invoke;
      v38[3] = &unk_278297BE8;
      v39 = v5;
      v43 = v15;
      v44 = a2;
      v40 = v8;
      v41 = self;
      v45 = v13;
      v46 = v14;
      v47 = v16;
      v48 = v32;
      v49 = v7;
      v17 = v24;
      v42 = v17;
      [(PXZoomablePhotosViewModel *)v12 performChanges:v38];

      goto LABEL_19;
    }

    v17 = v24;
  }

  else if ([v5 state] == 2)
  {
    if (fmax(v7 - 0.0, 0.0) > 0.016)
    {
      [v5 scale];
      PXFloatByLinearlyInterpolatingFloats();
      v15 = v33;
    }

    if ([(PXZoomablePhotosViewModel *)v12 isPinching])
    {
      v32 = 1;
      v24 = v17;
      goto LABEL_14;
    }
  }

  else
  {
    currentViewModel = self->_currentViewModel;
    self->_currentViewModel = 0;
  }

  if (![(PXZoomablePhotosViewModel *)v12 isPinching])
  {
    v35 = 0;
    goto LABEL_21;
  }

  [(PXZoomablePhotosViewModel *)v12 performChanges:&__block_literal_global_2100];
LABEL_19:
  v35 = 1;
LABEL_21:

LABEL_22:
  return v35;
}

void __43__PXZoomablePhotosInteraction_handlePinch___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setIsPinching:1];
  [*(a1 + 32) locationInView:*(a1 + 40)];
  [*(a1 + 40) bounds];
  PXPointNormalize();
  v5 = v4;
  v7 = v6;
  [*(a1 + 32) velocity];
  v9 = v8;
  v10 = PXFloatApproximatelyEqualToFloat();
  [*(a1 + 32) scale];
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    v12 = v11 / *(a1 + 64);
  }

  if (PXFloatApproximatelyEqualToFloat())
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *v21 = 134218242;
      *&v21[4] = v12;
      *&v21[12] = 2112;
      *&v21[14] = v20;
      _os_log_error_impl(&dword_21ABF3000, v13, OS_LOG_TYPE_ERROR, "Adjusted scale invalid:%.3f pinchGesture:%@", v21, 0x16u);
    }

    v12 = 1.0;
  }

  v14 = *(a1 + 96);
  v15 = *(a1 + 64);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 56);
  *v21 = *(a1 + 80);
  *&v21[16] = v14;
  v22 = v5;
  v23 = v7;
  v24 = v15;
  v25 = v12;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  [v3 setPinchState:v21 withAnchorAssetReference:v19];
}

- (BOOL)_pinchInteractionShouldBeginForViewModel:(id)a3
{
  v4 = a3;
  v5 = +[PXZoomablePhotosSettings sharedInstance];
  if ([v5 enablePinch])
  {
    v6 = [v4 assetsDataSourceManager];
    v7 = [v6 dataSource];
    if ([v7 containsAnyItems])
    {
      v8 = [(PXZoomablePhotosInteraction *)self delegate];
      v9 = [v8 zoomablePhotosInteractionShouldBegin:self];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)handleTapOnAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PXZoomablePhotosInteraction *)self viewModel];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(PXZoomablePhotosInteraction *)self viewModelProvider];
    v7 = [v8 provideViewModelForAssetReference:v4];
  }

  v9 = [v7 isDisplayingIndividualItems];
  if ((v9 & 1) == 0)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__PXZoomablePhotosInteraction_handleTapOnAssetReference___block_invoke;
    v11[3] = &unk_278298548;
    v12 = v4;
    [v7 performChanges:v11];
  }

  return v9 ^ 1;
}

- (id)_getWorkingViewModelForPoint:(CGPoint)a3 coordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = [(PXZoomablePhotosInteraction *)self viewModel];

  if (v9)
  {
    v10 = [(PXZoomablePhotosInteraction *)self viewModel];
  }

  else
  {
    v11 = [(PXZoomablePhotosInteraction *)self viewModelProvider];

    if (!v11)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosInteraction.m" lineNumber:46 description:@"Interaction was created without a viewModel but viewModelProvider is nil"];
    }

    v12 = [(PXZoomablePhotosInteraction *)self viewModelProvider];
    v10 = [v12 viewModelForPinchLocation:v8 inCoordinateSpace:{x, y}];
  }

  return v10;
}

- (PXZoomablePhotosInteraction)initWithViewModelProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXZoomablePhotosInteraction;
  v5 = [(PXZoomablePhotosInteraction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewModelProvider, v4);
  }

  return v6;
}

- (PXZoomablePhotosInteraction)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXZoomablePhotosInteraction.m" lineNumber:31 description:{@"%s is not available as initializer", "-[PXZoomablePhotosInteraction init]"}];

  abort();
}

- (PXZoomablePhotosInteraction)initWithZoomablePhotosViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXZoomablePhotosInteraction;
  v6 = [(PXZoomablePhotosInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
  }

  return v7;
}

@end