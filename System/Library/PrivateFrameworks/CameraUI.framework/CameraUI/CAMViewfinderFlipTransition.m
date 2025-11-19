@interface CAMViewfinderFlipTransition
- (CAMViewfinderFlipTransition)initWithTransitionableViewfinder:(id)a3;
- (CAMViewfinderTransitionable)_transitionableViewfinder;
- (double)_backSnapshotTargetRadiansForDirection:(unint64_t)a3 frontSnapshotRadians:(double)a4;
- (double)_frontSnapshotTargetRadiansForDirection:(unint64_t)a3 fromRadians:(double)a4;
- (id)_snapshotFlipAnimationFromValue:(double)a3 toValue:(double)a4;
- (void)_cleanupFromFlipTransition;
- (void)_getCurrentRadians:(double *)a3 targetRadians:(double *)a4 forDirection:(unint64_t)a5 withAnimation:(id)a6 onFrontSnapshotLayer:(id)a7;
- (void)completeTransitionToLivePreviewWithCompletionHandler:(id)a3;
- (void)performFlipTransitionWithDirection:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation CAMViewfinderFlipTransition

- (CAMViewfinderFlipTransition)initWithTransitionableViewfinder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CAMViewfinderFlipTransition;
  v5 = [(CAMViewfinderFlipTransition *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__transitionableViewfinder, v4);
    v7 = v6;
  }

  return v6;
}

- (void)_cleanupFromFlipTransition
{
  v3 = [(CAMViewfinderFlipTransition *)self _frontSnapshotView];
  v18 = [(CAMViewfinderFlipTransition *)self _backSnapshotView];
  v4 = [(CAMViewfinderFlipTransition *)self _targetSnapshotView];
  v5 = [v3 layer];
  [v5 removeAllAnimations];
  [v5 setZPosition:0.0];
  [v3 removeFromSuperview];
  [(CAMViewfinderFlipTransition *)self _setFrontSnapshotView:0];
  v6 = [v18 layer];
  [v6 removeAllAnimations];
  [v6 setZPosition:0.0];
  v7 = [v4 layer];
  [v7 removeAllAnimations];
  [v7 setZPosition:0.0];
  v8 = [(CAMViewfinderFlipTransition *)self _transitionableViewfinder];
  v9 = [v8 previewView];
  v10 = [v9 superview];
  [v9 setHidden:0];
  v11 = [v9 layer];
  [v11 setZPosition:0.0];
  LODWORD(v12) = 1.0;
  [v11 setOpacity:v12];
  v13 = [v10 layer];
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
  [v13 setSublayerTransform:v19];
}

