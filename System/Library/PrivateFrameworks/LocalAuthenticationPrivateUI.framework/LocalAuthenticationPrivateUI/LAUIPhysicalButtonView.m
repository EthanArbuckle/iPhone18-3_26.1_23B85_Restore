@interface LAUIPhysicalButtonView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (LAUIPhysicalButtonView)initWithStyle:(int64_t)a3;
- (id)_colorForStyle:(int64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_purgeExportedHandle;
- (void)_updateExportState;
- (void)_updateOnScreen;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)disableWorkarounds;
- (void)interfaceOrientationDidChange:(id)a3;
- (void)layoutSubviews;
- (void)setAnimating:(BOOL)a3;
- (void)setAnimationStyle:(int64_t)a3;
- (void)setInstruction:(id)a3;
- (void)setIsInstructionHidden:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)updateFrame;
@end

@implementation LAUIPhysicalButtonView

- (LAUIPhysicalButtonView)initWithStyle:(int64_t)a3
{
  v4 = MEMORY[0x277CBF3A0];
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v37.receiver = self;
  v37.super_class = LAUIPhysicalButtonView;
  v9 = [(LAUIPhysicalButtonView *)&v37 initWithFrame:v5, v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    v9->_indeterminateFrame = 1;
    v11 = SBSUIHardwareButtonHintViewsSupported();
    v10->_export = v11;
    if (v11)
    {
      LOBYTE(v11) = _os_feature_enabled_impl();
    }

    v10->_disableOffscreenWorkaround = v11;
    if (v10->_export)
    {
      v12 = _os_feature_enabled_impl();
    }

    else
    {
      v12 = 0;
    }

    v10->_disablePortraitWorkaround = v12;
    v10->_style = a3;
    v13 = [(LAUIPhysicalButtonView *)v10 _colorForStyle:a3];
    v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v4, v4[1], v4[2], v4[3]}];
    containerView = v10->_containerView;
    v10->_containerView = v14;

    if (v10->_export)
    {
      [(UIView *)v10->_containerView setHidden:1];
    }

    [(LAUIPhysicalButtonView *)v10 addSubview:v10->_containerView];
    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    buttonView = v10->_buttonView;
    v10->_buttonView = v16;

    [(UIView *)v10->_buttonView setBackgroundColor:v13];
    v36 = [(UIView *)v10->_buttonView layer];
    [v36 setCornerCurve:*MEMORY[0x277CDA138]];
    [(UIView *)v10->_containerView addSubview:v10->_buttonView];
    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    instructionLabel = v10->_instructionLabel;
    v10->_instructionLabel = v18;

    [(UILabel *)v10->_instructionLabel setLineBreakMode:4];
    [(UILabel *)v10->_instructionLabel setMinimumScaleFactor:0.75];
    [(UILabel *)v10->_instructionLabel setAdjustsFontSizeToFitWidth:1];
    v20 = v10->_instructionLabel;
    v21 = MEMORY[0x277D74300];
    v22 = *MEMORY[0x277D76800];
    v23 = [MEMORY[0x277D75128] sharedApplication];
    v24 = [v23 preferredContentSizeCategory];

    if (v22 && ([v22 isEqualToString:*MEMORY[0x277D76860]] & 1) == 0 && UIContentSizeCategoryCompareToCategory(v24, v22) == NSOrderedDescending)
    {
      v25 = v22;

      v24 = v25;
    }

    v26 = MEMORY[0x277D74300];
    v27 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v24];
    v28 = [v26 preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v27];

    [v28 _scaledValueForValue:19.0];
    v30 = v29;

    v31 = [v21 systemFontOfSize:v30];
    [(UILabel *)v20 setFont:v31];

    [(UILabel *)v10->_instructionLabel setTextColor:v13];
    v32 = v10->_instructionLabel;
    v33 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v32 setBackgroundColor:v33];

    [(UILabel *)v10->_instructionLabel setAlpha:0.0];
    [(UILabel *)v10->_instructionLabel setNumberOfLines:0];
    [(UIView *)v10->_containerView addSubview:v10->_instructionLabel];
    [(LAUIPhysicalButtonView *)v10 setAnimationStyle:1];
    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 addObserver:v10 selector:sel_interfaceOrientationDidChange_ name:*MEMORY[0x277D76878] object:0];
  }

  return v10;
}

