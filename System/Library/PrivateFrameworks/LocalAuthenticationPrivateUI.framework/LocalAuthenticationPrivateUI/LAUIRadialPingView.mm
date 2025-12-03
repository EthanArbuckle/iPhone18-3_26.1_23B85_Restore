@interface LAUIRadialPingView
- (LAUIRadialPingView)initWithFrame:(CGRect)frame;
- (id).cxx_construct;
- (void)_attachExpandAnimationToContainer:(blur_container *)container withDelay:(double)delay;
- (void)_attachPulseAnimationWithDelay:(double)delay;
- (void)_endExpand;
- (void)_setExpand:(BOOL)expand forBlurAtIndex:(unint64_t)index withDelay:(double)delay;
- (void)_setPulse:(BOOL)pulse withDelay:(double)delay;
- (void)_startExpandWithDelay:(double)delay;
- (void)_updateAnimatingAnimated:(BOOL)animated;
- (void)_updateExpandForBlurAtIndex:(unint64_t)index withDelay:(double)delay;
- (void)_updateViewsWithColor;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)initWithFrame:;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)animating;
- (void)tintColorDidChange;
@end

@implementation LAUIRadialPingView

- (LAUIRadialPingView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = LAUIRadialPingView;
  v3 = [(LAUIRadialPingView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    color = v3->_color;
    v3->_color = whiteColor;

    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = MEMORY[0x277CBF3A0];
    v8 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    container = v3->_container;
    v3->_container = v8;

    [(UIView *)v3->_container setClipsToBounds:1];
    [(LAUIRadialPingView *)v3 addSubview:v3->_container];
    v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v7, v7[1], v7[2], v7[3]}];
    primary = v3->_primary;
    v3->_primary = v10;

    [(UIView *)v3->_container addSubview:v3->_primary];
    p_container = &v3->_container;
    [LAUIRadialPingView initWithFrame:]::$_0::operator()(&p_container, &v3->_blurs, 0.15);
    [LAUIRadialPingView initWithFrame:]::$_0::operator()(&p_container, &v3->_blurs.__elems_[1].view, 0.1);
    [(LAUIRadialPingView *)v3 setTintColor:v3->_color];
    [(LAUIRadialPingView *)v3 _updateViewsWithColor];
    [(LAUIRadialPingView *)v3 _updateAnimatingAnimated:0];
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v13;
      [(LAUIRadialPingView *)v3 _updateExpandForBlurAtIndex:v12 withDelay:0.0];
      v13 = 0;
      v12 = 1;
    }

    while ((v14 & 1) != 0);
  }

  return v3;
}

- (void)initWithFrame:
{
  v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
  layer = [v6 layer];
  CATransform3DMakeScale(&v9, 0.001, 0.001, 1.0);
  [layer setTransform:&v9];

  [v6 setAlpha:a3];
  [**self addSubview:v6];
  v8 = *a2;
  *a2 = v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = LAUIRadialPingView;
  [(LAUIRadialPingView *)&v2 dealloc];
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = LAUIRadialPingView;
  [(LAUIRadialPingView *)&v7 tintColorDidChange];
  tintColor = [(LAUIRadialPingView *)self tintColor];
  color = self->_color;
  if (color != tintColor && (!tintColor || !color || ([(UIColor *)color isEqual:tintColor]& 1) == 0))
  {
    v5 = [(UIColor *)tintColor copy];
    v6 = self->_color;
    self->_color = v5;

    [(LAUIRadialPingView *)self _updateViewsWithColor];
  }
}

