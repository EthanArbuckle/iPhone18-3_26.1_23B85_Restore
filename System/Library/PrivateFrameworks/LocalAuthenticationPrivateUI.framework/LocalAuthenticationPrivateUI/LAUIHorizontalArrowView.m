@interface LAUIHorizontalArrowView
- (CGSize)maximumLineSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LAUIHorizontalArrowView)initWithFrame:(CGRect)a3;
- (id).cxx_construct;
- (void)_layoutIfNeededAnimated:(BOOL)a3;
- (void)_updateAnimatingAnimated:;
- (void)_updateAnimatingAnimated:(BOOL)a3;
- (void)_updateDirectionTransform;
- (void)_updateFont;
- (void)_updateLabelSize;
- (void)_updatePulsingWithDelay:(double)a3;
- (void)_updateViewsWithColor;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)a3;
- (void)setDirection:(int64_t)a3;
- (void)setDisplacement:(double)a3;
- (void)setMaximumLineSize:(CGSize)a3;
- (void)setText:(id)a3;
- (void)tintColorDidChange;
@end

@implementation LAUIHorizontalArrowView

- (LAUIHorizontalArrowView)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = LAUIHorizontalArrowView;
  v3 = [(LAUIHorizontalArrowView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_direction = 0;
    v5 = [MEMORY[0x277D75348] whiteColor];
    color = v4->_color;
    v4->_color = v5;

    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = MEMORY[0x277CBF3A0];
    v9 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    container = v4->_container;
    v4->_container = v9;

    v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v8, v8[1], v8[2], v8[3]}];
    arrow_container = v4->_arrow_container;
    v4->_arrow_container = v11;

    v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v8, v8[1], v8[2], v8[3]}];
    tail_container = v4->_tail_container;
    v4->_tail_container = v13;

    v15 = [(UIView *)v4->_tail_container layer];
    [v15 setAnchorPoint:{0.0, 0.5}];

    [(UIView *)v4->_tail_container setClipsToBounds:1];
    v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    head = v4->_head;
    v4->_head = v16;

    v18 = [(UIImageView *)v4->_head layer];
    [v18 setAnchorPoint:{0.0, 0.5}];

    v19 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    tail = v4->_tail;
    v4->_tail = v19;

    v21 = [(UIImageView *)v4->_tail layer];
    [v21 setAnchorPoint:{1.0, 0.5}];

    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v4->_label;
    v4->_label = v22;

    [(UILabel *)v4->_label setNumberOfLines:3];
    v24 = v4->_label;
    v25 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v24 setBackgroundColor:v25];

    [(LAUIHorizontalArrowView *)v4 addSubview:v4->_container];
    [(UIView *)v4->_container addSubview:v4->_arrow_container];
    [(UIView *)v4->_arrow_container addSubview:v4->_tail_container];
    [(UIView *)v4->_arrow_container addSubview:v4->_head];
    [(UIView *)v4->_tail_container addSubview:v4->_tail];
    [(UIView *)v4->_container addSubview:v4->_label];
    [(LAUIHorizontalArrowView *)v4 setTintColor:v4->_color];
    [(LAUIHorizontalArrowView *)v4 _updateViewsWithColor];
    [(LAUIHorizontalArrowView *)v4 _updateAnimatingAnimated:0];
    [(LAUIHorizontalArrowView *)v4 _updateDirectionTransform];
    [(LAUIHorizontalArrowView *)v4 _updateFont];
    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v4 selector:sel_boldTextStatusDidChange_ name:*MEMORY[0x277D76448] object:0];
    [v26 addObserver:v4 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = LAUIHorizontalArrowView;
  [(LAUIHorizontalArrowView *)&v4 dealloc];
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = LAUIHorizontalArrowView;
  [(LAUIHorizontalArrowView *)&v7 tintColorDidChange];
  v3 = [(LAUIHorizontalArrowView *)self tintColor];
  color = self->_color;
  if (color != v3 && (!v3 || !color || ([(UIColor *)color isEqual:v3]& 1) == 0))
  {
    v5 = [(UIColor *)v3 copy];
    v6 = self->_color;
    self->_color = v5;

    [(LAUIHorizontalArrowView *)self _updateViewsWithColor];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = LAUIHorizontalArrowView;
  [(LAUIHorizontalArrowView *)&v5 didMoveToWindow];
  v3 = [(LAUIHorizontalArrowView *)self window];

  if (v3)
  {
    animating = self->_animating;
    if (animating == self->_effective_animating)
    {
      if (animating || self->_dismissal_animation_count)
      {
        [(LAUIHorizontalArrowView *)self _updatePulsingWithDelay:0.0];
      }
    }

    else
    {
      [(LAUIHorizontalArrowView *)self _updateAnimatingAnimated:1];
    }
  }

  else
  {
    self->_pulsing = 0;
    LAUI_CA_utilities::periodic_animation_state::detach_animation(&self->_head_pulse);
    LAUI_CA_utilities::periodic_animation_state::detach_animation(&self->_tail_container_pulse);
    LAUI_CA_utilities::periodic_animation_state::detach_animation(&self->_tail_counter_pulse);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  resting_height = self->_resting_height;
  v4 = 52.0;
  result.height = resting_height;
  result.width = v4;
  return result;
}

- (void)_layoutIfNeededAnimated:(BOOL)a3
{
  self->_animated = a3;
  [(LAUIHorizontalArrowView *)self layoutIfNeeded];
  self->_animated = 0;
}

- (void)layoutSubviews
{
  v124[2] = *MEMORY[0x277D85DE8];
  v119.receiver = self;
  v119.super_class = LAUIHorizontalArrowView;
  [(LAUIHorizontalArrowView *)&v119 layoutSubviews];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v112 = v4;

  [(LAUIHorizontalArrowView *)self bounds];
  v9 = self->_effective_animating || self->_dismissal_animation_count != 0;
  resting_height = self->_resting_height;
  v11 = v5 + (v7 + -55.0) * 0.5;
  if (v112 == 0.0)
  {
    v12 = round(v11);
    v13 = round(v6 + (v8 - resting_height) * 0.5);
  }

  else
  {
    v12 = round(v112 * v11) / v112;
    v13 = round(v112 * (v6 + (v8 - resting_height) * 0.5)) / v112;
  }

  v14 = *MEMORY[0x277CBF348];
  v113 = *(MEMORY[0x277CBF348] + 8);
  v125.size.width = 55.0;
  v125.origin.x = v12;
  v125.origin.y = v13;
  rect2 = self->_resting_height;
  v125.size.height = rect2;
  MidX = CGRectGetMidX(v125);
  v126.origin.x = v12;
  v126.origin.y = v13;
  v126.size.width = 55.0;
  v126.size.height = rect2;
  MidY = CGRectGetMidY(v126);
  [(UIView *)self->_container setBounds:v14, v113, 55.0, rect2];
  [(UIView *)self->_container setCenter:MidX, MidY];
  [(UIView *)self->_arrow_container setFrame:v14, v113, 55.0, rect2];
  [(UIView *)self->_arrow_container bounds];
  v130.origin.x = v14;
  v130.origin.y = v113;
  v130.size.width = 55.0;
  v130.size.height = rect2;
  if (!CGRectEqualToRect(v127, v130))
  {
    [LAUIHorizontalArrowView layoutSubviews];
  }

  if (self->_animated)
  {
    LAUI_CA_utilities::spring_factory::spring_factory(&v120, 3.0, 250.0, 50.0, 0.0, 0);
    v115[0] = v120;
    v115[1] = v121;
    v116 = v122;
    v117 = v123;
    v118 = 1;
  }

  else
  {
    LOBYTE(v115[0]) = 0;
    v118 = 0;
  }

  [(UIImageView *)self->_head bounds];
  v18 = v17;
  v20 = v19;
  v21 = v113 + (rect2 - v19) * 0.5;
  if (v112 == 0.0)
  {
    displacement = round(v21);
  }

  else
  {
    displacement = round(v112 * v21) / v112;
  }

  v111 = displacement;
  if (v9)
  {
    v23 = v14;
  }

  else
  {
    displacement = self->_displacement;
    v23 = v14 + displacement;
  }

  v109 = v14;
  if (self->_animated)
  {
    [(UIImageView *)self->_head frame:displacement];
    v25 = v24;
    v27 = v26;
    v28 = [(UIImageView *)self->_head layer];
    [(CALayer *)v28 anchorPoint];
    v30 = v29;
    v31 = LAUI_CA_utilities::spring_factory::create_animation(v115, &cfstr_PositionX.isa);
    v32 = [MEMORY[0x277CCABB0] numberWithDouble:v25 + v30 * v27 - (v23 + v30 * v18)];
    [(CAAnimation *)v31 setFromValue:v32];

    [(CAAnimation *)v31 setToValue:&unk_28682F840];
    v33 = LAUILayerAddAdditiveAnimation(v28, &cfstr_Position.isa, v31);
  }

  v34 = v111;
  [(UIImageView *)self->_head setFrame:v23, v111, v18, v20, *&v109];
  v128.origin.x = v23;
  v128.origin.y = v111;
  v128.size.width = v18;
  v128.size.height = v20;
  v35 = 1.0 / v112;
  v36 = CGRectGetMaxX(v128) - 1.0 / v112;
  v37 = 55.0 - v18;
  if (55.0 - v18 < 0.0)
  {
    v37 = 0.0;
  }

  v38 = v35 + v37 + 3.0;
  if (self->_animated)
  {
    [(UIView *)self->_tail_container frame];
    v40 = v39;
    v42 = v41;
    v43 = [(UIView *)self->_tail_container layer];
    [(CALayer *)v43 anchorPoint];
    v45 = v44;
    v46 = LAUI_CA_utilities::spring_factory::create_animation(v115, &cfstr_PositionX.isa);
    [MEMORY[0x277CCABB0] numberWithDouble:v40 + v45 * v42 - (v36 + v45 * v38)];
    v47 = v34 = v111;
    [(CAAnimation *)v46 setFromValue:v47];

    [(CAAnimation *)v46 setToValue:&unk_28682F840];
    v48 = LAUILayerAddAdditiveAnimation(v43, &cfstr_Position.isa, v46);
  }

  [(UIView *)self->_tail_container setFrame:v36, v34, v38, v20];
  v49 = [(UIImageView *)self->_tail image];
  [v49 size];
  v51 = v50;
  v53 = v52;

  if (v9)
  {
    v54 = 52.0;
  }

  else if (self->_text)
  {
    v54 = 55.0;
  }

  else
  {
    v54 = 52.0;
  }

  [(UIView *)self->_tail_container bounds];
  v58 = v56;
  v59 = v57;
  v60 = 0.0;
  if (v35 + v54 - v18 >= 0.0)
  {
    v60 = v35 + v54 - v18;
  }

  MaxX = CGRectGetMaxX(*&v55);
  v62 = fmax(v51, v38);
  v63 = v58 + (v59 - v53) * 0.5;
  if (v112 == 0.0)
  {
    v64 = round(v63);
  }

  else
  {
    v64 = round(v112 * v63) / v112;
  }

  v65 = MaxX - v62;
  if (self->_animated)
  {
    [(UIImageView *)self->_tail frame];
    v67 = v66;
    v69 = v68;
    v70 = [(UIImageView *)self->_tail layer];
    [(CALayer *)v70 anchorPoint];
    v72 = v67 + v71 * v69;
    v73 = v65 + v71 * v62;
    if (v72 != v73)
    {
      v74 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position.x"];
      [(CAAnimation *)v74 setBeginTimeMode:*MEMORY[0x277CDA080]];
      [(CAAnimation *)v74 setAdditive:1];
      [(CAAnimation *)v74 setDuration:0.7];
      [(CAAnimation *)v74 setCalculationMode:*MEMORY[0x277CDA058]];
      [(CAAnimation *)v74 setKeyTimes:&unk_28682FE68];
      v75 = v72 - v73;
      v76 = [MEMORY[0x277CCABB0] numberWithDouble:v75];
      *&v120 = v76;
      *v78.i64 = fabs(v75);
      if (*v78.i64 < 5.0)
      {
        *v78.i64 = 5.0;
      }

      *v77.i64 = -v75;
      v79.f64[0] = NAN;
      v79.f64[1] = NAN;
      v80 = [MEMORY[0x277CCABB0] numberWithDouble:{*vbslq_s8(vnegq_f64(v79), v78, v77).i64}];
      *(&v120 + 1) = v80;
      *&v121 = &unk_28682F840;
      v81 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:3];
      [(CAAnimation *)v74 setValues:v81];

      LODWORD(v82) = 1054280253;
      LODWORD(v83) = 1058306785;
      LODWORD(v84) = 1.0;
      v85 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v82 :0.0 :v83 :v84];
      v124[0] = v85;
      v86 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      v124[1] = v86;
      v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:2];
      [(CAAnimation *)v74 setTimingFunctions:v87];

      if (v74)
      {
        [(CAAnimation *)v74 setFillMode:*MEMORY[0x277CDA228]];
        [(CAAnimation *)v74 setBeginTime:0.34];
        v88 = LAUILayerAddAdditiveAnimation(v70, &cfstr_Position.isa, v74);
      }
    }
  }

  [(UIImageView *)self->_tail setFrame:v65, v64, v62, v53];
  [(UILabel *)self->_label bounds];
  v90 = v89;
  v92 = v91;
  v129.origin.x = v110;
  v129.origin.y = v113;
  v129.size.width = 55.0;
  v129.size.height = rect2;
  v93 = CGRectGetMaxX(v129);
  v94 = [(UILabel *)self->_label layer];
  [(CALayer *)v94 anchorPoint];
  v97 = v96;
  v98 = v113 + (rect2 - v92) * 0.5;
  if (v112 == 0.0)
  {
    v99 = round(v98);
  }

  else
  {
    v99 = round(v112 * v98) / v112;
  }

  v100 = v93 + 20.0;
  if (!v9)
  {
    v100 = v100 + self->_displacement;
  }

  v101 = v100 + v95 * v90;
  if (self->_animated)
  {
    [(CALayer *)v94 position];
    v103 = v102;
    LAUI_CA_utilities::spring_factory::spring_factory(&v120, 3.0, 200.0, 38.0, 0.0, 0);
    animation = LAUI_CA_utilities::spring_factory::create_animation(&v120, &cfstr_PositionX.isa);

    [animation setFillMode:*MEMORY[0x277CDA228]];
    [animation setBeginTime:0.05];
    v105 = animation;
    v106 = [MEMORY[0x277CCABB0] numberWithDouble:v103 - v101];
    [(CAAnimation *)v105 setFromValue:v106];

    [(CAAnimation *)v105 setToValue:&unk_28682F840];
    v107 = LAUILayerAddAdditiveAnimation(v94, &cfstr_Position.isa, v105);
  }

  [(CALayer *)v94 setPosition:v101, v99 + v97 * v92];
  v108 = 0.7514;
  if (!self->_animated)
  {
    v108 = 0.0;
  }

  [(LAUIHorizontalArrowView *)self _updatePulsingWithDelay:v108];

  if (v118 == 1)
  {
  }
}

