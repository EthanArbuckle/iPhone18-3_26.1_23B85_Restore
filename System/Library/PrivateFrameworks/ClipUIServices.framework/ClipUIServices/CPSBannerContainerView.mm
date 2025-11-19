@interface CPSBannerContainerView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CPSBannerContainerView)initWithBannerView:(id)a3;
- (CPSBannerContainerView)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_accessibilityElementFocusDidChange:(id)a3;
- (void)_commonInit;
- (void)_dismissGestureRecognized:(id)a3;
- (void)_installBannerViewIfNeeded;
- (void)_removeBannerAnimationsIfNeeded;
- (void)_updateBannerContentSizeCategory;
- (void)setBannerHidden:(BOOL)a3 animated:(BOOL)a4 animationCompletion:(id)a5;
- (void)setBannerView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)willMoveToWindow:(id)a3;
@end

@implementation CPSBannerContainerView

- (CPSBannerContainerView)initWithBannerView:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 bounds];
  v10.receiver = self;
  v10.super_class = CPSBannerContainerView;
  v7 = [(CPSBannerContainerView *)&v10 initWithFrame:?];

  if (v7)
  {
    [(CPSBannerContainerView *)v7 _commonInit];
    objc_storeStrong(&v7->_bannerView, a3);
    [(CPSBannerContainerView *)v7 _installBannerViewIfNeeded];
    v8 = v7;
  }

  return v7;
}

- (CPSBannerContainerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPSBannerContainerView;
  v3 = [(CPSBannerContainerView *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CPSBannerContainerView *)v3 _commonInit];
    v5 = v4;
  }

  return v4;
}

- (void)_commonInit
{
  self->_bannerHidden = 1;
  v3 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__dismissGestureRecognized_];
  dismissGesture = self->_dismissGesture;
  self->_dismissGesture = v3;

  [(UIPanGestureRecognizer *)self->_dismissGesture setAllowedScrollTypesMask:2];
  [(UIPanGestureRecognizer *)self->_dismissGesture setDelegate:self];
  v5 = self->_dismissGesture;

  [(CPSBannerContainerView *)self addGestureRecognizer:v5];
}

- (void)updateConstraints
{
  v4.receiver = self;
  v4.super_class = CPSBannerContainerView;
  [(CPSBannerContainerView *)&v4 updateConstraints];
  v3 = self->_bannerHidden && !self->_bannerCrossFading;
  [MEMORY[0x277CCAAD0] cps_if:v3 thenActivate:self->_verticalPositionConstraintWhenHidden elseActivate:self->_verticalPositionConstraintWhenVisible];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = CPSBannerContainerView;
  v5 = [(CPSBannerContainerView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  if (self->_bannerHasAccessibilityFocus)
  {
    [(CPSBannerContainerView *)self setBannerHasAccessibilityFocus:0];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  if (v5)
  {
    [v4 addObserver:self selector:sel__accessibilityElementFocusDidChange_ name:*MEMORY[0x277D76468] object:0];
  }

  else
  {
    [v4 removeObserver:self name:*MEMORY[0x277D76468] object:0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPSBannerContainerView;
  [(CPSBannerContainerView *)&v4 traitCollectionDidChange:a3];
  [(CPSBannerContainerView *)self _updateBannerContentSizeCategory];
}

- (void)setBannerView:(id)a3
{
  v5 = a3;
  bannerView = self->_bannerView;
  if (bannerView != v5)
  {
    v7 = v5;
    [(UIView *)bannerView removeFromSuperview];
    [(UIView *)self->_bannerView _setLocalOverrideTraitCollection:0];
    objc_storeStrong(&self->_bannerView, a3);
    bannerView = [(CPSBannerContainerView *)self _installBannerViewIfNeeded];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](bannerView, v5);
}

- (void)setBannerHidden:(BOOL)a3 animated:(BOOL)a4 animationCompletion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if (self->_bannerHidden != v6)
  {
    if (v5)
    {
      [(CPSBannerContainerView *)self _removeBannerAnimationsIfNeeded];
      [(CPSBannerContainerView *)self layoutIfNeeded];
      [(CPSBannerContainerView *)self setBannerHidden:v6];
      [(CPSBannerContainerView *)self setNeedsUpdateConstraints];
      if (UIAccessibilityPrefersCrossFadeTransitions())
      {
        self->_bannerCrossFading = 1;
        v9 = 0.0;
        if (v6)
        {
          v9 = 1.0;
        }

        [(UIView *)self->_bannerView setAlpha:v9];
        v10 = MEMORY[0x277D75D18];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __71__CPSBannerContainerView_setBannerHidden_animated_animationCompletion___block_invoke;
        v18[3] = &unk_278DD2498;
        v18[4] = self;
        v19 = v6;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __71__CPSBannerContainerView_setBannerHidden_animated_animationCompletion___block_invoke_2;
        v16[3] = &unk_278DD2538;
        v16[4] = self;
        v17 = v8;
        [v10 animateWithDuration:v18 animations:v16 completion:0.2];
        v11 = v17;
      }

      else
      {
        v12 = MEMORY[0x277D75D18];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __71__CPSBannerContainerView_setBannerHidden_animated_animationCompletion___block_invoke_3;
        v15[3] = &unk_278DD2268;
        v15[4] = self;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __71__CPSBannerContainerView_setBannerHidden_animated_animationCompletion___block_invoke_4;
        v13[3] = &unk_278DD2560;
        v14 = v8;
        [v12 _animateUsingSpringWithDampingRatio:1 response:v15 tracking:v13 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.998];
        v11 = v14;
      }

      goto LABEL_12;
    }

    [(CPSBannerContainerView *)self setBannerHidden:v6];
    [(CPSBannerContainerView *)self setNeedsUpdateConstraints];
  }

  if (v8)
  {
    v8[2](v8);
  }

LABEL_12:
}

uint64_t __71__CPSBannerContainerView_setBannerHidden_animated_animationCompletion___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(*(a1 + 32) + 472) setAlpha:v1];
}

uint64_t __71__CPSBannerContainerView_setBannerHidden_animated_animationCompletion___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 448) = 0;
  [*(*(a1 + 32) + 472) setAlpha:1.0];
  [*(a1 + 32) setNeedsUpdateConstraints];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __71__CPSBannerContainerView_setBannerHidden_animated_animationCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) updateConstraintsIfNeeded];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __71__CPSBannerContainerView_setBannerHidden_animated_animationCompletion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_accessibilityElementFocusDidChange:(id)a3
{
  bannerView = self->_bannerView;
  v5 = [a3 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76470]];
  v7 = viewContainsAccessibilityElement(bannerView, v6);

  if (self->_bannerHasAccessibilityFocus != v7)
  {

    [(CPSBannerContainerView *)self setBannerHasAccessibilityFocus:v7];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_dismissGesture == a3)
  {
    bannerView = self->_bannerView;
    [a3 locationInView:bannerView];
    v5 = [(UIView *)bannerView hitTest:0 withEvent:?];
    v3 = v5 != 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CPSBannerContainerView;
    return [(CPSBannerContainerView *)&v7 gestureRecognizerShouldBegin:?];
  }

  return v3;
}