- (void)dealloc
{
  [(SBSHardwareButtonHintViewContentVisibilityControlling *)self->_exportedHandle invalidate];
  v3.receiver = self;
  v3.super_class = LAUIPhysicalButtonView;
  [(LAUIPhysicalButtonView *)&v3 dealloc];
}

- (void)didMoveToWindow
{
  v10.receiver = self;
  v10.super_class = LAUIPhysicalButtonView;
  [(LAUIPhysicalButtonView *)&v10 didMoveToWindow];
  v3 = [(LAUIPhysicalButtonView *)self window];
  v4 = v3;
  if (!self->_workaroundsDisabled)
  {
    v5 = [v3 windowScene];
    self->_lastInterfaceOrientation = [v5 interfaceOrientation];
  }

  if (v4)
  {
    v6 = [v4 screen];
    v7 = [v6 fixedCoordinateSpace];
    fixedCoordinateSpace = self->_fixedCoordinateSpace;
    self->_fixedCoordinateSpace = v7;

    [(LAUIPhysicalButtonView *)self setNeedsLayout];
    [(LAUIPhysicalButtonView *)self updateFrame];
  }

  else
  {
    v9 = self->_fixedCoordinateSpace;
    self->_fixedCoordinateSpace = 0;

    [(LAUIPhysicalButtonViewAnimation *)self->_animation endImmediately];
  }

  [(LAUIPhysicalButtonView *)self _updateOnScreen];
}

- (void)interfaceOrientationDidChange:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_workaroundsDisabled)
  {
    goto LABEL_10;
  }

  if (!self->_lastInterfaceOrientation)
  {
    goto LABEL_10;
  }

  v5 = [(LAUIPhysicalButtonView *)self window];

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(LAUIPhysicalButtonView *)self window];
  v7 = [v6 windowScene];
  v8 = [v7 interfaceOrientation];

  v9 = LA_LOG_LAUIPhysicalButtonView();
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
LABEL_8:

    if (v8 != self->_lastInterfaceOrientation)
    {
      v13 = [(LAUIPhysicalButtonView *)self layer];
      [v13 setOpacity:0.0];

      self->_lastInterfaceOrientation = v8;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __56__LAUIPhysicalButtonView_interfaceOrientationDidChange___block_invoke;
      v14[3] = &unk_279821460;
      v14[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v14 options:0 animations:0.1 completion:0.4];
    }

LABEL_10:

    return;
  }

  lastInterfaceOrientation = self->_lastInterfaceOrientation;
  if (lastInterfaceOrientation < 5 && v8 < 5)
  {
    v11 = off_2798214F8[lastInterfaceOrientation];
    v12 = off_2798214F8[v8];
    *buf = 138412546;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_2560E6000, v9, OS_LOG_TYPE_DEFAULT, "Interface orientation did change notification triggered _lastInterfaceOrientation: %@ currentInterfaceOrientation: %@", buf, 0x16u);
    goto LABEL_8;
  }

  __break(1u);
}

void __56__LAUIPhysicalButtonView_interfaceOrientationDidChange___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  LODWORD(v2) = 1.0;
  v3 = v1;
  [v1 setOpacity:v2];
}

