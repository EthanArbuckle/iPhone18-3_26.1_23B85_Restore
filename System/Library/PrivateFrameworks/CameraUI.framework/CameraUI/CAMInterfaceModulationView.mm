@interface CAMInterfaceModulationView
- (CAMInterfaceModulationView)initWithHostingView:(id)view;
- (UIView)hostingView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateModulationLayerEnabled;
- (void)didAddSubview:(id)subview;
- (void)modulationAnimationDidStop:(BOOL)stop;
- (void)setInterfaceModulation:(unint64_t)modulation animated:(BOOL)animated;
@end

@implementation CAMInterfaceModulationView

- (CAMInterfaceModulationView)initWithHostingView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = CAMInterfaceModulationView;
  v5 = [(CAMInterfaceModulationView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostingView, viewCopy);
    v6->_interfaceModulation = 0;
  }

  return v6;
}

- (void)didAddSubview:(id)subview
{
  hostingView = [(CAMInterfaceModulationView *)self hostingView];
  [hostingView setNeedsLayout];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CAMInterfaceModulationView;
  v5 = [(CAMInterfaceModulationView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

- (void)setInterfaceModulation:(unint64_t)modulation animated:(BOOL)animated
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (self->_interfaceModulation != modulation)
  {
    animatedCopy = animated;
    if (modulation > 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_1E76FBCC0[modulation];
    }

    self->_interfaceModulation = modulation;
    _modulationFilter = [(CAMInterfaceModulationView *)self _modulationFilter];
    v8 = [(CAMInterfaceModulationView *)self _keyPathForFilterKey:*MEMORY[0x1E6979BF0]];
    layer = [(CAMInterfaceModulationView *)self layer];
    if (!_modulationFilter)
    {
      _modulationFilter = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979918]];
      [_modulationFilter setValue:&unk_1F16C7D78 forKey:*MEMORY[0x1E6979990]];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [_modulationFilter setValue:v10 forKey:*MEMORY[0x1E6979980]];

      [_modulationFilter setName:@"modulationFilter"];
      [(CAMInterfaceModulationView *)self _setModulationFilter:_modulationFilter];
      v25[0] = _modulationFilter;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      [layer setFilters:v11];
    }

    if (animatedCopy)
    {
      presentationLayer = [layer presentationLayer];
      filters = [presentationLayer filters];
      if (filters)
      {
        presentationLayer2 = [layer presentationLayer];
      }

      else
      {
        presentationLayer2 = layer;
      }

      v15 = presentationLayer2;

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
      [layer addAnimation:v16 forKey:@"interfaceModulationAnimation"];
      objc_destroyWeak(&v23);

      objc_destroyWeak(&location);
    }

    [layer setValue:v6 forKeyPath:v8];
    [(CAMInterfaceModulationView *)self _updateModulationLayerEnabled];
  }
}

void __62__CAMInterfaceModulationView_setInterfaceModulation_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained modulationAnimationDidStop:a2];
}

- (void)modulationAnimationDidStop:(BOOL)stop
{
  [(CAMInterfaceModulationView *)self _setInFlightAnimationCount:[(CAMInterfaceModulationView *)self _inFlightAnimationCount]- 1];

  [(CAMInterfaceModulationView *)self _updateModulationLayerEnabled];
}

- (void)_updateModulationLayerEnabled
{
  interfaceModulation = [(CAMInterfaceModulationView *)self interfaceModulation];
  if (interfaceModulation - 1 >= 2)
  {
    if (interfaceModulation)
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

  layer = [(CAMInterfaceModulationView *)self layer];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v6 = [(CAMInterfaceModulationView *)self _keyPathForFilterKey:@"enabled"];
  [layer setValue:v5 forKeyPath:v6];
}

- (UIView)hostingView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingView);

  return WeakRetained;
}

@end