- (void)_dismissGestureRecognized:(id)a3
{
  dismissGesture = self->_dismissGesture;
  v5 = a3;
  [(UIPanGestureRecognizer *)dismissGesture translationInView:self];
  v7 = v6;
  [(UIPanGestureRecognizer *)self->_dismissGesture velocityInView:self];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__CPSBannerContainerView__dismissGestureRecognized___block_invoke;
  v16[3] = &unk_278DD2588;
  v16[4] = self;
  *&v16[5] = v7;
  v16[6] = v8;
  v9 = MEMORY[0x245D3DDC0](v16);
  v10 = [v5 state];

  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v9[2](v9, 0);
    }

    else if (v10 == 4)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_bannerHidden];
      (v9)[2](v9, v15);
    }
  }

  else if (v10 == 1)
  {
    [(UIPanGestureRecognizer *)self->_dismissGesture setTranslation:self inView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    [(UIView *)self->_bannerView frame];
    self->_verticalPositionOffsetForDismissGesture = CGRectGetMinY(v18);
    [(NSLayoutConstraint *)self->_verticalPositionConstraintForDismissGesture setConstant:?];
    [(CPSBannerContainerView *)self willChangeValueForKey:@"trackingBannerDismissGesture"];
    [(NSLayoutConstraint *)self->_verticalPositionConstraintForDismissGesture setActive:1];
    [(CPSBannerContainerView *)self didChangeValueForKey:@"trackingBannerDismissGesture"];
  }

  else if (v10 == 2)
  {
    verticalPositionOffsetForDismissGesture = self->_verticalPositionOffsetForDismissGesture;
    v12 = self->_bannerView;
    [(UIView *)v12 bounds];
    CGRectGetHeight(v17);
    BSUIConstrainValueWithRubberBand();
    [(UIView *)v12 contentScaleFactor];

    UIPointRoundToScale();
    v14 = verticalPositionOffsetForDismissGesture + v13;
    if (v7 >= 0.0 || v14 <= self->_verticalPositionOffsetForDismissGesture)
    {
      [(NSLayoutConstraint *)self->_verticalPositionConstraintForDismissGesture setConstant:v14];
    }
  }
}