- (void)updateFrame
{
  v72 = *MEMORY[0x277D85DE8];
  if (self->_exportedHandle || self->_exporting)
  {
    v3 = LA_LOG_LAUIPhysicalButtonView();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(rect_24.m11) = 0;
      _os_log_impl(&dword_2560E6000, v3, OS_LOG_TYPE_DEFAULT, "ignoring update frame request for exported physical button view", &rect_24, 2u);
    }

    goto LABEL_5;
  }

  if (self->_fixedCoordinateSpace)
  {
    v3 = [(LAUIPhysicalButtonView *)self superview];
    if (!v3)
    {
      self->_indeterminateFrame = 1;
LABEL_5:

      return;
    }

    v4 = [(LAUIPhysicalButtonView *)self window];
    v5 = v4;
    if (!v4)
    {
      self->_indeterminateFrame = 1;
LABEL_65:

      goto LABEL_5;
    }

    indeterminateFrame = self->_indeterminateFrame;
    v7 = [v4 windowScene];
    rect_16 = v7;
    rect_8 = [v5 screen];
    [rect_8 scale];
    v8 = [rect_8 coordinateSpace];
    coordinateSpace = self->_coordinateSpace;
    self->_coordinateSpace = v8;

    [(UICoordinateSpace *)self->_fixedCoordinateSpace bounds];
    [(LAUIPhysicalButtonView *)self _physicalButtonNormalizedFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = LA_LOG_LAUIPhysicalButtonView();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
LABEL_12:

      v21 = LA_LOG_LAUIPhysicalButtonView();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{ x:%.3f, y:%.3f, w:%.3f, h:%.3f }", v11, v13, v15, v17];
        LODWORD(rect_24.m11) = 138412290;
        *(&rect_24.m11 + 4) = v22;
        _os_log_impl(&dword_2560E6000, v21, OS_LOG_TYPE_DEFAULT, "MG: physical button normalized frame: %@", &rect_24, 0xCu);

        v7 = rect_16;
      }

      [(UICoordinateSpace *)self->_coordinateSpace convertRect:self->_fixedCoordinateSpace fromCoordinateSpace:?];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      if (self->_export)
      {
        v31 = 5.0;
      }

      else
      {
        v31 = 6.0;
      }

      v32 = self->_coordinateSpace;
      [(UICoordinateSpace *)self->_fixedCoordinateSpace bounds];
      [(UICoordinateSpace *)v32 convertRect:self->_fixedCoordinateSpace fromCoordinateSpace:?];
      v37 = v34;
      v38 = v35;
      v39 = v36;
      rect = v33;
      if (v30 <= 0.0)
      {
        MidY = CGRectGetMidY(*&v33);
        v41 = indeterminateFrame;
        if (v26 >= MidY)
        {
          v26 = v26 - v31;
          v42 = 3;
        }

        else
        {
          v42 = 1;
        }

        v30 = v31;
      }

      else
      {
        MidX = CGRectGetMidX(*&v33);
        v41 = indeterminateFrame;
        if (v24 >= MidX)
        {
          v24 = v24 - v31;
          v42 = 2;
        }

        else
        {
          v42 = 0;
        }

        v28 = v31;
      }

      edge = self->_edge;
      if (edge == v42 && !v41)
      {
LABEL_38:
        [v3 convertRect:self->_coordinateSpace fromCoordinateSpace:v24, v26, v28, v30];
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v56 = LA_LOG_LAUIPhysicalButtonView();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{ x:%.3f, y:%.3f, w:%.3f, h:%.3f }", *&v49, *&v51, *&v53, *&v55];
          LODWORD(rect_24.m11) = 138412290;
          *(&rect_24.m11 + 4) = v57;
          _os_log_impl(&dword_2560E6000, v56, OS_LOG_TYPE_DEFAULT, "LA: physical button view frame: %@", &rect_24, 0xCu);

          v7 = rect_16;
        }

        if (!self->_export)
        {
          goto LABEL_44;
        }

        self->_originalFrame.origin.x = v49;
        self->_originalFrame.origin.y = v51;
        self->_originalFrame.size.width = v53;
        self->_originalFrame.size.height = v55;
        v58 = v37 + v39 * 3.0;
        if (!self->_disableOffscreenWorkaround)
        {
          v49 = rect + v38 * 3.0;
          v51 = v37 + v39 * 3.0;
        }

        if (self->_disablePortraitWorkaround)
        {
LABEL_44:
          v59 = v53;
          v53 = v55;
LABEL_57:
          [(LAUIPhysicalButtonView *)self frame];
          v76.origin.x = v49;
          v76.origin.y = v51;
          v76.size.width = v59;
          v76.size.height = v53;
          if (!CGRectEqualToRect(v75, v76))
          {
            [(LAUIPhysicalButtonView *)self setFrame:v49, v51, v59, v53];
            v67 = LA_LOG_LAUIPhysicalButtonView();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(rect_24.m11) = 0;
              _os_log_impl(&dword_2560E6000, v67, OS_LOG_TYPE_DEFAULT, "physical button view frame updated", &rect_24, 2u);
            }
          }

          self->_indeterminateFrame = 0;
          if (edge != v42 && [(LAUIPhysicalButtonViewAnimation *)self->_animation isRunning])
          {
            [(LAUIPhysicalButtonViewAnimation *)self->_animation endImmediately];
            [(LAUIPhysicalButtonViewAnimation *)self->_animation begin];
          }

          goto LABEL_65;
        }

        v60 = self->_edge;
        if ((v60 | 2) == 3)
        {
          v59 = v55;
        }

        else
        {
          v59 = v53;
          v53 = v55;
        }

        if (v60)
        {
          if (v60 == 3)
          {
            v61 = -1.57079633;
          }

          else
          {
            if (v60 != 1)
            {
              containerView = self->_containerView;
              v63 = *(MEMORY[0x277CD9DE8] + 80);
              *&rect_24.m31 = *(MEMORY[0x277CD9DE8] + 64);
              *&rect_24.m33 = v63;
              v64 = *(MEMORY[0x277CD9DE8] + 112);
              *&rect_24.m41 = *(MEMORY[0x277CD9DE8] + 96);
              *&rect_24.m43 = v64;
              v65 = *(MEMORY[0x277CD9DE8] + 16);
              *&rect_24.m11 = *MEMORY[0x277CD9DE8];
              *&rect_24.m13 = v65;
              v66 = *(MEMORY[0x277CD9DE8] + 48);
              *&rect_24.m21 = *(MEMORY[0x277CD9DE8] + 32);
              *&rect_24.m23 = v66;
              goto LABEL_56;
            }

            v61 = 1.57079633;
          }
        }

        else
        {
          v61 = 3.14159265;
        }

        containerView = self->_containerView;
        CATransform3DMakeRotation(&rect_24, v61, 0.0, 0.0, 1.0);