- (void)_updateViewsWithColor
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  head = self->_head;
  v24 = v3;
  v5 = [MEMORY[0x277D755B8] imageNamed:@"arrow_head" inBundle:? compatibleWithTraitCollection:?];
  v6 = v5;
  if (self->_color)
  {
    v7 = [v5 _flatImageWithColor:?];

    v6 = v7;
  }

  v8 = head;
  v9 = v6;
  [(UIImageView *)v8 setImage:v9];
  [v9 size];
  if (v11 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = MEMORY[0x277CBF348];
  [(UIImageView *)v8 setBounds:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v10, v11];

  tail = self->_tail;
  v15 = [MEMORY[0x277D755B8] imageNamed:@"arrow_tail" inBundle:v24 compatibleWithTraitCollection:0];
  v16 = v15;
  if (self->_color)
  {
    v17 = [v15 _flatImageWithColor:?];

    v16 = v17;
  }

  v18 = [v16 resizableImageWithCapInsets:1 resizingMode:{0.0, 0.0, 0.0, 5.0}];
  v19 = tail;
  v20 = v18;
  [(UIImageView *)v19 setImage:v20];
  [v20 size];
  v22 = v21;
  [(UIImageView *)v19 setBounds:*v13, v13[1], v23, v21];
  if (v22 < v12)
  {
    v22 = v12;
  }

  self->_resting_height = v22;
  [(UILabel *)self->_label setTextColor:self->_color];
  [(LAUIHorizontalArrowView *)self setNeedsLayout];
}

