@interface MPUStackView
- (CGPoint)vanishingPoint;
- (CGSize)baseSize;
- (CGSize)sizeInsetStep;
- (CGSize)sizeOfItemAtIndex:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MPUStackView)initWithFrame:(CGRect)a3;
- (MPUStackView)initWithFrame:(CGRect)a3 itemClass:(Class)a4 itemReuseIdentifier:(id)a5;
- (MPUStackViewDataSource)dataSource;
- (UIOffset)maximumRelativeOffsetStep;
- (UIOffset)relativeOffsetOfItemAtIndex:(double)a3 withCenter:(CGPoint)a4;
- (UIView)perspectiveTargetView;
- (void)_updateGeometryFieldsInConfiguration;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)endIgnoringDistanceUpdates;
- (void)layoutSubviews;
- (void)reloadDataWithTransition:(int64_t)a3;
- (void)setBaseSize:(CGSize)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setDataSource:(id)a3;
- (void)setForcesIntegralX:(BOOL)a3;
- (void)setForcesIntegralY:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMaximumRelativeOffsetStep:(UIOffset)a3;
- (void)setPerspectiveTargetView:(id)a3;
- (void)setSizeInsetStep:(CGSize)a3;
- (void)setVanishingPoint:(CGPoint)a3;
- (void)updateForChangedDistanceFromVanishingPoint;
@end

@implementation MPUStackView

