@interface CCUIStatusBar
+ (Class)statusBarClass;
- (CCUIStatusBar)initWithFrame:(CGRect)frame;
- (CCUIStatusBarDelegate)delegate;
- (CGAffineTransform)compactScaleTransform;
- (CGRect)compactAvoidanceFrame;
- (CGRect)expandedAvoidanceFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)compactEdgeInsets;
- (UIEdgeInsets)expandedEdgeInsets;
- (UIStatusBarStyleRequest)compactTrailingStyleRequest;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_updateCompactTrailingStatusBarAvoidanceFrame;
- (void)_updateCompactTrailingStatusBarStyleRequest;
- (void)_updateMetricsIfNeeded;
- (void)_updateShadow;
- (void)controlCenterApplyPrimaryContentShadow;
- (void)layoutSubviews;
- (void)setCompactEdgeInsets:(UIEdgeInsets)insets;
- (void)setCompactScaleTransform:(CGAffineTransform *)transform;
- (void)setDelegate:(id)delegate;
- (void)setExpandedEdgeInsets:(UIEdgeInsets)insets;
- (void)setExpandedStatusBarTranslation:(double)translation;
- (void)setExpandedTrailingAlpha:(double)alpha;
- (void)setLeadingState:(unint64_t)state;
- (void)setTrailingState:(unint64_t)state;
@end

@implementation CCUIStatusBar

- (CCUIStatusBar)initWithFrame:(CGRect)frame
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = CCUIStatusBar;
  v3 = [(CCUIStatusBar *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CCUIStatusBar *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    statusBarClass = [objc_opt_class() statusBarClass];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    v15 = [[statusBarClass alloc] initWithFrame:1 showForegroundView:{v6, v8, v10, v12}];
    compactTrailingStatusBar = v4->_compactTrailingStatusBar;
    v4->_compactTrailingStatusBar = v15;

    v17 = CCUIStatusBarForStatusBar(v4->_compactTrailingStatusBar);
    [v17 setTargetScreen:mainScreen];

    v18 = v4->_compactTrailingStatusBar;
    v25[0] = *MEMORY[0x277D775E0];
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [(UIStatusBar *)v18 setEnabledPartIdentifiers:v19];

    [(CCUIStatusBar *)v4 addSubview:v4->_compactTrailingStatusBar];
    v20 = [[statusBarClass alloc] initWithFrame:1 showForegroundView:{v6, v8, v10, v12}];
    expandedStatusBar = v4->_expandedStatusBar;
    v4->_expandedStatusBar = v20;

    v22 = CCUIStatusBarForStatusBar(v4->_expandedStatusBar);
    [v22 setTargetScreen:mainScreen];

    [(UIStatusBar *)v4->_expandedStatusBar requestStyle:1 animated:0];
    [(UIStatusBar *)v4->_expandedStatusBar setMode:1];
    [(CCUIStatusBar *)v4 addSubview:v4->_expandedStatusBar];
    [(CCUIStatusBar *)v4 setCompactTrailingAlpha:1.0];
  }

  return v4;
}

+ (Class)statusBarClass
{
  CCUIStatusBarIsSpeakeasy();
  v2 = objc_opt_class();

  return v2;
}

