@interface CPSBannerContainerView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CPSBannerContainerView)initWithBannerView:(id)view;
- (CPSBannerContainerView)initWithCoder:(id)coder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_accessibilityElementFocusDidChange:(id)change;
- (void)_commonInit;
- (void)_dismissGestureRecognized:(id)recognized;
- (void)_installBannerViewIfNeeded;
- (void)_removeBannerAnimationsIfNeeded;
- (void)_updateBannerContentSizeCategory;
- (void)setBannerHidden:(BOOL)hidden animated:(BOOL)animated animationCompletion:(id)completion;
- (void)setBannerView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)willMoveToWindow:(id)window;
@end

@implementation CPSBannerContainerView

- (CPSBannerContainerView)initWithBannerView:(id)view
{
  viewCopy = view;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10.receiver = self;
  v10.super_class = CPSBannerContainerView;
  v7 = [(CPSBannerContainerView *)&v10 initWithFrame:?];

  if (v7)
  {
    [(CPSBannerContainerView *)v7 _commonInit];
    objc_storeStrong(&v7->_bannerView, view);
    [(CPSBannerContainerView *)v7 _installBannerViewIfNeeded];
    v8 = v7;
  }

  return v7;
}

- (CPSBannerContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CPSBannerContainerView;
  v3 = [(CPSBannerContainerView *)&v7 initWithCoder:coder];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = CPSBannerContainerView;
  v5 = [(CPSBannerContainerView *)&v10 hitTest:event withEvent:test.x, test.y];
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

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  if (self->_bannerHasAccessibilityFocus)
  {
    [(CPSBannerContainerView *)self setBannerHasAccessibilityFocus:0];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  if (windowCopy)
  {
    [defaultCenter addObserver:self selector:sel__accessibilityElementFocusDidChange_ name:*MEMORY[0x277D76468] object:0];
  }

  else
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x277D76468] object:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CPSBannerContainerView;
  [(CPSBannerContainerView *)&v4 traitCollectionDidChange:change];
  [(CPSBannerContainerView *)self _updateBannerContentSizeCategory];
}

- (void)setBannerView:(id)view
{
  viewCopy = view;
  bannerView = self->_bannerView;
  if (bannerView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)bannerView removeFromSuperview];
    [(UIView *)self->_bannerView _setLocalOverrideTraitCollection:0];
    objc_storeStrong(&self->_bannerView, view);
    bannerView = [(CPSBannerContainerView *)self _installBannerViewIfNeeded];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](bannerView, viewCopy);
}