- (MPUStackView)initWithFrame:(CGRect)a3
{
  [MEMORY[0x277CBEAD8] raise:@"MPUStackViewInitializationException" format:{@"Do not use -initWithFrame:. Please use -initWithFrame:itemClass:itemReuseIdentifier: instead.", a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];

  return 0;
}

- (MPUStackView)initWithFrame:(CGRect)a3 itemClass:(Class)a4 itemReuseIdentifier:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = MPUStackView;
  v12 = [(MPUStackView *)&v19 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemClass, a4);
    v14 = [v11 copy];
    itemReuseIdentifier = v13->_itemReuseIdentifier;
    v13->_itemReuseIdentifier = v14;

    v16 = [MEMORY[0x277D759A0] mainScreen];
    [v16 scale];
    v13->_configuration.scale = v17;

    [_MPUStackItemReuseCache registerStackViewForReuseIdentifier:v13->_itemReuseIdentifier];
    [(MPUStackView *)v13 setClipsToBounds:0];
  }

  return v13;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  [_MPUStackItemReuseCache unregisterStackViewForReuseIdentifier:self->_itemReuseIdentifier];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_items;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [_MPUStackItemReuseCache enqueueReusableStackItem:*(*(&v9 + 1) + 8 * v7++) forReuseIdentifier:self->_itemReuseIdentifier];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = MPUStackView;
  [(MPUStackView *)&v8 dealloc];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MPUStackView;
  [(MPUStackView *)&v3 didMoveToSuperview];
  [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = MPUStackView;
  [(MPUStackView *)&v9 didMoveToWindow];
  v3 = [(MPUStackView *)self window];
  window = self->_window;
  self->_window = v3;

  v5 = [(UIWindow *)self->_window screen];
  [v5 scale];
  self->_configuration.scale = v6;

  if (self->_configuration.scale < 0.00000011920929)
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 scale];
    self->_configuration.scale = v8;
  }

  [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MPUStackView;
  [(MPUStackView *)&v3 layoutSubviews];
  [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MPUStackView;
  [(MPUStackView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MPUStackView *)self _updateGeometryFieldsInConfiguration];
}

- (void)setCenter:(CGPoint)a3
{
  v4.receiver = self;
  v4.super_class = MPUStackView;
  [(MPUStackView *)&v4 setCenter:a3.x, a3.y];
  [(MPUStackView *)self _updateGeometryFieldsInConfiguration];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MPUStackView;
  [(MPUStackView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MPUStackView *)self _updateGeometryFieldsInConfiguration];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = self->_configuration.baseSize.width;
  height = self->_configuration.baseSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)baseSize
{
  width = self->_configuration.baseSize.width;
  height = self->_configuration.baseSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setBaseSize:(CGSize)a3
{
  if (self->_configuration.baseSize.width != a3.width || self->_configuration.baseSize.height != a3.height)
  {
    self->_configuration.baseSize = a3;
    [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (UIOffset)maximumRelativeOffsetStep
{
  horizontal = self->_configuration.maximumRelativeOffsetStep.horizontal;
  vertical = self->_configuration.maximumRelativeOffsetStep.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(MPUStackView *)self reloadData];
    v5 = obj;
  }
}

- (void)setForcesIntegralX:(BOOL)a3
{
  if (self->_configuration.forcesIntegralX != a3)
  {
    self->_configuration.forcesIntegralX = a3;
    [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)setForcesIntegralY:(BOOL)a3
{
  if (self->_configuration.forcesIntegralY != a3)
  {
    self->_configuration.forcesIntegralY = a3;
    [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)setMaximumRelativeOffsetStep:(UIOffset)a3
{
  if (self->_configuration.maximumRelativeOffsetStep.horizontal != a3.horizontal || self->_configuration.maximumRelativeOffsetStep.vertical != a3.vertical)
  {
    self->_configuration.maximumRelativeOffsetStep = a3;
    [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)setPerspectiveTargetView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_perspectiveTargetView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_perspectiveTargetView, obj);
    [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
    v5 = obj;
  }
}

- (void)setSizeInsetStep:(CGSize)a3
{
  if (self->_configuration.sizeInsetStep.width != a3.width || self->_configuration.sizeInsetStep.height != a3.height)
  {
    self->_configuration.sizeInsetStep = a3;
    [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (void)setVanishingPoint:(CGPoint)a3
{
  if (self->_configuration.vanishingPoint.x != a3.x || self->_configuration.vanishingPoint.y != a3.y)
  {
    self->_configuration.vanishingPoint = a3;
    [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
  }
}

- (CGSize)sizeInsetStep
{
  width = self->_configuration.sizeInsetStep.width;
  height = self->_configuration.sizeInsetStep.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)vanishingPoint
{
  x = self->_configuration.vanishingPoint.x;
  y = self->_configuration.vanishingPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)endIgnoringDistanceUpdates
{
  distanceIgnoreCount = self->_distanceIgnoreCount;
  v3 = distanceIgnoreCount == 1;
  v4 = distanceIgnoreCount < 1;
  v5 = distanceIgnoreCount - 1;
  if (!v4)
  {
    self->_distanceIgnoreCount = v5;
    if (v3)
    {
      [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
    }
  }
}

- (UIOffset)relativeOffsetOfItemAtIndex:(double)a3 withCenter:(CGPoint)a4
{
  y = a4.y;
  WeakRetained = objc_loadWeakRetained(&self->_perspectiveTargetView);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    p_configuration = &self->_configuration;
LABEL_5:
    [(UIWindow *)v7 bounds];
    vanishingPoint = p_configuration->vanishingPoint;
    v12.f64[1] = v11;
    v13 = vsubq_f64(v12, vanishingPoint);
    v14.f64[0] = v32;
    v14.f64[1] = y;
    v34 = vdivq_f64(vsubq_f64(vanishingPoint, v14), vbslq_s8(vcgtq_f64(vanishingPoint, v13), vanishingPoint, v13));

    v15 = v34;
    goto LABEL_6;
  }

  v9 = self->_window;
  p_configuration = &self->_configuration;
  if (v9)
  {
    v7 = v9;
    goto LABEL_5;
  }

  v15 = *MEMORY[0x277CBF3A8];
LABEL_6:
  v16 = -a3;
  if (a3 >= 0.0)
  {
    v16 = a3;
  }

  v17 = vmulq_n_f64(vaddq_f64(p_configuration->sizeInsetStep, p_configuration->sizeInsetStep), v16);
  v18 = vmulq_n_f64(p_configuration->maximumRelativeOffsetStep, v16);
  __asm { FMOV            V3.2D, #0.5 }

  v24 = vmulq_f64(v17, _Q3);
  v25 = vsubq_f64(vnegq_f64(v18), v24);
  v26 = vaddq_f64(v18, v24);
  v27 = vmlaq_f64(v25, vaddq_f64(vmulq_f64(v15, _Q3), _Q3), vaddq_f64(vbslq_s8(vcltzq_f64(v25), vnegq_f64(v25), v25), vbslq_s8(vcltzq_f64(v26), vnegq_f64(v26), v26)));
  *&v24.f64[0] = vdup_n_s32(a3 < 0.0);
  v28.i64[0] = LODWORD(v24.f64[0]);
  v28.i64[1] = HIDWORD(v24.f64[0]);
  v29 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v28, 0x3FuLL)), vnegq_f64(v27), v27);
  v30 = *&v29.i64[1];
  result.horizontal = *v29.i64;
  result.vertical = v30;
  return result;
}

- (void)reloadDataWithTransition:(int64_t)a3
{
  numberOfItems = self->_numberOfItems;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [WeakRetained numberOfItemsInStackView:self];
  self->_numberOfItems = v7;
  if (numberOfItems)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && v7 == numberOfItems)
  {
    if (a3 == 1)
    {
      v22 = [(NSMutableArray *)self->_items objectAtIndex:0];
      [(NSMutableArray *)self->_items removeObjectAtIndex:0];
      v80 = 0;
      v81 = &v80;
      v82 = 0x3032000000;
      v83 = __Block_byref_object_copy_;
      v84 = __Block_byref_object_dispose_;
      v85 = [(MPUStackView *)self _dequeueReusableItem];
      v76 = 0;
      v77 = &v76;
      v78 = 0x2020000000;
      v79 = 0;
      v23 = v81[5];
      if (!v23)
      {
        v24 = MEMORY[0x277D75D18];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __41__MPUStackView_reloadDataWithTransition___block_invoke_2;
        v68[3] = &unk_27984C478;
        v70 = &v80;
        v68[4] = self;
        v69 = WeakRetained;
        v71 = &v76;
        [v24 performWithoutAnimation:v68];

        v23 = v81[5];
      }

      v25 = [v23 superview];

      v26 = v81[5];
      if (v25 == self)
      {
        [(MPUStackView *)self sendSubviewToBack:v26];
      }

      else
      {
        [(MPUStackView *)self insertSubview:v26 atIndex:0];
      }

      [(NSMutableArray *)self->_items addObject:v81[5]];
      v28 = objc_loadWeakRetained(&self->_perspectiveTargetView);
      if (!v28)
      {
        v28 = self->_window;
      }

      [(MPUStackView *)self convertPoint:v28 toView:self->_configuration.centerInLocalCoordinates.x, self->_configuration.centerInLocalCoordinates.y];
      v43 = v30;
      v44 = v29;
      if (v28)
      {
        [(UIWindow *)v28 bounds];
        vanishingPoint = self->_configuration.vanishingPoint;
        v33.f64[1] = v32;
        v34 = vsubq_f64(v33, vanishingPoint);
        v33.f64[0] = v44;
        v33.f64[1] = v43;
        v35 = vdivq_f64(vsubq_f64(vanishingPoint, v33), vbslq_s8(vcgtq_f64(vanishingPoint, v34), vanishingPoint, v34));
      }

      else
      {
        v35 = *MEMORY[0x277CBF3A8];
      }

      v36 = MEMORY[0x277D75D18];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __41__MPUStackView_reloadDataWithTransition___block_invoke_3;
      v63[3] = &unk_27984C4A0;
      v63[4] = self;
      v65 = &v80;
      v45 = v35;
      v67 = v35;
      v66 = &v76;
      v37 = WeakRetained;
      v64 = v37;
      [v36 performWithoutAnimation:v63];
      v61[0] = 0;
      v61[1] = v61;
      v61[2] = 0x2020000000;
      v62 = 0;
      v59[0] = 0;
      v59[1] = v59;
      v59[2] = 0x2020000000;
      v60 = 0;
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __41__MPUStackView_reloadDataWithTransition___block_invoke_4;
      v58[3] = &unk_27984C4C8;
      v58[5] = v61;
      v58[6] = v59;
      v58[4] = self;
      v38 = MEMORY[0x259C69230](v58);
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __41__MPUStackView_reloadDataWithTransition___block_invoke_5;
      v53[3] = &unk_27984C4F0;
      v39 = v22;
      v54 = v39;
      v55 = self;
      v57 = v61;
      v40 = v38;
      v56 = v40;
      [MPUFallAnimator animateFallForView:v39 withCompletionHandler:v53];
      v41 = MEMORY[0x277D75D18];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __41__MPUStackView_reloadDataWithTransition___block_invoke_6;
      v49[3] = &unk_27984C518;
      v49[4] = self;
      v52 = v45;
      v50 = v37;
      v51 = &v80;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __41__MPUStackView_reloadDataWithTransition___block_invoke_7;
      v46[3] = &unk_27984C540;
      v48 = v59;
      v42 = v40;
      v47 = v42;
      [v41 animateWithDuration:1 delay:v49 options:v46 animations:0.3 completion:0.05];

      _Block_object_dispose(v59, 8);
      _Block_object_dispose(v61, 8);

      _Block_object_dispose(&v76, 8);
      _Block_object_dispose(&v80, 8);
    }
  }

  else
  {
    if (v7 <= 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        v80 = 0;
        v81 = &v80;
        v82 = 0x3032000000;
        v83 = __Block_byref_object_copy_;
        v84 = __Block_byref_object_dispose_;
        v11 = [(NSMutableArray *)self->_items count];
        v12 = 0;
        if (v10 < v11)
        {
          v12 = [(NSMutableArray *)self->_items objectAtIndex:v10];
        }

        v85 = v12;
        v76 = 0;
        v77 = &v76;
        v78 = 0x2020000000;
        v79 = 0;
        v13 = v81;
        if (!v81[5])
        {
          v14 = [(MPUStackView *)self _dequeueReusableItem];
          v15 = v81[5];
          v81[5] = v14;

          v13 = v81;
          if (!v81[5])
          {
            v16 = MEMORY[0x277D75D18];
            v72[0] = MEMORY[0x277D85DD0];
            v72[1] = 3221225472;
            v72[2] = __41__MPUStackView_reloadDataWithTransition___block_invoke;
            v72[3] = &unk_27984C478;
            v74 = &v80;
            v72[4] = self;
            v73 = WeakRetained;
            v75 = &v76;
            [v16 performWithoutAnimation:v72];

            v13 = v81;
          }
        }

        if ((v77[3] & 1) == 0)
        {
          [v13[5] willBeginItemViewConfiguration];
          v13 = v81;
        }

        [WeakRetained stackView:self applyAttributesToItem:v13[5] atIndex:v10];
        [v81[5] didCompleteItemViewConfiguration];
        v17 = [v81[5] superview];

        v18 = v81[5];
        if (v17 == self)
        {
          [(MPUStackView *)self sendSubviewToBack:v18];
        }

        else
        {
          [(MPUStackView *)self insertSubview:v18 atIndex:0];
        }

        items = self->_items;
        if (!items)
        {
          v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_numberOfItems];
          v21 = self->_items;
          self->_items = v20;

          items = self->_items;
        }

        if (([(NSMutableArray *)items containsObject:v81[5]]& 1) == 0)
        {
          [(NSMutableArray *)self->_items addObject:v81[5]];
        }

        _Block_object_dispose(&v76, 8);
        _Block_object_dispose(&v80, 8);

        ++v10;
      }

      while (v10 < self->_numberOfItems);
    }

    while (v10 < [(NSMutableArray *)self->_items count])
    {
      v27 = [(NSMutableArray *)self->_items objectAtIndex:v10];
      [(NSMutableArray *)self->_items removeObjectIdenticalTo:v27];
      [v27 removeFromSuperview];
      [_MPUStackItemReuseCache enqueueReusableStackItem:v27 forReuseIdentifier:self->_itemReuseIdentifier];
    }

    [(MPUStackView *)self updateForChangedDistanceFromVanishingPoint];
  }
}

uint64_t __41__MPUStackView_reloadDataWithTransition___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(*(*(a1 + 32) + 568)) initWithFrame:{0.0, 0.0, *(*(a1 + 32) + 408), *(*(a1 + 32) + 416)}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) willBeginItemViewConfiguration];
  result = [*(a1 + 40) stackView:*(a1 + 32) didCreateItem:*(*(*(a1 + 48) + 8) + 40)];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

uint64_t __41__MPUStackView_reloadDataWithTransition___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(*(*(a1 + 32) + 568)) initWithFrame:{0.0, 0.0, *(*(a1 + 32) + 408), *(*(a1 + 32) + 416)}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) willBeginItemViewConfiguration];
  result = [*(a1 + 40) stackView:*(a1 + 32) didCreateItem:*(*(*(a1 + 48) + 8) + 40)];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

uint64_t __41__MPUStackView_reloadDataWithTransition___block_invoke_3(uint64_t a1, float64x2_t a2)
{
  a2.f64[0] = *(a1 + 64);
  _MPUStackViewApplyLayoutToItem(*(a1 + 32) + 408, *(*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 584) - 1, a2, *(a1 + 72));
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    [*(*(*(a1 + 48) + 8) + 40) willBeginItemViewConfiguration];
  }

  [*(a1 + 40) stackView:? applyAttributesToItem:? atIndex:?];
  [*(*(*(a1 + 48) + 8) + 40) didCompleteItemViewConfiguration];
  v3 = *(*(*(a1 + 48) + 8) + 40);

  return [v3 setAlpha:0.0];
}

uint64_t __41__MPUStackView_reloadDataWithTransition___block_invoke_4(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1 && *(*(*(result + 48) + 8) + 24) == 1)
  {
    return [*(result + 32) updateForChangedDistanceFromVanishingPoint];
  }

  return result;
}