- (void)_updateMetricsIfNeeded
{
  if (self->_needsUpdatedMetrics)
  {
    [(UIStatusBar *)self->_compactTrailingStatusBar setNeedsLayout];
    [(UIStatusBar *)self->_compactTrailingStatusBar layoutIfNeeded];
    [(UIStatusBar *)self->_expandedStatusBar setNeedsLayout];
    [(UIStatusBar *)self->_expandedStatusBar layoutIfNeeded];
    v3 = *MEMORY[0x277D775A8];
    [(UIStatusBar *)self->_compactTrailingStatusBar frameForPartWithIdentifier:*MEMORY[0x277D775A8]];
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
    IsNull = CGRectIsNull(v59);
    v9 = MEMORY[0x277CBF3A0];
    if (IsNull)
    {
      x = *MEMORY[0x277CBF3A0];
      y = *(MEMORY[0x277CBF3A0] + 8);
      width = *(MEMORY[0x277CBF3A0] + 16);
      v57 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      v57 = height;
    }

    [(UIStatusBar *)self->_expandedStatusBar frameForPartWithIdentifier:v3];
    v10 = v60.origin.x;
    v11 = v60.origin.y;
    v12 = v60.size.width;
    rect = v60.size.height;
    if (CGRectIsNull(v60))
    {
      v55 = v9[1];
      v56 = *v9;
      v54 = v9[2];
      rect = v9[3];
    }

    else
    {
      v54 = v12;
      v55 = v11;
      v56 = v10;
    }

    [(UIStatusBar *)self->_compactTrailingStatusBar bounds];
    v14 = v13;
    v16 = v15;
    v50 = v15;
    v51 = v17;
    v19 = v18;
    v61.origin.x = x;
    v61.origin.y = y;
    v20 = width;
    v61.size.width = width;
    v61.size.height = v57;
    MaxX = CGRectGetMaxX(v61);
    v62.origin.x = v14;
    v62.origin.y = v16;
    v62.size.width = v51;
    v62.size.height = v19;
    v52 = MaxX / CGRectGetWidth(v62);
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = v57;
    MaxY = CGRectGetMaxY(v63);
    v64.origin.x = v14;
    v64.origin.y = v50;
    v64.size.width = v51;
    v64.size.height = v19;
    v23 = MaxY / CGRectGetHeight(v64);
    layer = [(UIStatusBar *)self->_compactTrailingStatusBar layer];
    v25 = v23;
    v26 = x;
    v27 = y;
    v28 = v20;
    [layer setAnchorPoint:{v52, v25}];

    if (!self->_preparedMarginDelta)
    {
      [(UIStatusBar *)self->_expandedStatusBar bounds];
      v30 = v29;
      v53 = v31;
      v48 = v33;
      v49 = v32;
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v65.origin.x = x;
        v65.origin.y = v27;
        v65.size.width = v28;
        v65.size.height = v57;
        MinX = CGRectGetMinX(v65);
        v66.origin.y = v55;
        v66.origin.x = v56;
        v66.size.width = v54;
        v66.size.height = rect;
        v37 = CGRectGetMinX(v66);
      }

      else
      {
        v67.origin.x = v14;
        v67.origin.y = v50;
        v67.size.width = v51;
        v67.size.height = v19;
        v38 = v30;
        v39 = CGRectGetWidth(v67);
        v68.origin.x = x;
        v68.origin.y = v27;
        v68.size.width = v28;
        v68.size.height = v57;
        MinX = v39 - CGRectGetMaxX(v68);
        v69.origin.x = v38;
        v69.origin.y = v53;
        v69.size.height = v48;
        v69.size.width = v49;
        v40 = CGRectGetWidth(v69);
        v70.origin.y = v55;
        v70.origin.x = v56;
        v70.size.width = v54;
        v70.size.height = rect;
        v37 = v40 - CGRectGetMaxX(v70);
      }

      self->_trailingMarginDelta = v37 - MinX;
      self->_preparedMarginDelta = 1;
    }

    v71.origin.x = v56;
    v71.origin.y = v55;
    v71.size.width = v54;
    v71.size.height = rect;
    v41 = CGRectGetMaxY(v71);
    v72.origin.x = v26;
    v72.origin.y = v27;
    v72.size.width = v28;
    v72.size.height = v57;
    v42 = v41 - CGRectGetMaxY(v72);
    v43 = 0.0;
    if (self->_alignCompactAndExpandedStatusBars)
    {
      v43 = v42;
    }

    self->_verticalBatteryAlignmentDelta = v43;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
    }

    else
    {
      v45 = SBFEffectiveHomeButtonType();

      if (v45 != 2)
      {
        v46 = CCUIStatusBarBaselineToBaselineOffsetHeight();
LABEL_21:
        self->_verticalSecondaryServiceDelta = v46;
        v73.origin.x = v56;
        v73.origin.y = v55;
        v73.size.width = v54;
        v73.size.height = rect;
        v47 = CGRectGetHeight(v73);
        v74.origin.x = v26;
        v74.origin.y = v27;
        v74.size.width = v28;
        v74.size.height = v57;
        self->_maxCompactScaleFactor = v47 / CGRectGetHeight(v74);
        self->_needsUpdatedMetrics = 0;
        return;
      }
    }

    v46 = 0.0;
    if (v42 < 0.0)
    {
      v46 = -self->_verticalBatteryAlignmentDelta;
    }

    goto LABEL_21;
  }
}

- (UIStatusBarStyleRequest)compactTrailingStyleRequest
{
  delegate = [(CCUIStatusBar *)self delegate];
  v4 = [delegate compactTrailingStyleRequestForStatusBar:self];

  v5 = [v4 copy];

  return v5;
}

