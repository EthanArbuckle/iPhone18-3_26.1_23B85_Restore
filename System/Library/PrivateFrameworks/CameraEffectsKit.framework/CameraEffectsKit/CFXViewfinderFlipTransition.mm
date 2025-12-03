@interface CFXViewfinderFlipTransition
- (CFXViewfinderFlipTransition)initWithViewfinderView:(id)view;
- (UIView)viewfinderView;
- (double)_backSnapshotTargetRadiansForDirection:(int64_t)direction frontSnapshotRadians:(double)radians;
- (double)_frontSnapshotTargetRadiansForDirection:(int64_t)direction fromRadians:(double)radians;
- (id)_snapshotFlipAnimationFromValue:(double)value toValue:(double)toValue;
- (void)_cleanupFromFlipTransition;
- (void)_getCurrentRadians:(double *)radians targetRadians:(double *)targetRadians forDirection:(int64_t)direction withAnimation:(id)animation onFrontSnapshotLayer:(id)layer;
- (void)completeTransitionToLivePreviewWithCompletionHandler:(id)handler;
- (void)performFlipTransitionWithDirection:(int64_t)direction completionHandler:(id)handler;
@end

@implementation CFXViewfinderFlipTransition

- (CFXViewfinderFlipTransition)initWithViewfinderView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CFXViewfinderFlipTransition;
  v5 = [(CFXViewfinderFlipTransition *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewfinderView, viewCopy);
    v7 = v6;
  }

  return v6;
}

- (void)_cleanupFromFlipTransition
{
  _frontSnapshotView = [(CFXViewfinderFlipTransition *)self _frontSnapshotView];
  _backSnapshotView = [(CFXViewfinderFlipTransition *)self _backSnapshotView];
  _targetSnapshotView = [(CFXViewfinderFlipTransition *)self _targetSnapshotView];
  layer = [_frontSnapshotView layer];
  [layer removeAllAnimations];
  [layer setZPosition:0.0];
  [_frontSnapshotView removeFromSuperview];
  [(CFXViewfinderFlipTransition *)self _setFrontSnapshotView:0];
  layer2 = [_backSnapshotView layer];
  [layer2 removeAllAnimations];
  [layer2 setZPosition:0.0];
  layer3 = [_targetSnapshotView layer];
  [layer3 removeAllAnimations];
  [layer3 setZPosition:0.0];
  viewfinderView = [(CFXViewfinderFlipTransition *)self viewfinderView];
  superview = [viewfinderView superview];

  viewfinderView2 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  [viewfinderView2 setHidden:0];

  viewfinderView3 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  [viewfinderView3 setNeedsLayout];

  viewfinderView4 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  [viewfinderView4 layoutIfNeeded];

  viewfinderView5 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  layer4 = [viewfinderView5 layer];

  [layer4 setZPosition:0.0];
  LODWORD(v16) = 1.0;
  [layer4 setOpacity:v16];
  layer5 = [superview layer];
  v18 = *(MEMORY[0x277CD9DE8] + 80);
  v22[4] = *(MEMORY[0x277CD9DE8] + 64);
  v22[5] = v18;
  v19 = *(MEMORY[0x277CD9DE8] + 112);
  v22[6] = *(MEMORY[0x277CD9DE8] + 96);
  v22[7] = v19;
  v20 = *(MEMORY[0x277CD9DE8] + 16);
  v22[0] = *MEMORY[0x277CD9DE8];
  v22[1] = v20;
  v21 = *(MEMORY[0x277CD9DE8] + 48);
  v22[2] = *(MEMORY[0x277CD9DE8] + 32);
  v22[3] = v21;
  [layer5 setSublayerTransform:v22];
}