- (void)_updateAnimatingAnimated:(BOOL)a3
{
  v3 = a3;
  v20 = a3;
  [(LAUIHorizontalArrowView *)self layoutIfNeeded];
  v5 = !self->_effective_animating && self->_dismissal_animation_count == 0;
  animating = self->_animating;
  self->_effective_animating = animating;
  v19 = animating;
  v7 = v3 & ~animating;
  v18 = animating;
  if (v7 == 1)
  {
    ++self->_dismissal_animation_count;
    v15 = &v18;
    v16 = &v20;
    v17 = &v19;
    [MEMORY[0x277CD9FF0] begin];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277CD9FF0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3321888768;
    v12[2] = __52__LAUIHorizontalArrowView__updateAnimatingAnimated___block_invoke;
    v12[3] = &__block_descriptor_40_ea8_32c65_ZTSKZ52__LAUIHorizontalArrowView__updateAnimatingAnimated__E3__3_e5_v8__0l;
    objc_copyWeak(&v11, &location);
    objc_copyWeak(&v13, &v11);
    [v8 setCompletionBlock:v12];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    LOBYTE(animating) = v19;
  }

  else
  {
    v15 = &v18;
    v16 = &v20;
    v17 = &v19;
  }

  v9 = 0.045;
  if (animating & v5)
  {
    v10 = 0.27;
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
  }

  [LAUIHorizontalArrowView _updateAnimatingAnimated:]::$_2::operator()(&v15, self->_arrow_container, v9);
  [LAUIHorizontalArrowView _updateAnimatingAnimated:]::$_2::operator()(&v15, self->_label, v10);
  if (v7)
  {
    [MEMORY[0x277CD9FF0] commit];
  }

  [(LAUIHorizontalArrowView *)self setNeedsLayout];
  [(LAUIHorizontalArrowView *)self _layoutIfNeededAnimated:v20];
}