- (void)setBannerHidden:(BOOL)hidden animated:(BOOL)animated animationCompletion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  if (self->_bannerHidden != hiddenCopy)
  {
    if (animatedCopy)
    {
      [(CPSBannerContainerView *)self _removeBannerAnimationsIfNeeded];
      [(CPSBannerContainerView *)self layoutIfNeeded];
      [(CPSBannerContainerView *)self setBannerHidden:hiddenCopy];
      [(CPSBannerContainerView *)self setNeedsUpdateConstraints];
      if (UIAccessibilityPrefersCrossFadeTransitions())
      {
        self->_bannerCrossFading = 1;
        v9 = 0.0;
        if (hiddenCopy)
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
        v19 = hiddenCopy;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __71__CPSBannerContainerView_setBannerHidden_animated_animationCompletion___block_invoke_2;
        v16[3] = &unk_278DD2538;
        v16[4] = self;
        v17 = completionCopy;
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
        v14 = completionCopy;
        [v12 _animateUsingSpringWithDampingRatio:1 response:v15 tracking:v13 dampingRatioSmoothing:1.0 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.998];
        v11 = v14;
      }

      goto LABEL_12;
    }

    [(CPSBannerContainerView *)self setBannerHidden:hiddenCopy];
    [(CPSBannerContainerView *)self setNeedsUpdateConstraints];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

- (void)_accessibilityElementFocusDidChange:(id)change
{
  bannerView = self->_bannerView;
  userInfo = [change userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D76470]];
  v7 = viewContainsAccessibilityElement(bannerView, v6);

  if (self->_bannerHasAccessibilityFocus != v7)
  {

    [(CPSBannerContainerView *)self setBannerHasAccessibilityFocus:v7];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_dismissGesture == begin)
  {
    bannerView = self->_bannerView;
    [begin locationInView:bannerView];
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

- (void)_dismissGestureRecognized:(id)recognized
{
  dismissGesture = self->_dismissGesture;
  recognizedCopy = recognized;
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
  state = [recognizedCopy state];

  if (state > 2)
  {
    if (state == 3)
    {
      v9[2](v9, 0);
    }

    else if (state == 4)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_bannerHidden];
      (v9)[2](v9, v15);
    }
  }

  else if (state == 1)
  {
    [(UIPanGestureRecognizer *)self->_dismissGesture setTranslation:self inView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    [(UIView *)self->_bannerView frame];
    self->_verticalPositionOffsetForDismissGesture = CGRectGetMinY(v18);
    [(NSLayoutConstraint *)self->_verticalPositionConstraintForDismissGesture setConstant:?];
    [(CPSBannerContainerView *)self willChangeValueForKey:@"trackingBannerDismissGesture"];
    [(NSLayoutConstraint *)self->_verticalPositionConstraintForDismissGesture setActive:1];
    [(CPSBannerContainerView *)self didChangeValueForKey:@"trackingBannerDismissGesture"];
  }

  else if (state == 2)
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
    superview = [(UIView *)bannerView superview];

    if (!superview)
    {
      [(UIView *)self->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(CPSBannerContainerView *)self addSubview:self->_bannerView];
      safeAreaLayoutGuide = [(CPSBannerContainerView *)self safeAreaLayoutGuide];
      [(CPSBannerContainerView *)self willChangeValueForKey:@"trackingBannerDismissGesture"];
      topAnchor = [(UIView *)self->_bannerView topAnchor];
      topAnchor2 = [(CPSBannerContainerView *)self topAnchor];
      v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
      verticalPositionConstraintForDismissGesture = self->_verticalPositionConstraintForDismissGesture;
      self->_verticalPositionConstraintForDismissGesture = v8;

      [(CPSBannerContainerView *)self didChangeValueForKey:@"trackingBannerDismissGesture"];
      topAnchor3 = [(UIView *)self->_bannerView topAnchor];
      topAnchor4 = [safeAreaLayoutGuide topAnchor];
      v12 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
      LODWORD(v13) = 1148829696;
      v14 = [v12 cps_setPriority:v13];
      verticalPositionConstraintWhenVisible = self->_verticalPositionConstraintWhenVisible;
      self->_verticalPositionConstraintWhenVisible = v14;

      bottomAnchor = [(UIView *)self->_bannerView bottomAnchor];
      topAnchor5 = [(CPSBannerContainerView *)self topAnchor];
      v18 = [bottomAnchor constraintEqualToAnchor:topAnchor5];
      LODWORD(v19) = 1148829696;
      v20 = [v18 cps_setPriority:v19];
      verticalPositionConstraintWhenHidden = self->_verticalPositionConstraintWhenHidden;
      self->_verticalPositionConstraintWhenHidden = v20;

      v32 = MEMORY[0x277CCAAD0];
      [(UIView *)self->_bannerView centerXAnchor];
      v34 = v33 = safeAreaLayoutGuide;
      centerXAnchor = [safeAreaLayoutGuide centerXAnchor];
      v23 = [v34 constraintEqualToAnchor:centerXAnchor];
      v35[0] = v23;
      leadingAnchor = [(UIView *)self->_bannerView leadingAnchor];
      leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
      v26 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:8.0];
      v35[1] = v26;
      widthAnchor = [(UIView *)self->_bannerView widthAnchor];
      v28 = [widthAnchor constraintEqualToConstant:556.0];
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
  traitCollection = [(CPSBannerContainerView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v6 = UIContentSizeCategoryCompareToCategory(v3, preferredContentSizeCategory);

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