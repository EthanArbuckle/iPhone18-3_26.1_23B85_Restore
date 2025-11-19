@interface CSHomeAffordanceView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldBeginPointerInteractionRequest:(id)a3 atLocation:(CGPoint)a4 forView:(id)a5;
- (CGRect)extendedFrameForPointerAnimationSuppression;
- (CGSize)suggestedSizeForContentWidth:(double)a3;
- (CSAlwaysOnHomeAffordancePillView)alwaysOnHomeAffordancePillView;
- (CSHomeAffordanceView)initWithCoverSheetContext:(id)a3;
- (MTLumaDodgePillView)lumaDodgePillView;
- (MTStaticColorPillView)staticColorPillView;
- (SBFHomeAffordanceView)homeAffordanceView;
- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)a3;
- (double)suggestedEdgeSpacing;
- (id)_newAlwaysOnHomeAffordancePillView;
- (id)_newHomeAffordanceView;
- (id)_newLumaDodgePillView;
- (id)_newStaticColorPillView;
- (id)_viewForStyle:(unint64_t)a3;
- (id)styleForRegion:(id)a3 forView:(id)a4;
- (unint64_t)_effectiveHomeAffordanceViewHintStyle;
- (void)_transitionToStyle:(unint64_t)a3 animated:(BOOL)a4;
- (void)_updateForLegibility;
- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performHintAnimationWithCompletionHandler:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setOverrideColor:(id)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setSystemPointerInteractionEnabled:(BOOL)a3;
@end

@implementation CSHomeAffordanceView

- (CSHomeAffordanceView)initWithCoverSheetContext:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CSHomeAffordanceView;
  v6 = [(CSHomeAffordanceView *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetContext, a3);
    v8 = [MEMORY[0x277D65E80] rootSettings];
    settings = v7->_settings;
    v7->_settings = v8;

    v10 = [(CSHomeAffordanceView *)v7 _newStaticColorPillView];
    v11 = [(CSHomeAffordanceView *)v7 _newLumaDodgePillView];
    v12 = [(CSHomeAffordanceView *)v7 _newAlwaysOnHomeAffordancePillView];
    v13 = [(CSHomeAffordanceView *)v7 _newHomeAffordanceView];
    [v13 addContentView:v12];
    [v13 addContentView:v11];
    [v13 addContentView:v10];
    [(CSHomeAffordanceView *)v7 addSubview:v13];
    objc_storeWeak(&v7->_staticColorPillView, v10);
    objc_storeWeak(&v7->_lumaDodgePillView, v11);
    objc_storeWeak(&v7->_alwaysOnHomeAffordancePillView, v12);
    objc_storeWeak(&v7->_homeAffordanceView, v13);
    v7->_style = 0;
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 bounds];
    [(CSHomeAffordanceView *)v7 suggestedSizeForContentWidth:v15];

    BSRectWithSize();
    [(CSHomeAffordanceView *)v7 setFrame:?];
    v16 = [(CSCoverSheetContextProviding *)v7->_coverSheetContext assistantController];
    [v16 addAssistantControllerObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(CSCoverSheetContextProviding *)self->_coverSheetContext assistantController];
  [v3 removeAssistantControllerObserver:self];

  v4.receiver = self;
  v4.super_class = CSHomeAffordanceView;
  [(CSHomeAffordanceView *)&v4 dealloc];
}

- (id)_newHomeAffordanceView
{
  v3 = objc_alloc(MEMORY[0x277D65E78]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v4 setHintStyle:{-[CSHomeAffordanceView _effectiveHomeAffordanceViewHintStyle](self, "_effectiveHomeAffordanceViewHintStyle")}];
  return v4;
}

- (id)_newStaticColorPillView
{
  v2 = objc_alloc_init(MEMORY[0x277D26730]);
  [v2 setAlpha:0.0];
  [v2 setHidden:1];
  return v2;
}