void __52__LAUIHorizontalArrowView__updateAnimatingAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[209] - 1;
    WeakRetained[209] = v1;
    if ((WeakRetained[208] & 1) == 0 && !v1)
    {
      [WeakRetained setNeedsLayout];
      [WeakRetained _layoutIfNeededAnimated:0];
    }
  }
}

- (void)_updateAnimatingAnimated:
{
  v5 = a2;
  if (v5)
  {
    v26 = v5;
    v6 = [v5 layer];
    [v6 opacity];
    if (**a1 != v7)
    {
      [v6 removeAnimationForKey:@"opacity"];
      v8 = **a1;
      *&v8 = v8;
      [v6 setOpacity:v8];
      if (*a1[1] == 1)
      {
        v9 = [v6 presentationLayer];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v6;
        }

        v12 = v11;

        [v12 opacity];
        v14 = v13;
        v15 = **a1;
        v16 = *a1[2];
        v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
        [v17 setAdditive:1];
        [v17 setBeginTimeMode:*MEMORY[0x277CDA080]];
        LODWORD(v18) = 1036831949;
        LODWORD(v19) = 0.25;
        LODWORD(v20) = 0.25;
        LODWORD(v21) = 1.0;
        v22 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v19 :v18 :v20 :v21];
        [v17 setTimingFunction:v22];

        v23 = 0.25;
        if (v16)
        {
          v23 = 0.5;
        }

        [v17 setDuration:v23];
        v24 = v17;
        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v14 - v15];
        [v24 setFromValue:v25];

        [v24 setToValue:&unk_28682F840];
        if (a3 > 0.0)
        {
          [v24 setFillMode:*MEMORY[0x277CDA228]];
          [v24 setBeginTime:a3];
        }

        [v6 addAnimation:v24 forKey:@"opacity"];
      }

      else
      {
        [v6 removeAnimationForKey:@"opacity"];
      }
    }

    v5 = v26;
  }
}

