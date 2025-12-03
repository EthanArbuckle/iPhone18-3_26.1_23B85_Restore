@interface CAMViewfinderFlipTransition
- (CAMViewfinderFlipTransition)initWithTransitionableViewfinder:(id)viewfinder;
- (CAMViewfinderTransitionable)_transitionableViewfinder;
- (double)_backSnapshotTargetRadiansForDirection:(unint64_t)direction frontSnapshotRadians:(double)radians;
- (double)_frontSnapshotTargetRadiansForDirection:(unint64_t)direction fromRadians:(double)radians;
- (id)_snapshotFlipAnimationFromValue:(double)value toValue:(double)toValue;
- (void)_cleanupFromFlipTransition;
- (void)_getCurrentRadians:(double *)radians targetRadians:(double *)targetRadians forDirection:(unint64_t)direction withAnimation:(id)animation onFrontSnapshotLayer:(id)layer;
- (void)completeTransitionToLivePreviewWithCompletionHandler:(id)handler;
- (void)performFlipTransitionWithDirection:(unint64_t)direction completionHandler:(id)handler;
@end

@implementation CAMViewfinderFlipTransition

- (CAMViewfinderFlipTransition)initWithTransitionableViewfinder:(id)viewfinder
{
  viewfinderCopy = viewfinder;
  v9.receiver = self;
  v9.super_class = CAMViewfinderFlipTransition;
  v5 = [(CAMViewfinderFlipTransition *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__transitionableViewfinder, viewfinderCopy);
    v7 = v6;
  }

  return v6;
}

- (void)_cleanupFromFlipTransition
{
  _frontSnapshotView = [(CAMViewfinderFlipTransition *)self _frontSnapshotView];
  _backSnapshotView = [(CAMViewfinderFlipTransition *)self _backSnapshotView];
  _targetSnapshotView = [(CAMViewfinderFlipTransition *)self _targetSnapshotView];
  layer = [_frontSnapshotView layer];
  [layer removeAllAnimations];
  [layer setZPosition:0.0];
  [_frontSnapshotView removeFromSuperview];
  [(CAMViewfinderFlipTransition *)self _setFrontSnapshotView:0];
  layer2 = [_backSnapshotView layer];
  [layer2 removeAllAnimations];
  [layer2 setZPosition:0.0];
  layer3 = [_targetSnapshotView layer];
  [layer3 removeAllAnimations];
  [layer3 setZPosition:0.0];
  _transitionableViewfinder = [(CAMViewfinderFlipTransition *)self _transitionableViewfinder];
  previewView = [_transitionableViewfinder previewView];
  superview = [previewView superview];
  [previewView setHidden:0];
  layer4 = [previewView layer];
  [layer4 setZPosition:0.0];
  LODWORD(v12) = 1.0;
  [layer4 setOpacity:v12];
  layer5 = [superview layer];
  v14 = *(MEMORY[0x1E69792E8] + 80);
  v19[4] = *(MEMORY[0x1E69792E8] + 64);
  v19[5] = v14;
  v15 = *(MEMORY[0x1E69792E8] + 112);
  v19[6] = *(MEMORY[0x1E69792E8] + 96);
  v19[7] = v15;
  v16 = *(MEMORY[0x1E69792E8] + 16);
  v19[0] = *MEMORY[0x1E69792E8];
  v19[1] = v16;
  v17 = *(MEMORY[0x1E69792E8] + 48);
  v19[2] = *(MEMORY[0x1E69792E8] + 32);
  v19[3] = v17;
  [layer5 setSublayerTransform:v19];
}