- (CGRect)compactAvoidanceFrame
{
  delegate = [(CCUIStatusBar *)self delegate];
  [delegate compactAvoidanceFrameForStatusBar:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)expandedAvoidanceFrame
{
  delegate = [(CCUIStatusBar *)self delegate];
  [delegate expandedAvoidanceFrameForStatusBar:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(CCUIStatusBar *)self _updateCompactTrailingStatusBarStyleRequest];
    [(CCUIStatusBar *)self _updateCompactTrailingStatusBarAvoidanceFrame];
    v5 = obj;
  }
}

- (void)setLeadingState:(unint64_t)state
{
  if (self->_leadingState != state)
  {
    self->_leadingState = state;
    [(CCUIStatusBar *)self setNeedsLayout];

    [(CCUIStatusBar *)self layoutIfNeeded];
  }
}

- (void)setTrailingState:(unint64_t)state
{
  if (self->_trailingState != state)
  {
    v8 = v3;
    self->_trailingState = state;
    if (!state)
    {
      [(CCUIStatusBar *)self _updateCompactTrailingStatusBarStyleRequest];
      self->_preparedMarginDelta = 0;
    }

    [(CCUIStatusBar *)self setNeedsLayout:v4];

    [(CCUIStatusBar *)self layoutIfNeeded];
  }
}

- (void)setCompactEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_compactEdgeInsets.top, v3), vceqq_f64(*&self->_compactEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_compactEdgeInsets = insets;
    [(CCUIStatusBar *)self setNeedsLayout];
  }
}

- (void)setExpandedEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_expandedEdgeInsets.top, v3), vceqq_f64(*&self->_expandedEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_expandedEdgeInsets = insets;
    [(CCUIStatusBar *)self setNeedsLayout];
  }
}

- (void)setExpandedTrailingAlpha:(double)alpha
{
  [(UIStatusBar *)self->_expandedStatusBar setAlpha:*MEMORY[0x277D775E0] forPartWithIdentifier:alpha];

  [(CCUIStatusBar *)self _updateShadow];
}

- (CGAffineTransform)compactScaleTransform
{
  v3 = *&self[12].b;
  *&retstr->a = *&self[11].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[12].d;
  return self;
}

- (void)setCompactScaleTransform:(CGAffineTransform *)transform
{
  p_compactScaleTransform = &self->_compactScaleTransform;
  v6 = *&self->_compactScaleTransform.c;
  *&t1.a = *&self->_compactScaleTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_compactScaleTransform.tx;
  v7 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v7;
  *&v10.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_compactScaleTransform->c = *&transform->c;
    *&p_compactScaleTransform->tx = v9;
    *&p_compactScaleTransform->a = v8;
    [(CCUIStatusBar *)self setNeedsLayout];
  }
}