- (void)_updateDirectionTransform
{
  memset(&v10, 0, sizeof(v10));
  if (self->_direction)
  {
    CATransform3DMakeScale(&v10, -1.0, 1.0, 1.0);
  }

  else
  {
    v3 = *(MEMORY[0x277CD9DE8] + 80);
    *&v10.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&v10.m33 = v3;
    v4 = *(MEMORY[0x277CD9DE8] + 112);
    *&v10.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&v10.m43 = v4;
    v5 = *(MEMORY[0x277CD9DE8] + 16);
    *&v10.m11 = *MEMORY[0x277CD9DE8];
    *&v10.m13 = v5;
    v6 = *(MEMORY[0x277CD9DE8] + 48);
    *&v10.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v10.m23 = v6;
  }

  container = self->_container;
  v9 = v10;
  [(UIView *)container setTransform3D:&v9];
  label = self->_label;
  v9 = v10;
  [(UILabel *)label setTransform3D:&v9];
}

- (void)_updatePulsingWithDelay:(double)a3
{
  if (self->_effective_animating)
  {
    if (self->_pulsing)
    {
      return;
    }

    self->_pulsing = 1;
LABEL_7:
    [MEMORY[0x277CD9FF0] begin];
    v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position.x"];
    [(CAAnimation *)v15 setBeginTimeMode:*MEMORY[0x277CDA080]];
    [(CAAnimation *)v15 setAdditive:1];
    [(CAAnimation *)v15 setDuration:0.75];
    LODWORD(v7) = 2139095039;
    [(CAAnimation *)v15 setRepeatCount:v7];
    LODWORD(v8) = 0.5;
    LODWORD(v9) = 0.5;
    LODWORD(v10) = 1.0;
    v11 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v8 :0.0 :v9 :v10];
    [(CAAnimation *)v15 setTimingFunction:v11];

    [(CAAnimation *)v15 setBeginTime:a3];
    [(CAAnimation *)v15 setFromValue:&unk_28682F840];
    [(CAAnimation *)v15 setToValue:&unk_28682FCD8];
    [(CAAnimation *)v15 setAutoreverses:1];
    v12 = [(UIImageView *)self->_head layer];
    LAUI_CA_utilities::periodic_animation_state::attach_animation(&self->_head_pulse, v12, v15, &cfstr_Pulse.isa);

    v13 = [(UIView *)self->_tail_container layer];
    LAUI_CA_utilities::periodic_animation_state::attach_animation(&self->_tail_container_pulse, v13, v15, &cfstr_Pulse.isa);

    [(CAAnimation *)v15 setFromValue:&unk_28682F840];
    [(CAAnimation *)v15 setToValue:&unk_28682FCE8];
    v14 = [(UIImageView *)self->_tail layer];
    LAUI_CA_utilities::periodic_animation_state::attach_animation(&self->_tail_counter_pulse, v14, v15, &cfstr_Pulse.isa);

    [MEMORY[0x277CD9FF0] commit];

    return;
  }

  dismissal_animation_count = self->_dismissal_animation_count;
  v6 = self->_dismissal_animation_count != 0;
  if (self->_pulsing == v6)
  {
    return;
  }

  self->_pulsing = v6;
  if (dismissal_animation_count)
  {
    goto LABEL_7;
  }

  LAUI_CA_utilities::periodic_animation_state::detach_animation(&self->_head_pulse);
  LAUI_CA_utilities::periodic_animation_state::detach_animation(&self->_tail_container_pulse);

  LAUI_CA_utilities::periodic_animation_state::detach_animation(&self->_tail_counter_pulse);
}