- (void)performFlipTransitionWithDirection:(unint64_t)a3 completionHandler:(id)a4
{
  v49[2] = *MEMORY[0x1E69E9840];
  v34 = a4;
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
  v36 = [(CAMViewfinderFlipTransition *)self _transitionableViewfinder];
  v37 = [v36 previewView];
  v9 = [v36 desiredAspectRatio];
  v35 = [v37 superview];
  v38 = [v35 layer];
  v46 = 0xBF435EAF72D7949ELL;
  [v38 setSublayerTransform:v44];
  [v38 setSortsSublayers:0];
  v10 = [(CAMViewfinderFlipTransition *)self _frontSnapshotView];
  v11 = [(CAMViewfinderFlipTransition *)self _backSnapshotView];
  if (v10)
  {
    [(CAMSnapshotView *)v10 setBlurred:1];
  }

  else
  {
    v10 = [[CAMSnapshotView alloc] initWithView:v37 desiredAspectRatio:v9];
    v12 = [(CAMSnapshotView *)v10 layer];
    [v12 setDoubleSided:0];

    [v35 addSubview:v10];
  }

  if (!v11)
  {
    v11 = [[CAMSnapshotView alloc] initWithView:v37 desiredAspectRatio:v9];
    v13 = [(CAMSnapshotView *)v11 layer];
    [v13 setDoubleSided:0];

    v14 = [(CAMSnapshotView *)v11 layer];
    [v14 setMasksToBounds:1];

    [(CAMSnapshotView *)v11 setBlurred:1];
    [(CAMSnapshotView *)v11 setDimmed:1];
    [v35 insertSubview:v11 aboveSubview:v10];
  }

  v43 = 0.0;
  *&v44[0] = 0;
  if (v10 && v11)
  {
    v15 = [(CAMSnapshotView *)v10 layer];
    v16 = [v15 animationForKey:@"rotationAnimation"];
    [(CAMViewfinderFlipTransition *)self _getCurrentRadians:v44 targetRadians:&v43 forDirection:a3 withAnimation:v16 onFrontSnapshotLayer:v15];

    v17 = v43;
    v18 = *v44;
  }

  else
  {
    v18 = 0.0;
    [(CAMViewfinderFlipTransition *)self _frontSnapshotTargetRadiansForDirection:a3 fromRadians:0.0];
    v17 = v19;
    v43 = v19;
  }

  v20 = [(CAMViewfinderFlipTransition *)self _snapshotFlipAnimationFromValue:v18 toValue:v17];
  [v20 setRemovedOnCompletion:0];
  [(CAMViewfinderFlipTransition *)self _backSnapshotTargetRadiansForDirection:a3 frontSnapshotRadians:*v44];
  v22 = v21;
  [(CAMViewfinderFlipTransition *)self _backSnapshotTargetRadiansForDirection:a3 frontSnapshotRadians:v43];
  v24 = [(CAMViewfinderFlipTransition *)self _snapshotFlipAnimationFromValue:v22 toValue:v23];
  [v24 setRemovedOnCompletion:0];
  [v20 duration];
  v26 = v25;
  v27 = [v20 timingFunction];
  v28 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.scale.xy"];
  [v28 setValues:&unk_1F16C90B0];
  [v28 setKeyTimes:&unk_1F16C90C8];
  [v28 setFillMode:*MEMORY[0x1E69797E0]];
  [v28 setRemovedOnCompletion:0];
  v49[0] = v27;
  v49[1] = v27;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  [v28 setTimingFunctions:v29];

  [v28 setDuration:v26];
  [v37 setHidden:1];
  v30 = ([(CAMViewfinderFlipTransition *)self _currentAnimationID]+ 1);
  [(CAMViewfinderFlipTransition *)self _setCurrentAnimationID:v30];
  if (v34)
  {
    objc_initWeak(&location, self);
    v31 = objc_alloc_init(CAMAnimationDelegate);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __84__CAMViewfinderFlipTransition_performFlipTransitionWithDirection_completionHandler___block_invoke;
    v39[3] = &unk_1E76F7A68;
    objc_copyWeak(v41, &location);
    v41[1] = v30;
    v40 = v34;
    [(CAMAnimationDelegate *)v31 setCompletion:v39];
    [v20 setDelegate:v31];

    objc_destroyWeak(v41);
    objc_destroyWeak(&location);
  }

  v32 = [(CAMSnapshotView *)v10 layer];
  v33 = [(CAMSnapshotView *)v11 layer];
  [v32 addAnimation:v20 forKey:@"rotationAnimation"];
  [v33 addAnimation:v24 forKey:@"rotationAnimation"];
  [v38 addAnimation:v28 forKey:@"flipContainerAnimation"];
  [(CAMViewfinderFlipTransition *)self _setFrontSnapshotView:v10];
  [(CAMViewfinderFlipTransition *)self _setBackSnapshotView:v11];
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

- (void)_getCurrentRadians:(double *)a3 targetRadians:(double *)a4 forDirection:(unint64_t)a5 withAnimation:(id)a6 onFrontSnapshotLayer:(id)a7
{
  if (a3 && a4)
  {
    v12 = a7;
    v13 = a6;
    [v12 convertTime:0 fromLayer:CACurrentMediaTime()];
    v15 = v14;

    [v13 beginTime];
    v17 = v15 - v16;
    [v13 duration];
    v19 = v17 / v18;
    if (v19 > 1.0)
    {
      v19 = 1.0;
    }

    v20 = fmaxf(v19, 0.0);
    v31 = [v13 timingFunction];
    *&v21 = v20;
    [v31 _solveForInput:v21];
    v23 = v22;
    v24 = [v13 toValue];
    [v24 floatValue];
    v26 = v25;

    v27 = [v13 fromValue];

    [v27 floatValue];
    v29 = v28;

    *a3 = v29 + (v26 - v29) * v23;
    [(CAMViewfinderFlipTransition *)self _frontSnapshotTargetRadiansForDirection:a5 fromRadians:v26];
    *a4 = v30;
  }
}

- (double)_frontSnapshotTargetRadiansForDirection:(unint64_t)a3 fromRadians:(double)a4
{
  if (a3 == 1)
  {
    v5 = -3.14159265;
    return a4 + v5;
  }

  v4 = 0.0;
  if (!a3)
  {
    v5 = 3.14159265;
    return a4 + v5;
  }

  return v4;
}

- (double)_backSnapshotTargetRadiansForDirection:(unint64_t)a3 frontSnapshotRadians:(double)a4
{
  if (a3 == 1)
  {
    v5 = -3.14159265;
    return a4 + v5;
  }

  v4 = 0.0;
  if (!a3)
  {
    v5 = 3.14159265;
    return a4 + v5;
  }

  return v4;
}

- (id)_snapshotFlipAnimationFromValue:(double)a3 toValue:(double)a4
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
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v6 setFromValue:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v6 setToValue:v13];

  return v6;
}

- (void)completeTransitionToLivePreviewWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(CAMViewfinderFlipTransition *)self _cleanupFromFlipTransition];
  v5 = [(CAMViewfinderFlipTransition *)self _transitionableViewfinder];
  v6 = [v5 previewView];
  v7 = [v5 desiredAspectRatio];
  v8 = [v6 superview];
  v9 = [(CAMViewfinderFlipTransition *)self _backSnapshotView];
  v10 = [[CAMSnapshotView alloc] initWithView:v6 desiredAspectRatio:v7];
  [v8 insertSubview:v10 belowSubview:v9];
  [(CAMSnapshotView *)v10 setBlurred:1];
  v11 = [v9 layer];
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
  objc_initWeak(&location, v9);
  objc_initWeak(&from, v10);
  [(CAMViewfinderFlipTransition *)self _setBackSnapshotView:0];
  [(CAMViewfinderFlipTransition *)self _setTargetSnapshotView:0];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__CAMViewfinderFlipTransition_completeTransitionToLivePreviewWithCompletionHandler___block_invoke;
  v20[3] = &unk_1E76F7A90;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v19 = v4;
  v21 = v19;
  [(CAMSnapshotView *)v10 setBlurred:0 animated:1 style:1 withCompletionBlock:v20];
  [v11 addAnimation:v17 forKey:@"opacityAnimation"];
  [v11 setOpacity:0.0];

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