- (void)performFlipTransitionWithDirection:(int64_t)direction completionHandler:(id)handler
{
  v52[2] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = *(MEMORY[0x277CD9DE8] + 48);
  v47[2] = *(MEMORY[0x277CD9DE8] + 32);
  v47[3] = v6;
  v47[4] = *(MEMORY[0x277CD9DE8] + 64);
  v48 = *(MEMORY[0x277CD9DE8] + 80);
  v7 = *(MEMORY[0x277CD9DE8] + 16);
  v47[0] = *MEMORY[0x277CD9DE8];
  v47[1] = v7;
  v8 = *(MEMORY[0x277CD9DE8] + 112);
  v50 = *(MEMORY[0x277CD9DE8] + 96);
  v51 = v8;
  viewfinderView = [(CFXViewfinderFlipTransition *)self viewfinderView];
  superview = [viewfinderView superview];

  layer = [superview layer];
  v49 = 0xBF435EAF72D7949ELL;
  [layer setSublayerTransform:v47];
  [layer setSortsSublayers:0];
  _frontSnapshotView = [(CFXViewfinderFlipTransition *)self _frontSnapshotView];
  _backSnapshotView = [(CFXViewfinderFlipTransition *)self _backSnapshotView];
  if (_frontSnapshotView)
  {
    [_frontSnapshotView setBlurred:1];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CF7EB8]);
    viewfinderView2 = [(CFXViewfinderFlipTransition *)self viewfinderView];
    _frontSnapshotView = [v12 initWithView:viewfinderView2 desiredAspectRatio:4];

    layer2 = [_frontSnapshotView layer];
    [layer2 setDoubleSided:0];

    [superview addSubview:_frontSnapshotView];
  }

  if (!_backSnapshotView)
  {
    v15 = objc_alloc(MEMORY[0x277CF7EB8]);
    viewfinderView3 = [(CFXViewfinderFlipTransition *)self viewfinderView];
    _backSnapshotView = [v15 initWithView:viewfinderView3 desiredAspectRatio:4];

    layer3 = [_backSnapshotView layer];
    [layer3 setDoubleSided:0];

    layer4 = [_backSnapshotView layer];
    [layer4 setMasksToBounds:1];

    [_backSnapshotView setBlurred:1];
    [_backSnapshotView setDimmed:1];
    [superview insertSubview:_backSnapshotView aboveSubview:_frontSnapshotView];
  }

  v46 = 0.0;
  *&v47[0] = 0;
  if (_frontSnapshotView && _backSnapshotView)
  {
    layer5 = [_frontSnapshotView layer];
    v20 = [layer5 animationForKey:@"rotationAnimation"];
    [(CFXViewfinderFlipTransition *)self _getCurrentRadians:v47 targetRadians:&v46 forDirection:direction withAnimation:v20 onFrontSnapshotLayer:layer5];

    v21 = v46;
    v22 = *v47;
  }

  else
  {
    v22 = 0.0;
    [(CFXViewfinderFlipTransition *)self _frontSnapshotTargetRadiansForDirection:direction fromRadians:0.0];
    v21 = v23;
    v46 = v23;
  }

  v24 = [(CFXViewfinderFlipTransition *)self _snapshotFlipAnimationFromValue:v22 toValue:v21];
  [v24 setRemovedOnCompletion:0];
  [(CFXViewfinderFlipTransition *)self _backSnapshotTargetRadiansForDirection:direction frontSnapshotRadians:*v47];
  v26 = v25;
  [(CFXViewfinderFlipTransition *)self _backSnapshotTargetRadiansForDirection:direction frontSnapshotRadians:v46];
  v28 = [(CFXViewfinderFlipTransition *)self _snapshotFlipAnimationFromValue:v26 toValue:v27];
  [v28 setRemovedOnCompletion:0];
  [v24 duration];
  v30 = v29;
  timingFunction = [v24 timingFunction];
  v32 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
  [v32 setValues:&unk_28556D848];
  [v32 setKeyTimes:&unk_28556D860];
  [v32 setFillMode:*MEMORY[0x277CDA230]];
  [v32 setRemovedOnCompletion:0];
  v52[0] = timingFunction;
  v52[1] = timingFunction;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  [v32 setTimingFunctions:v33];

  [v32 setDuration:v30];
  viewfinderView4 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  [viewfinderView4 setHidden:1];

  v35 = ([(CFXViewfinderFlipTransition *)self _currentAnimationID]+ 1);
  [(CFXViewfinderFlipTransition *)self _setCurrentAnimationID:v35];
  if (handlerCopy)
  {
    objc_initWeak(&location, self);
    v36 = objc_alloc_init(CFXAnimationDelegate);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __84__CFXViewfinderFlipTransition_performFlipTransitionWithDirection_completionHandler___block_invoke;
    v42[3] = &unk_278D79D70;
    objc_copyWeak(v44, &location);
    v44[1] = v35;
    v43 = handlerCopy;
    [(CFXAnimationDelegate *)v36 setCompletion:v42];
    [v24 setDelegate:v36];

    objc_destroyWeak(v44);
    objc_destroyWeak(&location);
  }

  layer6 = [_frontSnapshotView layer];
  layer7 = [_backSnapshotView layer];
  [layer6 addAnimation:v24 forKey:@"rotationAnimation"];
  [layer7 addAnimation:v28 forKey:@"rotationAnimation"];
  [layer addAnimation:v32 forKey:@"flipContainerAnimation"];
  [(CFXViewfinderFlipTransition *)self _setFrontSnapshotView:_frontSnapshotView];
  [(CFXViewfinderFlipTransition *)self _setBackSnapshotView:_backSnapshotView];
}

void __84__CFXViewfinderFlipTransition_performFlipTransitionWithDirection_completionHandler___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);
  v3 = [v2 _currentAnimationID];

  v4 = objc_loadWeakRetained(&to);
  if (!v4 || (v5 = *(a1 + 48), v4, v3 == v5))
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_destroyWeak(&to);
}