- (void)didMoveToWindow
{
  v8.receiver = self;
  v8.super_class = LAUIRadialPingView;
  [(LAUIRadialPingView *)&v8 didMoveToWindow];
  if (self->_animating)
  {
    window = [(LAUIRadialPingView *)self window];

    if (window)
    {
      if (self->_animating_dirty)
      {
        selfCopy2 = self;
        v5 = 1;
LABEL_9:
        [(LAUIRadialPingView *)selfCopy2 _updateAnimatingAnimated:v5];
        return;
      }

      [(LAUIRadialPingView *)self _startExpandWithDelay:0.0];
    }

    else
    {
      LAUI_CA_utilities::periodic_animation_state::detach_animation(&self->_pulse);
      p_pulse = &self->_blurs.__elems_[0].pulse;
      v7 = 80;
      do
      {
        LAUI_CA_utilities::periodic_animation_state::detach_animation(p_pulse);
        p_pulse += 5;
        v7 -= 40;
      }

      while (v7);
      if (self->_animating_dirty)
      {
        selfCopy2 = self;
        v5 = 0;
        goto LABEL_9;
      }

      [(LAUIRadialPingView *)self _endExpand];
    }
  }
}

- (void)layoutSubviews
{
  v34.receiver = self;
  v34.super_class = LAUIRadialPingView;
  [(LAUIRadialPingView *)&v34 layoutSubviews];
  [(LAUIRadialPingView *)self bounds];
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MidY = CGRectGetMidY(v37);
  if (height >= width)
  {
    v9 = width;
  }

  else
  {
    v9 = height;
  }

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  [(UIView *)self->_container bounds];
  v42.origin.x = v10;
  v42.origin.y = v11;
  v42.size.width = v9;
  v42.size.height = v9;
  if (!CGRectEqualToRect(v38, v42))
  {
    [(UIView *)self->_container setBounds:v10, v11, v9, v9];
    layer = [(UIView *)self->_container layer];
    [layer setCornerRadius:v9 * 0.5];
  }

  [(UIView *)self->_container center];
  if (v14 != MidX || v13 != MidY)
  {
    [(UIView *)self->_container setCenter:MidX, MidY];
  }

  v39.origin.x = v10;
  v39.origin.y = v11;
  v39.size.width = v9;
  v39.size.height = v9;
  v16 = CGRectGetMidX(v39);
  v40.origin.x = v10;
  v40.origin.y = v11;
  v40.size.width = v9;
  v40.size.height = v9;
  v17 = CGRectGetMidY(v40);
  [(UIView *)self->_primary bounds];
  v43.origin.x = v10;
  v43.origin.y = v11;
  v43.size.width = v9;
  v43.size.height = v9;
  if (!CGRectEqualToRect(v41, v43))
  {
    [(UIView *)self->_primary setBounds:v10, v11, v9, v9];
    layer2 = [(UIView *)self->_primary layer];
    [layer2 setCornerRadius:v9 * 0.5];
  }

  [(UIView *)self->_primary center];
  if (v20 != v16 || v19 != v17)
  {
    [(UIView *)self->_primary setCenter:v16, v17];
  }

  v22 = 0;
  p_blurs = &self->_blurs;
  v24 = v9 / 1000.0;
  do
  {
    v25 = p_blurs->__elems_[v22].view;
    layer3 = [(UIImageView *)v25 layer];
    [layer3 bounds];
    if (v28 >= v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }

    CATransform3DMakeScale(&v35, v24 * (v29 / 1000.0) * 0.001, v24 * (v29 / 1000.0) * 0.001, 1.0);
    [layer3 setTransform:&v35];

    v30 = v25;
    [(UIImageView *)v30 center];
    if (v32 != v16 || v31 != v17)
    {
      [(UIImageView *)v30 setCenter:v16, v17];
    }

    ++v22;
  }

  while (v22 != 2);
}

- (void)_updateViewsWithColor
{
  v13 = a2;
  v5 = MEMORY[0x277D755B8];
  v6 = [**self pathForResource:a3 ofType:@"png"];
  v7 = [v5 imageWithContentsOfFile:v6];

  if (**(self + 8))
  {
    v8 = [v7 _flatImageWithColor:?];

    v7 = v8;
  }

  [v13 setImage:v7];
  v9 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
  [v7 size];
  [v13 setBounds:{v9, v10, v11, v12}];
}