- (void)setExpandedStatusBarTranslation:(double)translation
{
  if (vabdd_f64(self->_expandedStatusBarTranslation, translation) >= 2.22044605e-16)
  {
    self->_expandedStatusBarTranslation = translation;
    [(CCUIStatusBar *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v75.receiver = self;
  v75.super_class = CCUIStatusBar;
  [(CCUIStatusBar *)&v75 layoutSubviews];
  [(CCUIStatusBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  CCUIEdgeInsetsRTLSwap();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CCUIEdgeInsetsRTLSwap();
  v70 = v4 + v14;
  rect = v6 + v12;
  v19 = v8 - (v14 + v18);
  v20 = v10 - (v12 + v16);
  v22 = v4 + v21;
  v24 = v8 - (v21 + v23);
  v27 = v10 - (v25 + v26);
  v28 = v6 + v25 - self->_verticalBatteryAlignmentDelta + self->_expandedStatusBarTranslation;
  verticalSecondaryServiceDelta = 0.0;
  if (self->_alignCompactAndExpandedStatusBars)
  {
    verticalSecondaryServiceDelta = self->_verticalSecondaryServiceDelta;
  }

  v30 = v28 - verticalSecondaryServiceDelta;
  compactTrailingStatusBar = self->_compactTrailingStatusBar;
  v32 = *(MEMORY[0x277CBF2C0] + 16);
  v72 = *MEMORY[0x277CBF2C0];
  v73 = v32;
  v74 = *(MEMORY[0x277CBF2C0] + 32);
  [(UIStatusBar *)compactTrailingStatusBar setTransform:&v72];
  [(UIStatusBar *)self->_compactTrailingStatusBar setFrame:v70, rect, v19, v20];
  [(UIStatusBar *)self->_expandedStatusBar setFrame:v22, v30, v24, v27];
  [(CCUIStatusBar *)self _updateMetricsIfNeeded];
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v33 = v22;
    v34 = v20;
    v35 = v19;
    v37 = *MEMORY[0x277D76DA8];
    v36 = *(MEMORY[0x277D76DA8] + 8);
    leadingState = [(CCUIStatusBar *)self leadingState];
    v67 = v37;
    v39 = v37;
    v40 = v33;
    v41 = v36;
    if (!leadingState)
    {
      v76.origin.x = v70;
      v76.origin.y = rect;
      v76.size.width = v35;
      v76.size.height = v34;
      MinX = CGRectGetMinX(v76);
      v77.origin.x = v40;
      v77.origin.y = v30;
      v77.size.width = v24;
      v77.size.height = v27;
      v39 = MinX - CGRectGetMinX(v77);
      v41 = 0.0;
    }

    v69 = v39;
    trailingState = [(CCUIStatusBar *)self trailingState];
    v68 = v41;
    if (trailingState == 1)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

      v56 = v40;
      v57 = v30;
      v58 = v24;
      v59 = v27;
      if (userInterfaceLayoutDirection == 1)
      {
        v60 = CGRectGetMinX(*&v56);
        v79.origin.x = v70;
        v51 = rect;
        v79.origin.y = rect;
        v79.size.width = v35;
        v79.size.height = v34;
        v52 = v60 - CGRectGetMinX(v79) + self->_trailingMarginDelta;
      }

      else
      {
        MaxX = CGRectGetMaxX(*&v56);
        v81.origin.x = v70;
        v51 = rect;
        v81.origin.y = rect;
        v81.size.width = v35;
        v81.size.height = v34;
        v52 = MaxX - CGRectGetMaxX(v81) - self->_trailingMarginDelta;
      }

      v62 = 0.0;
      v53 = v67;
      v61 = v36;
    }

    else if (trailingState)
    {
      v53 = v67;
      v61 = v36;
      v52 = v67;
      v51 = rect;
      v62 = v36;
    }

    else
    {
      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      userInterfaceLayoutDirection2 = [mEMORY[0x277D75128]2 userInterfaceLayoutDirection];

      v46 = v70;
      v47 = rect;
      v48 = v35;
      v49 = v34;
      if (userInterfaceLayoutDirection2 == 1)
      {
        v50 = CGRectGetMinX(*&v46);
        v78.origin.x = v40;
        v51 = rect;
        v78.origin.y = v30;
        v78.size.width = v24;
        v78.size.height = v27;
        v52 = v67;
        v53 = v50 - CGRectGetMinX(v78) - self->_trailingMarginDelta;
      }

      else
      {
        v63 = CGRectGetMaxX(*&v46);
        v80.origin.x = v40;
        v51 = rect;
        v80.origin.y = v30;
        v80.size.width = v24;
        v80.size.height = v27;
        v52 = v67;
        v53 = v63 - CGRectGetMaxX(v80) + self->_trailingMarginDelta;
      }

      v62 = v36;
      v61 = 0.0;
    }

    [(UIStatusBar *)self->_expandedStatusBar setOffset:*MEMORY[0x277D775D0] forPartWithIdentifier:v69, v68];
    [(UIStatusBar *)self->_expandedStatusBar setOffset:*MEMORY[0x277D775E0] forPartWithIdentifier:v53, v61];
    v82.origin.x = v70;
    v82.origin.y = v51;
    v82.size.width = v35;
    v82.size.height = v34;
    v83 = CGRectOffset(v82, v52, v62 - self->_verticalSecondaryServiceDelta);
    [(UIStatusBar *)self->_compactTrailingStatusBar setFrame:v83.origin.x, v83.origin.y, v83.size.width, v83.size.height];
    v65 = self->_compactTrailingStatusBar;
    v66 = *&self->_compactScaleTransform.c;
    v72 = *&self->_compactScaleTransform.a;
    v73 = v66;
    v74 = *&self->_compactScaleTransform.tx;
    [(UIStatusBar *)v65 setTransform:&v72];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([(CCUIStatusBar *)self leadingState]!= 1 || ([(UIStatusBar *)self->_expandedStatusBar frameForPartWithIdentifier:*MEMORY[0x277D775D0]], v15.x = x, v15.y = y, !CGRectContainsPoint(v17, v15)) || (v8 = self->_expandedStatusBar, [(CCUIStatusBar *)self convertPoint:v8 toView:x, y], [(UIStatusBar *)v8 hitTest:eventCopy withEvent:?], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(CCUIStatusBar *)self trailingState]!= 1 || ([(UIStatusBar *)self->_expandedStatusBar frameForPartWithIdentifier:*MEMORY[0x277D775E0]], v16.x = x, v16.y = y, !CGRectContainsPoint(v18, v16)) || (expandedStatusBar = self->_expandedStatusBar, [(CCUIStatusBar *)self convertPoint:expandedStatusBar toView:x, y], [(UIStatusBar *)expandedStatusBar hitTest:eventCopy withEvent:?], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v13.receiver = self;
      v13.super_class = CCUIStatusBar;
      v9 = [(CCUIStatusBar *)&v13 hitTest:eventCopy withEvent:x, y];
    }
  }

  v11 = v9;

  return v11;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = CCUIStatusBarHeight();
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CCUIStatusBar *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateShadow
{
  [(UIStatusBar *)self->_expandedStatusBar _controlCenterApplyPrimaryContentShadow];
  layer = [(UIStatusBar *)self->_expandedStatusBar layer];
  layer2 = [(UIStatusBar *)self->_expandedStatusBar layer];
  [layer2 shadowOpacity];
  v5 = v4;
  [(CCUIStatusBar *)self expandedTrailingAlpha];
  v7 = v6 * v5;
  *&v7 = v7;
  [layer setShadowOpacity:v7];
}

- (void)controlCenterApplyPrimaryContentShadow
{
  Mutable = CGPathCreateMutable();
  [(UIStatusBar *)self->_expandedStatusBar frameForPartWithIdentifier:*MEMORY[0x277D775C0]];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (!CGRectIsNull(v14))
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    CGPathAddRect(Mutable, 0, v15);
  }

  [(UIStatusBar *)self->_expandedStatusBar frameForPartWithIdentifier:*MEMORY[0x277D775C8]];
  v8 = v16.origin.x;
  v9 = v16.origin.y;
  v10 = v16.size.width;
  v11 = v16.size.height;
  if (!CGRectIsNull(v16))
  {
    v17.origin.x = v8;
    v17.origin.y = v9;
    v17.size.width = v10;
    v17.size.height = v11;
    CGPathAddRect(Mutable, 0, v17);
  }

  layer = [(UIStatusBar *)self->_expandedStatusBar layer];
  [layer setShadowPath:Mutable];

  CGPathRelease(Mutable);

  [(CCUIStatusBar *)self _updateShadow];
}

- (void)_updateCompactTrailingStatusBarStyleRequest
{
  compactTrailingStyleRequest = [(CCUIStatusBar *)self compactTrailingStyleRequest];
  [(UIStatusBar *)self->_compactTrailingStatusBar setStyleRequest:compactTrailingStyleRequest];
}

- (void)_updateCompactTrailingStatusBarAvoidanceFrame
{
  [(CCUIStatusBar *)self compactAvoidanceFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CCUIStatusBar *)self expandedAvoidanceFrame];
  x = v11;
  y = v13;
  width = v15;
  height = v17;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(CCUIStatusBar *)self compactEdgeInsets];
    v22 = v21;
    v24 = v23;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    if ([mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1)
    {
      v26 = v24;
    }

    else
    {
      v26 = v22;
    }

    v27 = -v26;
    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    v32 = CGRectOffset(v31, v27, 0.0);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;

    v28 = &OBJC_IVAR___CCUIStatusBar__compactTrailingStatusBar;
  }

  else
  {
    [(UIStatusBar *)self->_compactTrailingStatusBar setAvoidanceFrame:v4, v6, v8, v10];
    v28 = &OBJC_IVAR___CCUIStatusBar__expandedStatusBar;
  }

  v29 = *(&self->super.super.super.isa + *v28);

  [v29 setAvoidanceFrame:{x, y, width, height}];
}

- (CCUIStatusBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)compactEdgeInsets
{
  top = self->_compactEdgeInsets.top;
  left = self->_compactEdgeInsets.left;
  bottom = self->_compactEdgeInsets.bottom;
  right = self->_compactEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)expandedEdgeInsets
{
  top = self->_expandedEdgeInsets.top;
  left = self->_expandedEdgeInsets.left;
  bottom = self->_expandedEdgeInsets.bottom;
  right = self->_expandedEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end