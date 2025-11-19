@interface CFXViewfinderFlipTransition
- (CFXViewfinderFlipTransition)initWithViewfinderView:(id)a3;
- (UIView)viewfinderView;
- (double)_backSnapshotTargetRadiansForDirection:(int64_t)a3 frontSnapshotRadians:(double)a4;
- (double)_frontSnapshotTargetRadiansForDirection:(int64_t)a3 fromRadians:(double)a4;
- (id)_snapshotFlipAnimationFromValue:(double)a3 toValue:(double)a4;
- (void)_cleanupFromFlipTransition;
- (void)_getCurrentRadians:(double *)a3 targetRadians:(double *)a4 forDirection:(int64_t)a5 withAnimation:(id)a6 onFrontSnapshotLayer:(id)a7;
- (void)completeTransitionToLivePreviewWithCompletionHandler:(id)a3;
- (void)performFlipTransitionWithDirection:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation CFXViewfinderFlipTransition

- (CFXViewfinderFlipTransition)initWithViewfinderView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CFXViewfinderFlipTransition;
  v5 = [(CFXViewfinderFlipTransition *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewfinderView, v4);
    v7 = v6;
  }

  return v6;
}

- (void)_cleanupFromFlipTransition
{
  v3 = [(CFXViewfinderFlipTransition *)self _frontSnapshotView];
  v4 = [(CFXViewfinderFlipTransition *)self _backSnapshotView];
  v5 = [(CFXViewfinderFlipTransition *)self _targetSnapshotView];
  v6 = [v3 layer];
  [v6 removeAllAnimations];
  [v6 setZPosition:0.0];
  [v3 removeFromSuperview];
  [(CFXViewfinderFlipTransition *)self _setFrontSnapshotView:0];
  v7 = [v4 layer];
  [v7 removeAllAnimations];
  [v7 setZPosition:0.0];
  v8 = [v5 layer];
  [v8 removeAllAnimations];
  [v8 setZPosition:0.0];
  v9 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  v10 = [v9 superview];

  v11 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  [v11 setHidden:0];

  v12 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  [v12 setNeedsLayout];

  v13 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  [v13 layoutIfNeeded];

  v14 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  v15 = [v14 layer];

  [v15 setZPosition:0.0];
  LODWORD(v16) = 1.0;
  [v15 setOpacity:v16];
  v17 = [v10 layer];
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
  [v17 setSublayerTransform:v22];
}