- (void)_updateFont
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
  v17 = [v3 fontDescriptorWithSymbolicTraits:{objc_msgSend(v3, "symbolicTraits") | 2}];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v17 size:0.0];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  v7 = v6;

  [v4 lineHeight];
  v9 = v8;
  [v4 leading];
  v10 = fmax(v7, 1.0);
  v12 = ceil(v10 * (v9 + v11)) / v10;
  v13 = v4;
  v14 = v13;
  height = self->_maximum_line_size.height;
  v16 = v13;
  if (v12 > height)
  {
    v16 = [v13 _fontScaledByScaleFactor:height / v12];
  }

  [(UILabel *)self->_label setFont:v16];
  [(LAUIHorizontalArrowView *)self _updateLabelSize];
}

- (void)_updateLabelSize
{
  [(UILabel *)self->_label sizeThatFits:self->_maximum_line_size.width, 1.79769313e308];
  [(UILabel *)self->_label setBounds:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v3, v4];

  [(LAUIHorizontalArrowView *)self setNeedsLayout];
}

- (void)setAnimating:(BOOL)a3
{
  if (self->_animating != a3)
  {
    self->_animating = a3;
    v4 = [(LAUIHorizontalArrowView *)self window];

    animating = self->_animating;
    v6 = !animating;
    if (v4)
    {
      v6 = 1;
    }

    if (self->_effective_animating != animating && v6 != 0)
    {

      [(LAUIHorizontalArrowView *)self _updateAnimatingAnimated:v4 != 0];
    }
  }
}