LABEL_56:
        [(UIView *)containerView setTransform3D:&rect_24];
        goto LABEL_57;
      }

      self->_edge = v42;
      if (v42 > 1)
      {
        if (v42 != 3)
        {
          instructionLabel = self->_instructionLabel;
          v45 = 2;
          goto LABEL_37;
        }
      }

      else if (!v42)
      {
        v45 = 0;
        instructionLabel = self->_instructionLabel;
LABEL_37:
        [(UILabel *)instructionLabel setTextAlignment:v45];
        [(LAUIPhysicalButtonView *)self setNeedsLayout];
        goto LABEL_38;
      }

      instructionLabel = self->_instructionLabel;
      v73.origin.x = v24;
      v73.origin.y = v26;
      v73.size.width = v28;
      v73.size.height = v30;
      v47 = CGRectGetMidX(v73);
      v74.origin.x = rect;
      v74.origin.y = v37;
      v74.size.width = v38;
      v74.size.height = v39;
      v45 = 2 * (v47 >= CGRectGetMidX(v74));
      goto LABEL_37;
    }

    v19 = [v7 interfaceOrientation];
    if (v19 < 5)
    {
      v20 = off_2798214F8[v19];
      LODWORD(rect_24.m11) = 138412290;
      *(&rect_24.m11 + 4) = v20;
      _os_log_impl(&dword_2560E6000, v18, OS_LOG_TYPE_DEFAULT, "LA: current orientation: %@", &rect_24, 0xCu);
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    self->_indeterminateFrame = 1;
  }
}

- (void)disableWorkarounds
{
  if (!self->_workaroundsDisabled)
  {
    self->_workaroundsDisabled = 1;
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self name:*MEMORY[0x277D76878] object:0];
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v4 = [(LAUIPhysicalButtonView *)self _colorForStyle:?];
    [(UIView *)self->_buttonView setBackgroundColor:?];
    [(UILabel *)self->_instructionLabel setTextColor:v4];
  }
}

- (void)setAnimationStyle:(int64_t)a3
{
  if (self->_animationStyle == a3)
  {
    return;
  }

  self->_animationStyle = a3;
  animation = self->_animation;
  if (animation)
  {
    [(LAUIPhysicalButtonViewAnimation *)animation endImmediately];
    v6 = self->_animation;
    self->_animation = 0;
  }

  if (a3 == 2)
  {
    v11 = [LAUIPhysicalButtonViewShimmerAnimation alloc];
    v7 = [(UILabel *)self->_instructionLabel layer];
    v12 = [(LAUIPhysicalButtonViewAnimation *)v11 initWith:self layer:v7];
    v13 = self->_animation;
    self->_animation = v12;
  }

  else if (a3 == 1)
  {
    v8 = [LAUIPhysicalButtonViewBounceAnimation alloc];
    v9 = [(UIView *)self->_containerView layer];
    v10 = [(LAUIPhysicalButtonViewAnimation *)v8 initWith:self layer:v9];

    if (self->_export)
    {
      [(LAUIPhysicalButtonViewAnimation *)v10 setForceMaxXEdge:!self->_disablePortraitWorkaround];
    }

    v7 = self->_animation;
    self->_animation = v10;
  }

  else
  {
    if (a3)
    {
      goto LABEL_13;
    }

    v7 = self->_animation;
    self->_animation = 0;
  }

LABEL_13:
  if (self->_onScreen)
  {
    v14 = self->_animation;

    [(LAUIPhysicalButtonViewAnimation *)v14 begin];
  }
}