- (id)_newLumaDodgePillView
{
  v2 = objc_alloc_init(MEMORY[0x277D26710]);
  [v2 setAlpha:0.0];
  [v2 setHidden:1];
  return v2;
}

- (id)_newAlwaysOnHomeAffordancePillView
{
  v2 = objc_alloc_init(CSAlwaysOnHomeAffordancePillView);
  [(CSAlwaysOnHomeAffordancePillView *)v2 setAlpha:0.0];
  [(CSAlwaysOnHomeAffordancePillView *)v2 setHidden:1];
  return v2;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(CSHomeAffordanceView *)self bounds];
  UIRectGetCenter();
  UIRectCenteredAboutPoint();
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (CGSize)suggestedSizeForContentWidth:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lumaDodgePillView);
  [WeakRetained suggestedSizeForContentWidth:a3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)suggestedEdgeSpacing
{
  WeakRetained = objc_loadWeakRetained(&self->_lumaDodgePillView);
  [WeakRetained suggestedEdgeSpacing];
  v4 = v3;

  return v4;
}

- (CGRect)extendedFrameForPointerAnimationSuppression
{
  [(SBFHomeGrabberSettings *)self->_settings coverSheetSuppressAnimationForPointerInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CSHomeAffordanceView *)self frame];
  v12 = v6 + v11;
  v14 = v4 + v13;
  v16 = v15 - (v6 + v10);
  v18 = v17 - (v4 + v8);
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v12;
  return result;
}

- (void)performHintAnimationWithCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceView);
  [WeakRetained performHintAnimationWithCompletionHandler:v4];
}

- (void)setSystemPointerInteractionEnabled:(BOOL)a3
{
  if (self->_systemPointerInteractionEnabled != a3)
  {
    v4 = a3;
    self->_systemPointerInteractionEnabled = a3;
    v6 = [(CSCoverSheetContextProviding *)self->_coverSheetContext systemPointerInteractionManager];
    v7 = v6;
    if (v4)
    {
      [v6 registerView:self delegate:self];
    }

    else
    {
      [v6 unregisterView:self];
    }
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    [CSHomeAffordanceView _transitionToStyle:"_transitionToStyle:animated:" animated:?];
  }
}

- (void)setOverrideColor:(id)a3
{
  v5 = a3;
  if (self->_overrideColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_overrideColor, a3);
    v6 = [(CSHomeAffordanceView *)self staticColorPillView];
    [v6 setPillColor:self->_overrideColor];

    v5 = v7;
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(CSHomeAffordanceView *)self _updateForLegibility];
  }
}

- (void)_updateForLegibility
{
  v3 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  [(CSHomeAffordanceView *)self setOverrideColor:v3];

  WeakRetained = objc_loadWeakRetained(&self->_lumaDodgePillView);
  if ([(_UILegibilitySettings *)self->_legibilitySettings style]== 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  [WeakRetained setStyle:v4];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CSHomeAffordanceView;
  [(CSHomeAffordanceView *)&v4 layoutSubviews];
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceView);
  [(CSHomeAffordanceView *)self bounds];
  [WeakRetained setFrame:?];
}

- (void)assistantDidChangeHomeAffordanceDoubleTapGestureEnablement:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceView);
  [WeakRetained setHintStyle:{-[CSHomeAffordanceView _effectiveHomeAffordanceViewHintStyle](self, "_effectiveHomeAffordanceViewHintStyle")}];
}

- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)a3
{
  [(SBFHomeGrabberSettings *)self->_settings hitTestOutsetSides];
  v5 = v4;
  [(SBFHomeGrabberSettings *)self->_settings hitTestOutsetTop];
  v7 = -v6;
  v8 = -v5;
  v9 = v7;
  v10 = -v5;
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (BOOL)shouldBeginPointerInteractionRequest:(id)a3 atLocation:(CGPoint)a4 forView:(id)a5
{
  if (([a3 _isPencilInitiated] & 1) != 0 || (-[CSHomeAffordanceView isHiddenOrHasHiddenAncestor](self, "isHiddenOrHasHiddenAncestor") & 1) != 0 || !-[CSHomeAffordanceView _isInAWindow](self, "_isInAWindow"))
  {
    return 0;
  }

  return [(CSHomeAffordanceView *)self isSystemPointerInteractionEnabled];
}

- (id)styleForRegion:(id)a3 forView:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self];
  v6 = [MEMORY[0x277D75860] effectWithPreview:v5];
  [(SBFHomeGrabberSettings *)self->_settings coverSheetHomeAffordanceCursorEdgeInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CSHomeAffordanceView *)self frame];
  v19 = [MEMORY[0x277D75888] shapeWithRoundedRect:v10 + v15 cornerRadius:{v8 + v16, v17 - (v10 + v14), v18 - (v8 + v12), (v17 - (v10 + v14)) * 0.5}];
  v20 = [MEMORY[0x277D75890] styleWithEffect:v6 shape:v19];

  return v20;
}

- (void)_transitionToStyle:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  style = self->_style;
  self->_style = a3;
  v8 = [(CSHomeAffordanceView *)self _viewForStyle:style];
  v9 = [(CSHomeAffordanceView *)self _viewForStyle:self->_style];
  if (v9 != v8)
  {
    v10 = [(CSHomeAffordanceView *)self homeAffordanceView];
    [v9 setHidden:0];
    if (v4)
    {
      v11 = 0.6;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__CSHomeAffordanceView__transitionToStyle_animated___block_invoke;
    v17[3] = &unk_27838B690;
    v21 = a3;
    v18 = v10;
    v19 = v8;
    v20 = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__CSHomeAffordanceView__transitionToStyle_animated___block_invoke_2;
    v14[3] = &unk_27838B6B8;
    v14[4] = self;
    v15 = v20;
    v16 = v19;
    v13 = v10;
    [v12 animateWithDuration:v17 animations:v14 completion:v11];
  }

  [(CSHomeAffordanceView *)self _updateForLegibility];
}

uint64_t __52__CSHomeAffordanceView__transitionToStyle_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 3)
  {
    [*(a1 + 32) cancelHintAnimation];
  }

  [*(a1 + 40) setAlpha:0.0];
  v2 = *(a1 + 48);

  return [v2 setAlpha:1.0];
}

void __52__CSHomeAffordanceView__transitionToStyle_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewForStyle:*(*(a1 + 32) + 432)];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(a1 + 48);

    [v4 setHidden:1];
  }
}

- (id)_viewForStyle:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    WeakRetained = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *off_27838B6D8[a3 - 1]));
  }

  return WeakRetained;
}

- (unint64_t)_effectiveHomeAffordanceViewHintStyle
{
  v2 = [(CSCoverSheetContextProviding *)self->_coverSheetContext assistantController];
  v3 = [v2 isHomeAffordanceDoubleTapGestureEnabled];

  if (v3)
  {
    return *MEMORY[0x277D66040];
  }

  else
  {
    return 0;
  }
}

- (SBFHomeAffordanceView)homeAffordanceView
{
  WeakRetained = objc_loadWeakRetained(&self->_homeAffordanceView);

  return WeakRetained;
}

- (MTStaticColorPillView)staticColorPillView
{
  WeakRetained = objc_loadWeakRetained(&self->_staticColorPillView);

  return WeakRetained;
}

- (MTLumaDodgePillView)lumaDodgePillView
{
  WeakRetained = objc_loadWeakRetained(&self->_lumaDodgePillView);

  return WeakRetained;
}

- (CSAlwaysOnHomeAffordancePillView)alwaysOnHomeAffordancePillView
{
  WeakRetained = objc_loadWeakRetained(&self->_alwaysOnHomeAffordancePillView);

  return WeakRetained;
}

@end