- (void)_setPulse:(BOOL)pulse withDelay:(double)delay
{
  if (pulse)
  {
    window = [(LAUIRadialPingView *)self window];
    v7 = window != 0;
  }

  else
  {
    v7 = 0;
  }

  p_pulse = &self->_pulse;
  if (self->_pulse.enabled != v7)
  {
    *p_pulse = v7;
    LAUI_CA_utilities::periodic_animation_state::clear_removal_timer(&self->_pulse);
    key = self->_pulse._key;
    if (*p_pulse == 1)
    {
      if (!key)
      {

        [(LAUIRadialPingView *)self _attachPulseAnimationWithDelay:delay];
      }
    }

    else if (key)
    {
      if (LAUI_CA_utilities::periodic_animation_state::elapsed_duration(&self->_pulse) <= 0.0 || (v10 = LAUI_CA_utilities::periodic_animation_state::remaining_duration(&self->_pulse), v10 <= 0.0))
      {

        LAUI_CA_utilities::periodic_animation_state::detach_animation(&self->_pulse);
      }

      else
      {
        v11 = v10;
        objc_initWeak(&location, self);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3321888768;
        v13[2] = __42__LAUIRadialPingView__setPulse_withDelay___block_invoke;
        v13[3] = &__block_descriptor_40_ea8_32c55_ZTSKZ42__LAUIRadialPingView__setPulse_withDelay__E3__4_e5_v8__0l;
        objc_copyWeak(&to, &location);
        objc_copyWeak(&v14, &to);
        LAUI_CA_utilities::periodic_animation_state::create_removal_timer(p_pulse, v13, v11);
        objc_destroyWeak(&to);
        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __42__LAUIRadialPingView__setPulse_withDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    LAUI_CA_utilities::periodic_animation_state::detach_animation(WeakRetained + 64);
    WeakRetained = v2;
  }
}

- (void)_attachPulseAnimationWithDelay:(double)delay
{
  v18[2] = *MEMORY[0x277D85DE8];
  p_pulse = &self->_pulse;
  if (!self->_pulse._key)
  {
    window = [(LAUIRadialPingView *)self window];

    if (window)
    {
      v7 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
      [(CAAnimation *)v7 setBeginTimeMode:*MEMORY[0x277CDA080]];
      [(CAAnimation *)v7 setBeginTime:delay];
      [(CAAnimation *)v7 setAdditive:1];
      [(CAAnimation *)v7 setDuration:2.0];
      [(CAAnimation *)v7 setCalculationMode:*MEMORY[0x277CDA058]];
      LODWORD(v8) = 2139095039;
      [(CAAnimation *)v7 setRepeatCount:v8];
      [(CAAnimation *)v7 setKeyTimes:&unk_28682FF58];
      [(CAAnimation *)v7 setValues:&unk_28682FF70];
      LODWORD(v9) = 1054280253;
      LODWORD(v10) = 1.0;
      LODWORD(v11) = 1.0;
      v12 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v9 :0.0 :v10 :v11];
      v18[0] = v12;
      LODWORD(v13) = 1058306785;
      LODWORD(v14) = 1.0;
      v15 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v13 :v14];
      v18[1] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      [(CAAnimation *)v7 setTimingFunctions:v16];

      layer = [(UIView *)self->_container layer];
      LAUI_CA_utilities::periodic_animation_state::attach_animation(p_pulse, layer, v7, &cfstr_Pulse.isa);
    }
  }
}

- (void)_setExpand:(BOOL)expand forBlurAtIndex:(unint64_t)index withDelay:(double)delay
{
  if (expand)
  {
    window = [(LAUIRadialPingView *)self window];
    v9 = window != 0;
  }

  else
  {
    v9 = 0;
  }

  if (index >= 2)
  {
    [LAUIRadialPingView _setExpand:forBlurAtIndex:withDelay:];
  }

  v10 = &self->_blurs.__elems_[index];
  enabled = v10->pulse.enabled;
  p_pulse = &v10->pulse;
  if (enabled != v9)
  {
    p_pulse->enabled = v9;

    [(LAUIRadialPingView *)self _updateExpandForBlurAtIndex:index withDelay:delay];
  }
}