- (void)performFlipTransitionWithDirection:(int64_t)a3 completionHandler:(id)a4
{
  v52[2] = *MEMORY[0x277D85DE8];
  v39 = a4;
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
  v9 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  v40 = [v9 superview];

  v41 = [v40 layer];
  v49 = 0xBF435EAF72D7949ELL;
  [v41 setSublayerTransform:v47];
  [v41 setSortsSublayers:0];
  v10 = [(CFXViewfinderFlipTransition *)self _frontSnapshotView];
  v11 = [(CFXViewfinderFlipTransition *)self _backSnapshotView];
  if (v10)
  {
    [v10 setBlurred:1];
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x277CF7EB8]);
    v13 = [(CFXViewfinderFlipTransition *)self viewfinderView];
    v10 = [v12 initWithView:v13 desiredAspectRatio:4];

    v14 = [v10 layer];
    [v14 setDoubleSided:0];

    [v40 addSubview:v10];
  }

  if (!v11)
  {
    v15 = objc_alloc(MEMORY[0x277CF7EB8]);
    v16 = [(CFXViewfinderFlipTransition *)self viewfinderView];
    v11 = [v15 initWithView:v16 desiredAspectRatio:4];

    v17 = [v11 layer];
    [v17 setDoubleSided:0];

    v18 = [v11 layer];
    [v18 setMasksToBounds:1];

    [v11 setBlurred:1];
    [v11 setDimmed:1];
    [v40 insertSubview:v11 aboveSubview:v10];
  }

  v46 = 0.0;
  *&v47[0] = 0;
  if (v10 && v11)
  {
    v19 = [v10 layer];
    v20 = [v19 animationForKey:@"rotationAnimation"];
    [(CFXViewfinderFlipTransition *)self _getCurrentRadians:v47 targetRadians:&v46 forDirection:a3 withAnimation:v20 onFrontSnapshotLayer:v19];

    v21 = v46;
    v22 = *v47;
  }

  else
  {
    v22 = 0.0;
    [(CFXViewfinderFlipTransition *)self _frontSnapshotTargetRadiansForDirection:a3 fromRadians:0.0];
    v21 = v23;
    v46 = v23;
  }

  v24 = [(CFXViewfinderFlipTransition *)self _snapshotFlipAnimationFromValue:v22 toValue:v21];
  [v24 setRemovedOnCompletion:0];
  [(CFXViewfinderFlipTransition *)self _backSnapshotTargetRadiansForDirection:a3 frontSnapshotRadians:*v47];
  v26 = v25;
  [(CFXViewfinderFlipTransition *)self _backSnapshotTargetRadiansForDirection:a3 frontSnapshotRadians:v46];
  v28 = [(CFXViewfinderFlipTransition *)self _snapshotFlipAnimationFromValue:v26 toValue:v27];
  [v28 setRemovedOnCompletion:0];
  [v24 duration];
  v30 = v29;
  v31 = [v24 timingFunction];
  v32 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
  [v32 setValues:&unk_28556D848];
  [v32 setKeyTimes:&unk_28556D860];
  [v32 setFillMode:*MEMORY[0x277CDA230]];
  [v32 setRemovedOnCompletion:0];
  v52[0] = v31;
  v52[1] = v31;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  [v32 setTimingFunctions:v33];

  [v32 setDuration:v30];
  v34 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  [v34 setHidden:1];

  v35 = ([(CFXViewfinderFlipTransition *)self _currentAnimationID]+ 1);
  [(CFXViewfinderFlipTransition *)self _setCurrentAnimationID:v35];
  if (v39)
  {
    objc_initWeak(&location, self);
    v36 = objc_alloc_init(CFXAnimationDelegate);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __84__CFXViewfinderFlipTransition_performFlipTransitionWithDirection_completionHandler___block_invoke;
    v42[3] = &unk_278D79D70;
    objc_copyWeak(v44, &location);
    v44[1] = v35;
    v43 = v39;
    [(CFXAnimationDelegate *)v36 setCompletion:v42];
    [v24 setDelegate:v36];

    objc_destroyWeak(v44);
    objc_destroyWeak(&location);
  }

  v37 = [v10 layer];
  v38 = [v11 layer];
  [v37 addAnimation:v24 forKey:@"rotationAnimation"];
  [v38 addAnimation:v28 forKey:@"rotationAnimation"];
  [v41 addAnimation:v32 forKey:@"flipContainerAnimation"];
  [(CFXViewfinderFlipTransition *)self _setFrontSnapshotView:v10];
  [(CFXViewfinderFlipTransition *)self _setBackSnapshotView:v11];
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

- (void)_getCurrentRadians:(double *)a3 targetRadians:(double *)a4 forDirection:(int64_t)a5 withAnimation:(id)a6 onFrontSnapshotLayer:(id)a7
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
    [(CFXViewfinderFlipTransition *)self _frontSnapshotTargetRadiansForDirection:a5 fromRadians:v26];
    *a4 = v30;
  }
}

- (double)_frontSnapshotTargetRadiansForDirection:(int64_t)a3 fromRadians:(double)a4
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

- (double)_backSnapshotTargetRadiansForDirection:(int64_t)a3 frontSnapshotRadians:(double)a4
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
  v6 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.y"];
  UIAnimationDragCoefficient();
  [v6 setDuration:v7 * 0.32];
  LODWORD(v8) = 1054280253;
  LODWORD(v9) = 1058306785;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v8 :0.0 :v9 :v10];
  [v6 setTimingFunction:v11];

  [v6 setFillMode:*MEMORY[0x277CDA230]];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v6 setFromValue:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v6 setToValue:v13];

  return v6;
}

- (void)completeTransitionToLivePreviewWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(CFXViewfinderFlipTransition *)self _cleanupFromFlipTransition];
  v5 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  v6 = [v5 superview];

  v7 = [(CFXViewfinderFlipTransition *)self _backSnapshotView];
  v8 = objc_alloc(MEMORY[0x277CF7EB8]);
  v9 = [(CFXViewfinderFlipTransition *)self viewfinderView];
  v10 = [v8 initWithView:v9 desiredAspectRatio:4];

  [v6 insertSubview:v10 belowSubview:v7];
  [v10 setBlurred:1];
  v11 = [v7 layer];
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
  objc_initWeak(&location, v7);
  objc_initWeak(&from, v10);
  [(CFXViewfinderFlipTransition *)self _setBackSnapshotView:0];
  [(CFXViewfinderFlipTransition *)self _setTargetSnapshotView:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__CFXViewfinderFlipTransition_completeTransitionToLivePreviewWithCompletionHandler___block_invoke;
  v20[3] = &unk_278D79D98;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  v19 = v4;
  v21 = v19;
  [v10 setBlurred:0 animated:1 style:1 withCompletionBlock:v20];
  [v11 addAnimation:v17 forKey:@"opacityAnimation"];
  [v11 setOpacity:0.0];

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