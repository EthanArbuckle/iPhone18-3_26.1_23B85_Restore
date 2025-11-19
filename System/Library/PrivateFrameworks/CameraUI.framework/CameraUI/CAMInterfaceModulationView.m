@interface CAMInterfaceModulationView
- (CAMInterfaceModulationView)initWithHostingView:(id)a3;
- (UIView)hostingView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_updateModulationLayerEnabled;
- (void)didAddSubview:(id)a3;
- (void)modulationAnimationDidStop:(BOOL)a3;
- (void)setInterfaceModulation:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMInterfaceModulationView

- (CAMInterfaceModulationView)initWithHostingView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMInterfaceModulationView;
  v5 = [(CAMInterfaceModulationView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostingView, v4);
    v6->_interfaceModulation = 0;
  }

  return v6;
}

- (void)didAddSubview:(id)a3
{
  v3 = [(CAMInterfaceModulationView *)self hostingView];
  [v3 setNeedsLayout];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = CAMInterfaceModulationView;
  v5 = [(CAMInterfaceModulationView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)setInterfaceModulation:(unint64_t)a3 animated:(BOOL)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (self->_interfaceModulation != a3)
  {
    v4 = a4;
    if (a3 > 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_1E76FBCC0[a3];
    }

    self->_interfaceModulation = a3;
    v7 = [(CAMInterfaceModulationView *)self _modulationFilter];
    v8 = [(CAMInterfaceModulationView *)self _keyPathForFilterKey:*MEMORY[0x1E6979BF0]];
    v9 = [(CAMInterfaceModulationView *)self layer];
    if (!v7)
    {
      v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
      [v7 setValue:&unk_1F16C7D78 forKey:*MEMORY[0x1E6979990]];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v7 setValue:v10 forKey:*MEMORY[0x1E6979980]];

      [v7 setName:@"modulationFilter"];
      [(CAMInterfaceModulationView *)self _setModulationFilter:v7];
      v25[0] = v7;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      [v9 setFilters:v11];
    }

    if (v4)
    {
      v12 = [v9 presentationLayer];
      v13 = [v12 filters];
      if (v13)
      {
        v14 = [v9 presentationLayer];
      }

      else
      {
        v14 = v9;
      }

      v15 = v14;

      v16 = [MEMORY[0x1E6979318] animationWithKeyPath:v8];
      v17 = [v15 valueForKeyPath:v8];
      [v16 setFromValue:v17];

      [v16 setToValue:v6];
      [v16 setDuration:0.3];
      [(CAMInterfaceModulationView *)self _setInFlightAnimationCount:[(CAMInterfaceModulationView *)self _inFlightAnimationCount]+ 1];
      objc_initWeak(&location, self);
      v18 = objc_alloc_init(CAMAnimationDelegate);
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __62__CAMInterfaceModulationView_setInterfaceModulation_animated___block_invoke;
      v22 = &unk_1E76F95D0;
      objc_copyWeak(&v23, &location);
      [(CAMAnimationDelegate *)v18 setCompletion:&v19];
      [v16 setDelegate:{v18, v19, v20, v21, v22}];
      [v9 addAnimation:v16 forKey:@"interfaceModulationAnimation"];
      objc_destroyWeak(&v23);

      objc_destroyWeak(&location);
    }

    [v9 setValue:v6 forKeyPath:v8];
    [(CAMInterfaceModulationView *)self _updateModulationLayerEnabled];
  }
}

void __62__CAMInterfaceModulationView_setInterfaceModulation_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained modulationAnimationDidStop:a2];
}

- (void)modulationAnimationDidStop:(BOOL)a3
{
  [(CAMInterfaceModulationView *)self _setInFlightAnimationCount:[(CAMInterfaceModulationView *)self _inFlightAnimationCount]- 1];

  [(CAMInterfaceModulationView *)self _updateModulationLayerEnabled];
}

- (void)_updateModulationLayerEnabled
{
  v3 = [(CAMInterfaceModulationView *)self interfaceModulation];
  if (v3 - 1 >= 2)
  {
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = [(CAMInterfaceModulationView *)self _inFlightAnimationCount]!= 0;
    }
  }

  else
  {
    v4 = 1;
  }

  v7 = [(CAMInterfaceModulationView *)self layer];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v6 = [(CAMInterfaceModulationView *)self _keyPathForFilterKey:@"enabled"];
  [v7 setValue:v5 forKeyPath:v6];
}

- (UIView)hostingView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingView);

  return WeakRetained;
}

@end