- (void)_updateExpandForBlurAtIndex:(unint64_t)index withDelay:(double)delay
{
  if (index >= 2)
  {
    [LAUIRadialPingView _updateExpandForBlurAtIndex:withDelay:];
  }

  v6 = &self->_blurs.__elems_[index];
  p_pulse = &v6->pulse;
  if (v6->pulse.enabled)
  {
    [(UIImageView *)v6->view setHidden:0];
    if (!v6->pulse._key)
    {

      [(LAUIRadialPingView *)self _attachExpandAnimationToContainer:v6 withDelay:delay];
    }
  }

  else if (v6->pulse._key)
  {
    v8 = LAUI_CA_utilities::periodic_animation_state::elapsed_duration(p_pulse);
    LAUI_CA_utilities::periodic_animation_state::detach_animation(p_pulse);
    layer = [(UIImageView *)v6->view layer];
    presentationLayer = [layer presentationLayer];
    v11 = presentationLayer;
    if (v8 <= 0.0 || presentationLayer == 0)
    {
      [(UIImageView *)v6->view setHidden:1];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      to = 0u;
      v49 = 0u;
      [v11 transform];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      location = 0u;
      v41 = 0u;
      if (layer)
      {
        [layer transform];
      }

      v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
      v16 = *MEMORY[0x277CDA080];
      [v15 setBeginTimeMode:*MEMORY[0x277CDA080]];
      [v15 setAdditive:1];
      LODWORD(v17) = 1.0;
      LODWORD(v18) = 1055369095;
      v19 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v18 :v17];
      [v15 setTimingFunction:v19];

      [v15 setDuration:0.25];
      v39[5] = v53;
      v39[6] = v54;
      v39[7] = v55;
      v39[1] = v49;
      v39[2] = v50;
      v39[3] = v51;
      v39[4] = v52;
      v38[5] = v45;
      v38[6] = v46;
      v38[7] = v47;
      v39[0] = to;
      v38[0] = location;
      v38[1] = v41;
      v38[2] = v42;
      v38[3] = v43;
      v38[4] = v44;

      [v14 addObject:v15];
      [v11 opacity];
      v21 = v20;
      [layer opacity];
      v23 = v22;
      v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
      [v24 setBeginTimeMode:v16];
      [v24 setAdditive:1];
      LODWORD(v25) = 1.0;
      LODWORD(v26) = 1055369095;
      v27 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v26 :v25];
      [v24 setTimingFunction:v27];

      [v24 setDuration:0.25];
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:v21 - v23];
      [v24 setFromValue:v28];

      v29 = [MEMORY[0x277CCABB0] numberWithDouble:-v23];
      [v24 setToValue:v29];

      [v14 addObject:v24];
      animation = [MEMORY[0x277CD9E00] animation];
      [(CAAnimation *)animation setBeginTimeMode:v16];
      [(CAAnimation *)animation setFillMode:*MEMORY[0x277CDA228]];
      [(CAAnimation *)animation setBeginTime:delay];
      [(CAAnimation *)animation setDuration:0.25];
      [(CAAnimation *)animation setAnimations:v14];
      objc_initWeak(&location, self);
      animating_counter = self->_animating_counter;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3321888768;
      v34[2] = __60__LAUIRadialPingView__updateExpandForBlurAtIndex_withDelay___block_invoke;
      v34[3] = &__block_descriptor_56_ea8_32c73_ZTSKZ60__LAUIRadialPingView__updateExpandForBlurAtIndex_withDelay__E3__5_e8_v12__0B8l;
      objc_copyWeak(&to, &location);
      BYTE8(to) = animating_counter;
      v32 = layer;
      *&v49 = v32;
      objc_copyWeak(&v35, &to);
      v36 = BYTE8(to);
      v37 = v49;
      [(CAAnimation *)animation laui_setDidStopHandler:v34];

      objc_destroyWeak(&to);
      v33 = LAUILayerAddAdditiveAnimation(v32, 0, animation);

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    view = v6->view;

    [(UIImageView *)view setHidden:1];
  }
}

void __60__LAUIRadialPingView__updateExpandForBlurAtIndex_withDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[545] == *(a1 + 40))
  {
    [*(a1 + 48) setHidden:1];
  }
}

