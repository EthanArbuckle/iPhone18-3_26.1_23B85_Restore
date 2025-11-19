@interface LACUIPackagedView
- (BOOL)_isRendered;
- (CGPoint)convertPointToSublayerCoordinates:(CGPoint)a3;
- (CGRect)convertRectFromSublayerCoordinates:(CGRect)a3;
- (LACUIPackagedView)initWithURL:(id)a3 error:(id *)a4;
- (void)_setState:(int)a3 animated:(int)a4 allowRetry:(void *)a5 completion:;
- (void)_updateRootLayer;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation LACUIPackagedView

- (LACUIPackagedView)initWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = LACUIPackagedView;
  v7 = [(LACUIPackagedView *)&v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277CDA7F8];
  v22 = 0;
  v9 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v6 type:v8 options:0 error:&v22];
  v10 = v22;
  v11 = v10;
  if (a4)
  {
    v12 = v10;
    *a4 = v11;
  }

  if (v9)
  {
    v13 = [v9 rootLayer];
    rootLayer = v7->_rootLayer;
    v7->_rootLayer = v13;

    -[CALayer setGeometryFlipped:](v7->_rootLayer, "setGeometryFlipped:", [v9 isGeometryFlipped]);
    v15 = [(LACUIPackagedView *)v7 layer];
    [v15 setMasksToBounds:0];

    v16 = [(LACUIPackagedView *)v7 layer];
    [v16 addSublayer:v7->_rootLayer];

    v17 = [[LACUIPackagedViewStateController alloc] initWithLayer:v7->_rootLayer];
    stateController = v7->_stateController;
    v7->_stateController = v17;

LABEL_6:
    v19 = v7;
    goto LABEL_10;
  }

  v20 = LA_LOG_LACUIPackagedView();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(LACUIPackagedView *)v6 initWithURL:v11 error:v20];
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (CGRect)convertRectFromSublayerCoordinates:(CGRect)a3
{
  rootLayer = self->_rootLayer;
  if (rootLayer)
  {
    [(CALayer *)rootLayer transform:a3.origin.x];
  }

  CA_CGRectApplyTransform();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGPoint)convertPointToSublayerCoordinates:(CGPoint)a3
{
  rootLayer = self->_rootLayer;
  if (rootLayer)
  {
    [(CALayer *)rootLayer transform:a3.x];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  CATransform3DInvert(&v7, &v6);
  CA_CGPointApplyTransform();
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = LACUIPackagedView;
  [(LACUIPackagedView *)&v3 layoutSubviews];
  [(LACUIPackagedView *)self _updateRootLayer];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = LACUIPackagedView;
  [(LACUIPackagedView *)&v3 didMoveToWindow];
  if (self->_setInitialStateWhenMovedToWindow)
  {
    [(LACUIPackagedViewStateController *)self->_stateController setInitialState];
  }
}

- (void)_setState:(int)a3 animated:(int)a4 allowRetry:(void *)a5 completion:
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    if (a3)
    {
      v11 = [a1 window];

      if (!v11)
      {
        if (a4)
        {
          objc_initWeak(location, a1);
          v12 = dispatch_time(0, 10000000);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __62__LACUIPackagedView__setState_animated_allowRetry_completion___block_invoke;
          v19[3] = &unk_27981EB70;
          objc_copyWeak(&v22, location);
          v20 = v9;
          v23 = a3;
          v21 = v10;
          dispatch_after(v12, MEMORY[0x277D85CD0], v19);

          objc_destroyWeak(&v22);
          objc_destroyWeak(location);
          goto LABEL_15;
        }

        v15 = LA_LOG_LACUIPackagedView();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *location = 138412546;
          *&location[4] = a1;
          v25 = 2112;
          v26 = v9;
          _os_log_error_impl(&dword_256063000, v15, OS_LOG_TYPE_ERROR, "%@ animated transition to '%@' state will be skipped because view is not rendered", location, 0x16u);
        }
      }

      v14 = a1[51];
      v16 = [a1 window];
      v13 = v16 != 0;
    }

    else
    {
      v13 = 0;
      v14 = a1[51];
    }

    if (v10)
    {
      v17 = v10;
    }

    else
    {
      v17 = &__block_literal_global_12;
    }

    [v14 setState:v9 animated:v13 completion:v17];
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateRootLayer
{
  if (a1)
  {
    v1 = a1[53];
    [a1 bounds];

    LACUILayerScaleToFitInRect(v1, v2, v3, v4, v5);
  }
}

- (BOOL)_isRendered
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 window];
  v2 = v1 != 0;

  return v2;
}

void __62__LACUIPackagedView__setState_animated_allowRetry_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [(LACUIPackagedView *)WeakRetained _setState:*(a1 + 56) animated:0 allowRetry:*(a1 + 40) completion:?];
}

- (void)initWithURL:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_256063000, log, OS_LOG_TYPE_ERROR, "Failed to load %{public}@: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end