- (void)layoutSubviews
{
  v110.receiver = self;
  v110.super_class = LAUIPhysicalButtonView;
  [(LAUIPhysicalButtonView *)&v110 layoutSubviews];
  v3 = [(LAUIPhysicalButtonView *)self window];
  v4 = [v3 screen];
  [v4 scale];
  v104 = v5;
  edge = self->_edge;
  v7 = 44.0;
  if (!self->_export)
  {
    v7 = 8.0;
  }

  v101 = v7;
  v8 = edge & 0xFFFFFFFD;
  v9 = 20.0;
  if ((edge & 0xFFFFFFFD) == 0)
  {
    v9 = 8.0;
  }

  v99 = v9;
  [(UICoordinateSpace *)self->_coordinateSpace bounds];
  [(LAUIPhysicalButtonView *)self convertRect:self->_coordinateSpace fromCoordinateSpace:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (v8)
  {
    v18 = 40.0;
  }

  else
  {
    v18 = 16.0;
  }

  [(LAUIPhysicalButtonViewAnimation *)self->_animation update];
  [(LAUIPhysicalButtonView *)self bounds];
  rect.origin.x = v22;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v97 = v17;
  v98 = v13;
  if (self->_export && !self->_disablePortraitWorkaround)
  {
    v26 = self->_edge | 2;
    if (v26 == 3)
    {
      v27 = v20;
    }

    else
    {
      v27 = v21;
    }

    if (v26 == 3)
    {
      v24 = v21;
    }

    x = rect.origin.x;
    if (v26 == 3)
    {
      v19 = rect.origin.x;
      x = v23;
    }

    rect.origin.x = x;
    v25 = v27;
    v23 = v19;
  }

  v29 = edge | 2;
  v30 = v24 * 4.0;
  if (self->_export)
  {
    v30 = v24;
  }

  if (v29 == 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = v24;
  }

  v32 = v25 * 4.0;
  if (self->_export)
  {
    v32 = v25;
  }

  if (v29 == 2)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  amount = v33;
  if (v29 == 2)
  {
    v34 = v25;
  }

  else
  {
    v34 = v32;
  }

  [(UILabel *)self->_instructionLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  rect.origin.y = v35;
  v105 = v36;
  v93 = v18;
  v95 = v15 - v18;
  v96 = v11;
  if (self->_coordinateSpace)
  {
    v37 = v15 - v18 - v24;
    if (v8)
    {
      v37 = v15 - v18;
    }

    y = rect.origin.y;
    v39 = fmin(rect.origin.y, v37);
    if (v37 > 0.0)
    {
      y = v39;
    }

    rect.origin.y = y;
  }

  v40 = v24;
  if ((edge | 2) == 2)
  {
    v40 = v31 + rect.origin.y + 8.0;
  }

  v41 = v25;
  if ((edge | 2) == 2)
  {
    v42 = v31 - v24;
  }

  else
  {
    v41 = v34 + v105 + 8.0;
    v42 = v34 - v25;
  }

  v43 = v40;
  if ((edge | 2) != 2)
  {
    v43 = v41;
  }

  v44 = MEMORY[0x277CBF348];
  v45 = *MEMORY[0x277CBF348];
  v46 = *(MEMORY[0x277CBF348] + 8);
  v47 = self->_edge;
  if (v47 > 1)
  {
    v49 = v43 - v42;
    if (v47 != 2)
    {
      if (v47 != 3)
      {
        goto LABEL_65;
      }

      v50 = rect.origin.x;
      v51 = v23;
      v52 = v24;
      v53 = v25;
      if (self->_onScreen)
      {
        v46 = CGRectGetMaxY(*&v50) - v49;
      }

      else
      {
        v46 = v101 + CGRectGetMaxY(*&v50);
      }

      goto LABEL_62;
    }

    v55 = rect.origin.x;
    v56 = v23;
    v57 = v24;
    v58 = v25;
    if (self->_onScreen)
    {
      v45 = CGRectGetMaxX(*&v55) - v49;
    }

    else
    {
      v45 = v101 + CGRectGetMaxX(*&v55);
    }
  }

  else
  {
    if (v47)
    {
      if (v47 != 1)
      {
        goto LABEL_65;
      }

      if (self->_onScreen)
      {
        v48 = v42;
      }

      else
      {
        v48 = v101 + v41;
      }

      v46 = v23 - v48;
LABEL_62:
      v45 = rect.origin.x;
      goto LABEL_65;
    }

    if (self->_onScreen)
    {
      v54 = v42;
    }

    else
    {
      v54 = v101 + v40;
    }

    v45 = rect.origin.x - v54;
  }

  v46 = v23;
LABEL_65:
  v100 = v45;
  v102 = v46;
  if (!self->_export)
  {
    [(UIView *)self->_containerView setFrame:?];
    goto LABEL_79;
  }

  containerView = self->_containerView;
  if (self->_disablePortraitWorkaround)
  {
    [(UIView *)containerView setFrame:?];
    goto LABEL_79;
  }

  [(UIView *)containerView setBounds:*v44, v44[1], v40, v41];
  v60 = self->_edge;
  if (v60 == 3)
  {
    v63 = v24 + rect.origin.x;
    v61 = v102;
    v62 = v63 - (v40 + v100);
  }

  else
  {
    if (v60 != 1)
    {
      if (v60)
      {
        v61 = v100;
      }

      else
      {
        v61 = v24 + rect.origin.x - (v40 + v100);
      }

      v62 = v102;
      v64 = v40;
      goto LABEL_78;
    }

    v61 = v25 + v23 - (v41 + v102);
    v62 = v100;
  }

  v64 = v41;
  v41 = v40;
LABEL_78:
  v65 = self->_containerView;
  [(UIView *)v65 anchorPoint];
  [(UIView *)v65 setCenter:v61 + v66 * v64, v62 + v67 * v41];
LABEL_79:
  [(UIView *)self->_containerView bounds];
  remainder = v111;
  CGRectDivide(v111, &rect.size, &remainder, amount, self->_edge);
  v68 = fmax(v104, 1.0);
  [(UIView *)self->_buttonView setFrame:round(v68 * (rect.size.width + (v107 - v31) * 0.5)) / v68, round(v68 * (rect.size.height + (v108 - v34) * 0.5)) / v68, v31, v34];
  v69 = [(UIView *)self->_buttonView layer];
  v70 = v69;
  v71 = 5.0;
  if (self->_export)
  {
    v71 = round(v68 * fmin(v31 * 0.5, v34 * 0.5)) / v68;
  }

  [v69 setCornerRadius:v71];

  CGRectDivide(remainder, &rect.size, &remainder, 8.0, self->_edge);
  height = remainder.size.height;
  v73 = remainder.origin.y;
  v74 = round(v68 * (remainder.origin.x + (remainder.size.width - rect.origin.y) * 0.5)) / v68;
  if ((edge | 2) != 2 && self->_coordinateSpace)
  {
    v75 = v99 + v96;
    v76 = v98 + 8.0;
    v77 = v97 + -16.0;
    if (!self->_export || self->_disableOffscreenWorkaround && self->_disablePortraitWorkaround)
    {
      [(UIView *)self->_containerView convertRect:self fromView:v75, v76, v95, v77];
      v80 = v79;
      v82 = v81;
      v84 = v83;
    }

    else
    {
      v85 = [(LAUIPhysicalButtonView *)self superview:v75];
      if (v85)
      {
        [(UICoordinateSpace *)self->_coordinateSpace bounds];
        [v85 convertRect:self->_coordinateSpace fromCoordinateSpace:?];
        v80 = v99 + v86 - self->_originalFrame.origin.x - v100;
        rect.origin.x = v87 - self->_originalFrame.origin.y - v102 + 8.0;
        v82 = v88 - v94;
        v84 = v89 + -16.0;
      }

      else
      {
        v80 = *MEMORY[0x277CBF3A0];
        rect.origin.x = *(MEMORY[0x277CBF3A0] + 8);
        v82 = *(MEMORY[0x277CBF3A0] + 16);
        v84 = *(MEMORY[0x277CBF3A0] + 24);
      }

      v78 = rect.origin.x;
    }

    v90 = v80;
    v91 = v82;
    v92 = v84;
    v74 = fmin(CGRectGetMaxX(*(&v78 - 1)) - rect.origin.y, fmax(v80, v74));
  }

  [(UILabel *)self->_instructionLabel setFrame:v74, round(v68 * (v73 + (height - v105) * 0.5)) / v68, rect.origin.y];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self->_containerView frame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v8.receiver = self;
  v8.super_class = LAUIPhysicalButtonView;
  v5 = [(LAUIPhysicalButtonView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (!v5)
  {
    v4 = 0;
  }

  v6 = v4;

  return v4;
}

- (id)_colorForStyle:(int64_t)a3
{
  style = self->_style;
  if (style == 2)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    if (!v4)
    {
LABEL_4:
      v4 = [MEMORY[0x277D75348] colorWithRed:0.56 green:0.56 blue:0.58 alpha:1.0];
    }
  }

  else
  {
    if (style != 1)
    {
      goto LABEL_4;
    }

    v4 = [MEMORY[0x277D75348] colorWithWhite:a3 alpha:{0.9803922, 1.0}];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  return v4;
}

- (void)setAnimating:(BOOL)a3
{
  if (self->_animating != a3)
  {
    self->_animating = a3;
    [(LAUIPhysicalButtonView *)self _updateOnScreen];
  }
}

- (void)_updateOnScreen
{
  v3 = [(LAUIPhysicalButtonView *)self window];
  v4 = v3;
  if (!self->_animating || v3 == 0)
  {
    if (!v3)
    {
      [(LAUIPhysicalButtonView *)self _purgeExportedHandle];
    }

    v6 = 0;
  }

  else
  {
    v6 = !self->_isInstructionHidden;
  }

  if (self->_onScreen != v6)
  {
    [(LAUIPhysicalButtonView *)self layoutIfNeeded];
    self->_onScreen = v6;
    [(UIView *)self->_containerView center];
    v8 = v7;
    v10 = v9;
    [(LAUIPhysicalButtonView *)self setNeedsLayout];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __41__LAUIPhysicalButtonView__updateOnScreen__block_invoke;
    v39[3] = &unk_279821460;
    v39[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v39];
    if (self->_onScreen)
    {
      [(LAUIPhysicalButtonView *)self _updateExportState];
    }

    [(UIView *)self->_containerView center];
    v13 = v12;
    v14 = v11;
    if (v8 == v12 && v10 == v11)
    {
      v23 = 0.0;
      [(SBSHardwareButtonHintViewContentVisibilityControlling *)self->_exportedHandle setContentVisibility:self->_onScreen animationSettings:0];
    }

    else
    {
      if (self->_onScreen)
      {
        v16 = [MEMORY[0x277CD9FA0] animationWithKeyPath:@"position"];
        [v16 setMass:1.0];
        [v16 setStiffness:109.6623];
        [v16 setDamping:14.6608];
        [v16 setVelocity:0.0];
        LODWORD(v17) = 1036831949;
        LODWORD(v18) = 0.25;
        LODWORD(v19) = 0.25;
        LODWORD(v20) = 1.0;
        v21 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v18 :v17 :v19 :v20];
        [v16 setTimingFunction:v21];

        [v16 durationForEpsilon:0.001];
        [v16 setDuration:?];
        v22 = v16;
        [(SBSHardwareButtonHintViewContentVisibilityControlling *)self->_exportedHandle setContentVisibility:1 animationSettings:0];
      }

      else
      {
        v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
        LODWORD(v25) = 1036831949;
        LODWORD(v26) = 0.25;
        LODWORD(v27) = 0.25;
        LODWORD(v28) = 1.0;
        v29 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v26 :v25 :v27 :v28];
        [v24 setTimingFunction:v29];

        [v24 setDuration:0.25];
        v22 = v24;
        [(SBSHardwareButtonHintViewContentVisibilityControlling *)self->_exportedHandle setContentVisibility:0 animationSettings:0];
      }

      ++self->_visibilityAnimationCount;
      objc_initWeak(&location, self);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __41__LAUIPhysicalButtonView__updateOnScreen__block_invoke_2;
      v36[3] = &unk_279821488;
      objc_copyWeak(&v37, &location);
      [v22 laui_setDidStopHandler:v36];
      [v22 setAdditive:1];
      [v22 setFillMode:*MEMORY[0x277CDA240]];
      v30 = v22;
      v31 = [MEMORY[0x277CCAE60] valueWithPoint:{v8 - v13, v10 - v14}];
      [(CAAnimation *)v30 setFromValue:v31];

      v32 = [MEMORY[0x277CCAE60] valueWithPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      [(CAAnimation *)v30 setToValue:v32];

      [(CAAnimation *)v30 duration];
      v23 = v33;
      v34 = [(UIView *)self->_containerView layer];
      v35 = LAUILayerAddAdditiveAnimation(v34, 0, v30);

      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
    }

    if (self->_onScreen || ([(LAUIPhysicalButtonView *)self _updateExportState], self->_onScreen))
    {
      [(LAUIPhysicalButtonViewAnimation *)self->_animation beginWithDelay:v23];
    }

    else
    {
      [(LAUIPhysicalButtonViewAnimation *)self->_animation end];
    }
  }
}

void __41__LAUIPhysicalButtonView__updateOnScreen__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --WeakRetained[58];
    [WeakRetained _updateExportState];
  }
}

- (void)_purgeExportedHandle
{
  if (self->_export)
  {
    exportedHandle = self->_exportedHandle;
    if (exportedHandle)
    {
      [(SBSHardwareButtonHintViewContentVisibilityControlling *)exportedHandle invalidate];
      v4 = self->_exportedHandle;
      self->_exportedHandle = 0;

      [(UIView *)self->_containerView setHidden:1];

      [(LAUIPhysicalButtonView *)self updateFrame];
    }
  }
}

- (void)_updateExportState
{
  if (self->_export && !self->_exporting)
  {
    v3 = [(LAUIPhysicalButtonView *)self window];

    v4 = self->_visibilityAnimationCount != 0;
    onScreen = self->_onScreen;
    if (!v3)
    {
      onScreen = 0;
      v4 = 0;
    }

    if (((onScreen ^ (self->_exportedHandle == 0)) & 1) == 0)
    {
      if (onScreen)
      {
        self->_exporting = 1;
        objc_initWeak(&location, self);
        objc_copyWeak(&v6, &location);
        SBSUIRegisterHardwareButtonHintViewAsync();
        objc_destroyWeak(&v6);
        objc_destroyWeak(&location);
      }

      else if (!v4)
      {

        [(LAUIPhysicalButtonView *)self _purgeExportedHandle];
      }
    }
  }
}

void __44__LAUIPhysicalButtonView__updateExportState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__LAUIPhysicalButtonView__updateExportState__block_invoke_2;
    v5[3] = &unk_2798214B0;
    objc_copyWeak(&v7, (a1 + 32));
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);

    objc_destroyWeak(&v7);
  }

  else
  {
    [v3 invalidate];
  }
}