- (void)_attachExpandAnimationToContainer:(blur_container *)container withDelay:(double)delay
{
  v43[3] = *MEMORY[0x277D85DE8];
  if (!container->pulse._key)
  {
    window = [(LAUIRadialPingView *)self window];

    if (window)
    {
      layer = [(UIImageView *)container->view layer];
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      v8 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
      v9 = *MEMORY[0x277CDA080];
      [v8 setBeginTimeMode:*MEMORY[0x277CDA080]];
      [v8 setAdditive:1];
      [v8 setDuration:2.0];
      v10 = *MEMORY[0x277CDA070];
      [v8 setCalculationMode:*MEMORY[0x277CDA070]];
      [v8 setKeyTimes:&unk_28682FF88];
      v11 = MEMORY[0x277CCAE60];
      CATransform3DMakeScale(&v40, 0.0, 0.0, 0.0);
      v12 = [v11 valueWithCATransform3D:&v40];
      v43[0] = v12;
      v13 = MEMORY[0x277CCAE60];
      CATransform3DMakeScale(&v40, 1000.0, 1000.0, 0.0);
      v14 = [v13 valueWithCATransform3D:&v40];
      v43[1] = v14;
      v15 = MEMORY[0x277CCAE60];
      CATransform3DMakeScale(&v40, 1000.0, 1000.0, 0.0);
      v16 = [v15 valueWithCATransform3D:&v40];
      v43[2] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
      [v8 setValues:v17];

      LODWORD(v18) = 1054280253;
      LODWORD(v19) = 1061901975;
      LODWORD(v20) = 1.0;
      v21 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v18 :0.0 :v19 :v20];
      [v8 setTimingFunction:v21];

      [v7 addObject:v8];
      [(CALayer *)layer opacity];
      v23 = v22;
      v24 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v24 setBeginTimeMode:v9];
      [v24 setAdditive:1];
      [v24 setDuration:2.0];
      [v24 setCalculationMode:v10];
      [v24 setKeyTimes:&unk_28682FFA0];
      v42[0] = &unk_28682FC78;
      v42[1] = &unk_28682FC78;
      v25 = -v23;
      v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
      v42[2] = v26;
      v27 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
      v42[3] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
      [v24 setValues:v28];

      LODWORD(v29) = 1.0;
      LODWORD(v30) = 1058306785;
      v31 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v30 :v29];
      v41[0] = v31;
      LODWORD(v32) = 1.0;
      LODWORD(v33) = 1058306785;
      v34 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v33 :v32];
      v41[1] = v34;
      v35 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      v41[2] = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
      [v24 setTimingFunctions:v36];

      [v7 addObject:v24];
      animation = [MEMORY[0x277CD9E00] animation];
      [(CAAnimation *)animation setBeginTimeMode:v9];
      [(CAAnimation *)animation setBeginTime:delay];
      [(CAAnimation *)animation setDuration:2.0];
      LODWORD(v38) = 2139095039;
      [(CAAnimation *)animation setRepeatCount:v38];
      [(CAAnimation *)animation setAnimations:v7];
      LAUI_CA_utilities::periodic_animation_state::attach_animation(&container->pulse, layer, animation, &cfstr_Expand.isa);
    }
  }
}

- (void)setAnimating:(BOOL)animating
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    window = [(LAUIRadialPingView *)self window];

    if (self->_animating && window == 0)
    {
      self->_animating_dirty = 1;
    }

    else
    {

      [(LAUIRadialPingView *)self _updateAnimatingAnimated:window != 0];
    }
  }
}