uint64_t __41__MPUStackView_reloadDataWithTransition___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [_MPUStackItemReuseCache enqueueReusableStackItem:*(a1 + 32) forReuseIdentifier:*(*(a1 + 40) + 576)];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __41__MPUStackView_reloadDataWithTransition___block_invoke_6(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 544);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v4.f64[0] = *(a1 + 56);
        _MPUStackViewApplyLayoutToItem(*(a1 + 32) + 408, v9, v6, v4, *(a1 + 64));
        [v9 willBeginItemViewConfiguration];
        [*(a1 + 40) stackView:*(a1 + 32) applyAttributesToItem:v9 atIndex:v6];
        [v9 didCompleteItemViewConfiguration];
        ++v6;
      }

      v5 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return [*(*(*(a1 + 48) + 8) + 40) setAlpha:1.0];
}

- (CGSize)sizeOfItemAtIndex:(double)a3
{
  v3 = vsubq_f64(self->_configuration.baseSize, vmulq_n_f64(vaddq_f64(self->_configuration.sizeInsetStep, self->_configuration.sizeInsetStep), a3));
  v4 = v3.f64[1];
  result.width = v3.f64[0];
  result.height = v4;
  return result;
}

- (void)updateForChangedDistanceFromVanishingPoint
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_distanceIgnoreCount <= 0)
  {
    v3 = [MEMORY[0x277D75D18] _isInAnimationBlock];
    if ((v3 & 1) == 0)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
    }

    WeakRetained = objc_loadWeakRetained(&self->_perspectiveTargetView);
    if (!WeakRetained)
    {
      WeakRetained = self->_window;
    }

    p_configuration = &self->_configuration;
    [(MPUStackView *)self convertPoint:WeakRetained toView:self->_configuration.centerInLocalCoordinates.x, self->_configuration.centerInLocalCoordinates.y];
    if (WeakRetained)
    {
      v19 = v6;
      v20 = v7;
      [(UIWindow *)WeakRetained bounds];
      vanishingPoint = self->_configuration.vanishingPoint;
      v10.f64[1] = v9;
      v11 = vsubq_f64(v10, vanishingPoint);
      v10.f64[0] = v19;
      v10.f64[1] = v20;
      v12 = vdivq_f64(vsubq_f64(vanishingPoint, v10), vbslq_s8(vcgtq_f64(vanishingPoint, v11), vanishingPoint, v11));
    }

    else
    {
      v12 = *MEMORY[0x277CBF3A8];
    }

    v21 = v12;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = self->_items;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v13);
          }

          _MPUStackViewApplyLayoutToItem(p_configuration, *(*(&v22 + 1) + 8 * i), v16++, v21, v21.f64[1]);
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    if ((v3 & 1) == 0)
    {
      [MEMORY[0x277CD9FF0] commit];
    }
  }
}

- (void)_updateGeometryFieldsInConfiguration
{
  [(MPUStackView *)self bounds];
  self->_configuration.bounds.origin.x = v3;
  self->_configuration.bounds.origin.y = v4;
  self->_configuration.bounds.size.width = v5;
  self->_configuration.bounds.size.height = v6;
  self->_configuration.centerInLocalCoordinates.x = v3 + v5 * 0.5;
  self->_configuration.centerInLocalCoordinates.y = v4 + v6 * 0.5;
}

- (MPUStackViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (UIView)perspectiveTargetView
{
  WeakRetained = objc_loadWeakRetained(&self->_perspectiveTargetView);

  return WeakRetained;
}

@end