void __44__LAUIPhysicalButtonView__updateExportState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 57, v3);
    *(v7 + 448) = 0;
    if (v7[57])
    {
      v4 = [v7 window];

      if (v4)
      {
        v5 = *(v7 + 500);
      }

      else
      {
        v5 = 0;
      }

      if ((v5 & 1) == 0 && (v7[58] ? (v6 = v4 == 0) : (v6 = 1), v6))
      {
        [v7 _purgeExportedHandle];
      }

      else
      {
        [v7[63] setHidden:0];
        [v7[57] setContentVisibility:v5 animationSettings:0];
      }
    }
  }

  else
  {
    [v3 invalidate];
  }
}

- (void)setInstruction:(id)a3
{
  v9 = a3;
  if ([(NSString *)v9 length])
  {
    v4 = v9;
  }

  else
  {

    v4 = 0;
  }

  instruction = self->_instruction;
  v10 = v4;
  if (instruction != v4 && (!v4 || !instruction || ([(NSString *)instruction isEqual:v4]& 1) == 0))
  {
    v6 = [(NSString *)v10 copy];
    v7 = self->_instruction;
    self->_instruction = v6;

    [(UILabel *)self->_instructionLabel setText:self->_instruction];
    v8 = 0.0;
    if (self->_instruction)
    {
      v8 = 1.0;
    }

    [(UILabel *)self->_instructionLabel setAlpha:v8];
    [(LAUIPhysicalButtonView *)self setNeedsLayout];
  }
}

- (void)setIsInstructionHidden:(BOOL)a3
{
  if (self->_isInstructionHidden != a3)
  {
    self->_isInstructionHidden = a3;
    [(LAUIPhysicalButtonView *)self _updateOnScreen];
  }
}

@end