- (void)performFlipTransitionWithDirection:(unint64_t)direction completionHandler:(id)handler
{
  v49[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v44[2] = *(MEMORY[0x1E69792E8] + 32);
  v44[3] = v6;
  v44[4] = *(MEMORY[0x1E69792E8] + 64);
  v45 = *(MEMORY[0x1E69792E8] + 80);
  v7 = *(MEMORY[0x1E69792E8] + 16);
  v44[0] = *MEMORY[0x1E69792E8];
  v44[1] = v7;
  v8 = *(MEMORY[0x1E69792E8] + 112);
  v47 = *(MEMORY[0x1E69792E8] + 96);
  v48 = v8;
  _transitionableViewfinder = [(CAMViewfinderFlipTransition *)self _transitionableViewfinder];
  previewView = [_transitionableViewfinder previewView];
  desiredAspectRatio = [_transitionableViewfinder desiredAspectRatio];
  superview = [previewView superview];
  layer = [superview layer];
  v46 = 0xBF435EAF72D7949ELL;
  [layer setSublayerTransform:v44];
  [layer setSortsSublayers:0];
  _frontSnapshotView = [(CAMViewfinderFlipTransition *)self _frontSnapshotView];
  _backSnapshotView = [(CAMViewfinderFlipTransition *)self _backSnapshotView];
  if (_frontSnapshotView)
  {
    [(CAMSnapshotView *)_frontSnapshotView setBlurred:1];
  }

  else
  {
    _frontSnapshotView = [[CAMSnapshotView alloc] initWithView:previewView desiredAspectRatio:desiredAspectRatio];
    layer2 = [(CAMSnapshotView *)_frontSnapshotView layer];
    [layer2 setDoubleSided:0];

    [superview addSubview:_frontSnapshotView];
  }

  if (!_backSnapshotView)
  {
    _backSnapshotView = [[CAMSnapshotView alloc] initWithView:previewView desiredAspectRatio:desiredAspectRatio];
    layer3 = [(CAMSnapshotView *)_backSnapshotView layer];
    [layer3 setDoubleSided:0];

    layer4 = [(CAMSnapshotView *)_backSnapshotView layer];
    [layer4 setMasksToBounds:1];

    [(CAMSnapshotView *)_backSnapshotView setBlurred:1];
    [(CAMSnapshotView *)_backSnapshotView setDimmed:1];
    [superview insertSubview:_backSnapshotView aboveSubview:_frontSnapshotView];
  }

  v43 = 0.0;
  *&v44[0] = 0;
  if (_frontSnapshotView && _backSnapshotView)
  {
    layer5 = [(CAMSnapshotView *)_frontSnapshotView layer];
    v16 = [layer5 animationForKey:@"rotationAnimation"];
    [(CAMViewfinderFlipTransition *)self _getCurrentRadians:v44 targetRadians:&v43 forDirection:direction withAnimation:v16 onFrontSnapshotLayer:layer5];

    v17 = v43;
    v18 = *v44;
  }

  else
  {
    v18 = 0.0;
    [(CAMViewfinderFlipTransition *)self _frontSnapshotTargetRadiansForDirection:direction fromRadians:0.0];
    v17 = v19;
    v43 = v19;
  }

  v20 = [(CAMViewfinderFlipTransition *)self _snapshotFlipAnimationFromValue:v18 toValue:v17];
  [v20 setRemovedOnCompletion:0];
  [(CAMViewfinderFlipTransition *)self _backSnapshotTargetRadiansForDirection:direction frontSnapshotRadians:*v44];
  v22 = v21;
  [(CAMViewfinderFlipTransition *)self _backSnapshotTargetRadiansForDirection:direction frontSnapshotRadians:v43];
  v24 = [(CAMViewfinderFlipTransition *)self _snapshotFlipAnimationFromValue:v22 toValue:v23];
  [v24 setRemovedOnCompletion:0];
  [v20 duration];
  v26 = v25;
  timingFunction = [v20 timingFunction];
  v28 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
  [v28 setValues:&unk_1F16C90B0];
  [v28 setKeyTimes:&unk_1F16C90C8];
  [v28 setFillMode:*MEMORY[0x1E69797E0]];
  [v28 setRemovedOnCompletion:0];
  v49[0] = timingFunction;
  v49[1] = timingFunction;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [v28 setTimingFunctions:v29];

  [v28 setDuration:v26];
  [previewView setHidden:1];
  v30 = ([(CAMViewfinderFlipTransition *)self _currentAnimationID]+ 1);
  [(CAMViewfinderFlipTransition *)self _setCurrentAnimationID:v30];
  if (handlerCopy)
  {
    objc_initWeak(&location, self);
    v31 = objc_alloc_init(CAMAnimationDelegate);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __84__CAMViewfinderFlipTransition_performFlipTransitionWithDirection_completionHandler___block_invoke;
    v39[3] = &unk_1E76F7A68;
    objc_copyWeak(v41, &location);
    v41[1] = v30;
    v40 = handlerCopy;
    [(CAMAnimationDelegate *)v31 setCompletion:v39];
    [v20 setDelegate:v31];

    objc_destroyWeak(v41);
    objc_destroyWeak(&location);
  }

  layer6 = [(CAMSnapshotView *)_frontSnapshotView layer];
  layer7 = [(CAMSnapshotView *)_backSnapshotView layer];
  [layer6 addAnimation:v20 forKey:@"rotationAnimation"];
  [layer7 addAnimation:v24 forKey:@"rotationAnimation"];
  [layer addAnimation:v28 forKey:@"flipContainerAnimation"];
  [(CAMViewfinderFlipTransition *)self _setFrontSnapshotView:_frontSnapshotView];
  [(CAMViewfinderFlipTransition *)self _setBackSnapshotView:_backSnapshotView];
}

void __84__CAMViewfinderFlipTransition_performFlipTransitionWithDirection_completionHandler___block_invoke(uint64_t a1)
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

- (void)_getCurrentRadians:(double *)radians targetRadians:(double *)targetRadians forDirection:(unint64_t)direction withAnimation:(id)animation onFrontSnapshotLayer:(id)layer
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
    [(CAMViewfinderFlipTransition *)self _frontSnapshotTargetRadiansForDirection:direction fromRadians:v26];
    *targetRadians = v30;
  }
}