- (void)_getCurrentRadians:(double *)radians targetRadians:(double *)targetRadians forDirection:(int64_t)direction withAnimation:(id)animation onFrontSnapshotLayer:(id)layer
{
  if (radians && targetRadians)
  {
    layerCopy = layer;
    animationCopy = animation;
    [layerCopy convertTime:0 fromLayer:CACurrentMediaTime()];
    v15 = v14;

    [animationCopy beginTime];
    v17 = v15 - v16;
    [animationCopy duration];
    v19 = v17 / v18;
    if (v19 > 1.0)
    {
      v19 = 1.0;
    }

    v20 = fmaxf(v19, 0.0);
    timingFunction = [animationCopy timingFunction];
    *&v21 = v20;
    [timingFunction _solveForInput:v21];
    v23 = v22;
    toValue = [animationCopy toValue];
    [toValue floatValue];
    v26 = v25;

    fromValue = [animationCopy fromValue];

    [fromValue floatValue];
    v29 = v28;

    *radians = v29 + (v26 - v29) * v23;
    [(CFXViewfinderFlipTransition *)self _frontSnapshotTargetRadiansForDirection:direction fromRadians:v26];
    *targetRadians = v30;
  }
}

- (double)_frontSnapshotTargetRadiansForDirection:(int64_t)direction fromRadians:(double)radians
{
  if (direction == 1)
  {
    v5 = -3.14159265;
    return radians + v5;
  }

  v4 = 0.0;
  if (!direction)
  {
    v5 = 3.14159265;
    return radians + v5;
  }

  return v4;
}

- (double)_backSnapshotTargetRadiansForDirection:(int64_t)direction frontSnapshotRadians:(double)radians
{
  if (direction == 1)
  {
    v5 = -3.14159265;
    return radians + v5;
  }

  v4 = 0.0;
  if (!direction)
  {
    v5 = 3.14159265;
    return radians + v5;
  }

  return v4;
}

- (id)_snapshotFlipAnimationFromValue:(double)value toValue:(double)toValue
{
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
  UIAnimationDragCoefficient();
  [v6 setDuration:v7 * 0.32];
  LODWORD(v8) = 1054280253;
  LODWORD(v9) = 1058306785;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v8 :0.0 :v9 :v10];
  [v6 setTimingFunction:v11];

  [v6 setFillMode:*MEMORY[0x277CDA230]];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [v6 setFromValue:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:toValue];
  [v6 setToValue:v13];

  return v6;
}

- (void)completeTransitionToLivePreviewWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CFXViewfinderFlipTransition *)self _cleanupFromFlipTransition];
  viewfinderView = [(CFXViewfinderFlipTransition *)self viewfinderView];
  superview = [viewfinderView superview];

  _backSnapshotView = [(CFXViewfinderFlipTransition *)self _backSnapshotView];
  v8 = objc_alloc(MEMORY[0x277CF7EB8]);
  viewfinderView2 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  v10 = [v8 initWithView:viewfinderView2 desiredAspectRatio:4];

  [superview insertSubview:v10 belowSubview:_backSnapshotView];
  [v10 setBlurred:1];
  layer = [_backSnapshotView layer];
  LODWORD(v12) = 1036831949;
  LODWORD(v13) = 0.25;
  LODWORD(v14) = 0.25;
  LODWORD(v15) = 1.0;
  v16 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v13 :v12 :v14 :v15];
  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v17 setFromValue:&unk_28556D788];
  [v17 setToValue:&unk_28556D7A8];
  UIAnimationDragCoefficient();
  [v17 setDuration:v18 * 0.3268];
  [v17 setTimingFunction:v16];
  objc_initWeak(&location, _backSnapshotView);
  objc_initWeak(&from, v10);
  [(CFXViewfinderFlipTransition *)self _setBackSnapshotView:0];
  [(CFXViewfinderFlipTransition *)self _setTargetSnapshotView:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__CFXViewfinderFlipTransition_completeTransitionToLivePreviewWithCompletionHandler___block_invoke;
  v20[3] = &unk_278D79D98;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v19 = handlerCopy;
  v21 = v19;
  [v10 setBlurred:0 animated:1 style:1 withCompletionBlock:v20];
  [layer addAnimation:v17 forKey:@"opacityAnimation"];
  [layer setOpacity:0.0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

uint64_t __84__CFXViewfinderFlipTransition_completeTransitionToLivePreviewWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeFromSuperview];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 removeFromSuperview];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (UIView)viewfinderView
{
  WeakRetained = objc_loadWeakRetained(&self->_viewfinderView);

  return WeakRetained;
}

@end