- (void)setDirection:(int64_t)a3
{
  if (self->_direction != a3)
  {
    self->_direction = a3;
    [(LAUIHorizontalArrowView *)self _updateDirectionTransform];
  }
}

- (void)setDisplacement:(double)a3
{
  if (self->_displacement != a3)
  {
    self->_displacement = a3;
    [(LAUIHorizontalArrowView *)self setNeedsLayout];
  }
}

- (void)setMaximumLineSize:(CGSize)a3
{
  if (a3.width <= 0.0)
  {
    a3.width = 1.79769313e308;
  }

  if (a3.height <= 0.0)
  {
    a3.height = 1.79769313e308;
  }

  if (self->_maximum_line_size.width != a3.width || self->_maximum_line_size.height != a3.height)
  {
    self->_maximum_line_size = a3;
    [(LAUIHorizontalArrowView *)self _updateFont];
  }
}

- (void)setText:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_5;
  }

  v9 = v4;
  if (![v4 length])
  {

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = v9;
LABEL_6:
  text = self->_text;
  v10 = v5;
  if (text != v5 && (!v5 || !text || ![(NSString *)text isEqualToString:v5]))
  {
    v7 = [(NSString *)v10 copy];
    v8 = self->_text;
    self->_text = v7;

    [(UILabel *)self->_label setText:self->_text];
    [(LAUIHorizontalArrowView *)self _updateLabelSize];
  }
}

- (CGSize)maximumLineSize
{
  width = self->_maximum_line_size.width;
  height = self->_maximum_line_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  p_head_pulse = &self->_head_pulse;
  p_head_pulse->_key = 0;
  p_head_pulse->_layer = 0;
  p_head_pulse->_removal_timer = 0;
  LAUI_CA_utilities::periodic_animation_state::clear_removal_timer(p_head_pulse);
  self->_tail_container_pulse._key = 0;
  self->_tail_container_pulse._layer = 0;
  self->_tail_container_pulse._removal_timer = 0;
  LAUI_CA_utilities::periodic_animation_state::clear_removal_timer(&self->_tail_container_pulse);
  self->_tail_counter_pulse._key = 0;
  self->_tail_counter_pulse._layer = 0;
  self->_tail_counter_pulse._removal_timer = 0;
  LAUI_CA_utilities::periodic_animation_state::clear_removal_timer(&self->_tail_counter_pulse);
  return self;
}

@end