void __52__CPSBannerContainerView__dismissGestureRecognized___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
    v6 = 0;
    v7 = *(a1 + 40);
  }

  else
  {
    v8 = -*(a1 + 40);
    [*(*(a1 + 32) + 472) frame];
    v5 = CGRectGetMaxY(v24) * 0.5 < v8 || *(a1 + 48) < -100.0;
    [*(*(a1 + 32) + 416) constant];
    v10 = v9;
    [*(*(a1 + 32) + 472) frame];
    v6 = (v10 < -CGRectGetHeight(v25)) & v5;
    [*(*(a1 + 32) + 472) frame];
    Height = CGRectGetHeight(v26);
    [*(a1 + 32) safeAreaInsets];
    v13 = -(Height + v12);
    [*(*(a1 + 32) + 472) frame];
    v7 = v13 - CGRectGetMinY(v27);
  }

  [*(a1 + 32) willChangeValueForKey:@"trackingBannerDismissGesture"];
  [*(*(a1 + 32) + 416) setActive:0];
  [*(a1 + 32) didChangeValueForKey:@"trackingBannerDismissGesture"];
  v14 = *(a1 + 32);
  if (v14[464] != v5)
  {
    [v14 setBannerHidden:v5];
    [*(a1 + 32) setNeedsUpdateConstraints];
  }

  if ((v6 & 1) == 0)
  {
    v15 = [MEMORY[0x277CD9FA0] animation];
    [v15 setStiffness:194.955149];
    [v15 stiffness];
    [v15 setDamping:sqrt(v16) * 1.7];
    if (v7 == 0.0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = *(a1 + 48) / v7;
    }

    [v15 setInitialVelocity:v17];
    v18 = objc_alloc(MEMORY[0x277D75A60]);
    [v15 initialVelocity];
    v20 = [v18 initWithDampingRatio:0.85 initialVelocity:{0.0, v19}];
    v21 = objc_alloc(MEMORY[0x277D75D40]);
    [v15 settlingDuration];
    v22 = [v21 initWithDuration:v20 timingParameters:?];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__CPSBannerContainerView__dismissGestureRecognized___block_invoke_2;
    v23[3] = &unk_278DD2268;
    v23[4] = *(a1 + 32);
    [v22 addAnimations:v23];
    [v22 startAnimation];
  }
}

uint64_t __52__CPSBannerContainerView__dismissGestureRecognized___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateConstraintsIfNeeded];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_installBannerViewIfNeeded
{
  v35[3] = *MEMORY[0x277D85DE8];
  bannerView = self->_bannerView;
  if (bannerView)
  {
    v4 = [(UIView *)bannerView superview];

    if (!v4)
    {
      [(UIView *)self->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSBannerContainerView *)self addSubview:self->_bannerView];
      v5 = [(CPSBannerContainerView *)self safeAreaLayoutGuide];
      [(CPSBannerContainerView *)self willChangeValueForKey:@"trackingBannerDismissGesture"];
      v6 = [(UIView *)self->_bannerView topAnchor];
      v7 = [(CPSBannerContainerView *)self topAnchor];
      v8 = [v6 constraintEqualToAnchor:v7];
      verticalPositionConstraintForDismissGesture = self->_verticalPositionConstraintForDismissGesture;
      self->_verticalPositionConstraintForDismissGesture = v8;

      [(CPSBannerContainerView *)self didChangeValueForKey:@"trackingBannerDismissGesture"];
      v10 = [(UIView *)self->_bannerView topAnchor];
      v11 = [v5 topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:8.0];
      LODWORD(v13) = 1148829696;
      v14 = [v12 cps_setPriority:v13];
      verticalPositionConstraintWhenVisible = self->_verticalPositionConstraintWhenVisible;
      self->_verticalPositionConstraintWhenVisible = v14;

      v16 = [(UIView *)self->_bannerView bottomAnchor];
      v17 = [(CPSBannerContainerView *)self topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      LODWORD(v19) = 1148829696;
      v20 = [v18 cps_setPriority:v19];
      verticalPositionConstraintWhenHidden = self->_verticalPositionConstraintWhenHidden;
      self->_verticalPositionConstraintWhenHidden = v20;

      v32 = MEMORY[0x277CCAAD0];
      [(UIView *)self->_bannerView centerXAnchor];
      v34 = v33 = v5;
      v22 = [v5 centerXAnchor];
      v23 = [v34 constraintEqualToAnchor:v22];
      v35[0] = v23;
      v24 = [(UIView *)self->_bannerView leadingAnchor];
      v25 = [v5 leadingAnchor];
      v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25 constant:8.0];
      v35[1] = v26;
      v27 = [(UIView *)self->_bannerView widthAnchor];
      v28 = [v27 constraintEqualToConstant:556.0];
      LODWORD(v29) = 1144750080;
      v30 = [v28 cps_setPriority:v29];
      v35[2] = v30;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
      [v32 activateConstraints:v31];

      [(CPSBannerContainerView *)self _updateBannerContentSizeCategory];
    }
  }
}

- (void)_removeBannerAnimationsIfNeeded
{
  [(CPSBannerContainerView *)self bounds];
  Width = CGRectGetWidth(v4);
  if (Width != self->_widthDuringLastBannerAnimation)
  {
    [(UIView *)self->_bannerView _removeAllRetargetableAnimations:0];
  }

  self->_widthDuringLastBannerAnimation = Width;
}

- (void)_updateBannerContentSizeCategory
{
  v3 = *MEMORY[0x277D76818];
  v4 = [(CPSBannerContainerView *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryCompareToCategory(v3, v5);

  if (v6 == NSOrderedAscending)
  {
    v8 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v3];
    [(UIView *)self->_bannerView _setLocalOverrideTraitCollection:v8];
  }

  else
  {
    bannerView = self->_bannerView;

    [(UIView *)bannerView _setLocalOverrideTraitCollection:0];
  }
}

@end