- (double)_frontSnapshotTargetRadiansForDirection:(unint64_t)direction fromRadians:(double)radians
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

- (double)_backSnapshotTargetRadiansForDirection:(unint64_t)direction frontSnapshotRadians:(double)radians
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
  v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation.y"];
  UIAnimationDragCoefficient();
  [v6 setDuration:v7 * 0.32];
  LODWORD(v8) = 1054280253;
  LODWORD(v9) = 1058306785;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x1E69793D0] functionWithControlPoints:v8 :0.0 :v9 :v10];
  [v6 setTimingFunction:v11];

  [v6 setFillMode:*MEMORY[0x1E69797E0]];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [v6 setFromValue:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:toValue];
  [v6 setToValue:v13];

  return v6;
}

- (void)completeTransitionToLivePreviewWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CAMViewfinderFlipTransition *)self _cleanupFromFlipTransition];
  _transitionableViewfinder = [(CAMViewfinderFlipTransition *)self _transitionableViewfinder];
  previewView = [_transitionableViewfinder previewView];
  desiredAspectRatio = [_transitionableViewfinder desiredAspectRatio];
  superview = [previewView superview];
  _backSnapshotView = [(CAMViewfinderFlipTransition *)self _backSnapshotView];
  v10 = [[CAMSnapshotView alloc] initWithView:previewView desiredAspectRatio:desiredAspectRatio];
  [superview insertSubview:v10 belowSubview:_backSnapshotView];
  [(CAMSnapshotView *)v10 setBlurred:1];
  layer = [_backSnapshotView layer];
  LODWORD(v12) = 1036831949;
  LODWORD(v13) = 0.25;
  LODWORD(v14) = 0.25;
  LODWORD(v15) = 1.0;
  v16 = [MEMORY[0x1E69793D0] functionWithControlPoints:v13 :v12 :v14 :v15];
  v17 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v17 setFromValue:&unk_1F16C8968];
  [v17 setToValue:&unk_1F16C8988];
  UIAnimationDragCoefficient();
  [v17 setDuration:v18 * 0.3268];
  [v17 setTimingFunction:v16];
  objc_initWeak(&location, _backSnapshotView);
  objc_initWeak(&from, v10);
  [(CAMViewfinderFlipTransition *)self _setBackSnapshotView:0];
  [(CAMViewfinderFlipTransition *)self _setTargetSnapshotView:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__CAMViewfinderFlipTransition_completeTransitionToLivePreviewWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E76F7A90;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v19 = handlerCopy;
  v21 = v19;
  [(CAMSnapshotView *)v10 setBlurred:0 animated:1 style:1 withCompletionBlock:v20];
  [layer addAnimation:v17 forKey:@"opacityAnimation"];
  [layer setOpacity:0.0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

uint64_t __84__CAMViewfinderFlipTransition_completeTransitionToLivePreviewWithCompletionHandler___block_invoke(uint64_t a1)
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

- (CAMViewfinderTransitionable)_transitionableViewfinder
{
  WeakRetained = objc_loadWeakRetained(&self->__transitionableViewfinder);

  return WeakRetained;
}

@end