- (void)_updateAnimatingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  self->_animating_dirty = 0;
  v5 = self->_animating_counter + 1;
  self->_animating_counter = v5;
  layer = [(UIView *)self->_primary layer];
  animating = self->_animating;
  v8 = 0.001;
  if (self->_animating)
  {
    v8 = 1.0;
  }

  memset(&v26, 0, sizeof(v26));
  CATransform3DMakeScale(&v26, v8, v8, 1.0);
  [layer removeAnimationForKey:@"transform"];
  v25 = v26;
  [layer setTransform:&v25];
  v9 = !animating;
  if (animatedCopy)
  {
    presentationLayer = [layer presentationLayer];
    v11 = presentationLayer;
    if (presentationLayer)
    {
      v12 = presentationLayer;
    }

    else
    {
      v12 = layer;
    }

    v13 = v12;

    memset(&v25, 0, sizeof(v25));
    if (v13)
    {
      [v13 transform];
    }

    v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
    [v14 setBeginTimeMode:*MEMORY[0x277CDA080]];
    [v14 setAdditive:1];
    LODWORD(v15) = 1055369095;
    LODWORD(v16) = 1.0;
    v17 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v15 :v16];
    [v14 setTimingFunction:v17];

    v18 = 0.25;
    if (self->_animating)
    {
      v18 = 1.0;
    }

    [v14 setDuration:v18];
    [v14 setFillMode:*MEMORY[0x277CDA240]];
    to = v25;
    location = v26;

    objc_initWeak(&location, self);
    if (self->_animating)
    {
      [layer setHidden:v9];
      [(LAUIRadialPingView *)self _startExpandWithDelay:0.135];
    }

    else
    {
      [(LAUIRadialPingView *)self _endExpand];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3321888768;
      v19[2] = __47__LAUIRadialPingView__updateAnimatingAnimated___block_invoke;
      v19[3] = &__block_descriptor_56_ea8_32c60_ZTSKZ47__LAUIRadialPingView__updateAnimatingAnimated__E3__6_e8_v12__0B8l;
      objc_copyWeak(&to, &location);
      LOBYTE(to.m12) = v5;
      BYTE1(to.m12) = v9;
      *&to.m13 = layer;
      objc_copyWeak(&v20, &to);
      m12_low = LOWORD(to.m12);
      v22 = *&to.m13;
      [v14 laui_setDidStopHandler:v19];

      objc_destroyWeak(&to);
      objc_destroyWeak(&v20);
    }

    [layer addAnimation:v14 forKey:@"transform"];
    objc_destroyWeak(&location);
  }

  else
  {
    [layer setHidden:!animating];
    if (self->_animating)
    {
      [(LAUIRadialPingView *)self _startExpandWithDelay:0.0];
    }

    else
    {
      [(LAUIRadialPingView *)self _endExpand];
    }
  }
}

void __47__LAUIRadialPingView__updateAnimatingAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[545] == *(a1 + 40))
  {
    [*(a1 + 48) setHidden:*(a1 + 41)];
  }
}

- (void)_startExpandWithDelay:(double)delay
{
  [(LAUIRadialPingView *)self _setPulse:1 withDelay:delay + 0.115];
  [(LAUIRadialPingView *)self _setExpand:1 forBlurAtIndex:0 withDelay:delay];

  [(LAUIRadialPingView *)self _setExpand:1 forBlurAtIndex:1 withDelay:delay + 0.265];
}

- (void)_endExpand
{
  [(LAUIRadialPingView *)self _setPulse:0 withDelay:0.0];
  [(LAUIRadialPingView *)self _setExpand:0 forBlurAtIndex:0 withDelay:0.0];

  [(LAUIRadialPingView *)self _setExpand:0 forBlurAtIndex:1 withDelay:0.0];
}

- (id).cxx_construct
{
  p_removal_timer = &self->_blurs.__elems_[0].pulse._removal_timer;
  v4 = 80;
  do
  {
    *(p_removal_timer - 4) = 0;
    v5 = (p_removal_timer - 3);
    *(p_removal_timer - 2) = 0;
    *(p_removal_timer - 1) = 0;
    *p_removal_timer = 0;
    p_removal_timer += 5;
    LAUI_CA_utilities::periodic_animation_state::clear_removal_timer(v5);
    v4 -= 40;
  }

  while (v4);
  self->_pulse._key = 0;
  self->_pulse._layer = 0;
  self->_pulse._removal_timer = 0;
  LAUI_CA_utilities::periodic_animation_state::clear_removal_timer(&self->_pulse);
  return self;
}

@end