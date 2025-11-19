@interface FCUIActivityControl
+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6;
- (BOOL)_isBackgroundViewHighlighted;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)_glyphFrameForLayoutFrame:(CGRect *)a3 sizeThatFits:(CGSize)a4;
- (CGRect)_iconLayoutFrameForControlFrame:(CGRect)a3 isRTL:(BOOL)a4 controlSize:(int64_t)a5;
- (CGRect)_optionsButtonLayoutFrameForControlFrame:(CGRect)a3 isRTL:(BOOL)a4;
- (CGRect)_textFrameForControlFrame:(CGRect)a3 iconLayoutFrame:(CGRect)a4 isRTL:(BOOL)a5 controlSize:(int64_t)a6;
- (CGSize)_sizeThatFits:(CGSize)a3 withControlSize:(int64_t)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (FCUIActivityControl)initWithActivityDescription:(id)a3 style:(int64_t)a4;
- (NSString)description;
- (UIAction)defaultAction;
- (UIAction)optionsAction;
- (double)_cornerRadiusForControlFrame:(CGRect)a3;
- (double)_effectiveGlyphPointSize;
- (double)_scaledValueForValue:(double)a3;
- (id)_activityDetailText;
- (id)_activityIconTintColorForSelectedAppearance:(BOOL)a3;
- (id)_highlightingBackgroundView;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (int64_t)_detailLabelVisualStyleForHighlightState:(BOOL)a3;
- (int64_t)_optionsControlTypeForControlStyle:(int64_t)a3;
- (int64_t)_titleLabelVisualStyleForHighlightState:(BOOL)a3;
- (int64_t)_userInterfaceStyleForSelectedAppearance:(BOOL)a3;
- (uint64_t)_usesStatefulSolariumStyleBackground;
- (void)_configureActivityIconImageViewIfNecessaryForReference:(BOOL)a3;
- (void)_configureActivityTitleLabelIfNecessary;
- (void)_configureBackgroundViewIfNecesssary;
- (void)_configureContentViewIfNecessary;
- (void)_configureDetailLabelIfNecessary;
- (void)_configureGlyphVisualStylingProviderIfNecessary;
- (void)_configureMenuViewIfNecessary;
- (void)_configureOptionsButtonIfNecessary;
- (void)_configureTextVisualStylingProviderIfNecessary;
- (void)_setActivityIcon:(id)a3 forReference:(BOOL)a4;
- (void)_setActivityIconPackageView:(id)a3;
- (void)_setBackgroundViewHighlighted:(BOOL)a3;
- (void)_setDrawingSelectedAppearance:(BOOL)a3;
- (void)_setNeedsTextAttributesUpdate;
- (void)_setTextLayoutDisabled:(BOOL)a3;
- (void)_updateAccessibilityIdentifier;
- (void)_updateActivityDetail;
- (void)_updateActivityIcon;
- (void)_updateActivityTitle;
- (void)_updateDrawingSelectedAppearance;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForActivityItemImageView;
- (void)_updateTextAttributesForActivityTitleLabel;
- (void)_updateTextAttributesForDetailLabel;
- (void)_updateTextAttributesIfNecessary;
- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6;
- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
- (void)addAction:(id)a3 forControlEvents:(unint64_t)a4;
- (void)layoutSubviews;
- (void)setActivityDescription:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setContracted:(BOOL)a3;
- (void)setDefaultAction:(id)a3;
- (void)setDetailText:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setExpanded:(BOOL)a3 withTransitionCoordinator:(id)a4;
- (void)setFooterAction:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMenuAlternativeDescription:(id)a3;
- (void)setMenuItemActions:(id)a3;
- (void)setOptionsAction:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectionHidden:(BOOL)a3;
- (void)willPresent:(BOOL)a3 withTargetContainerBounds:(CGRect)a4 transitionCoordinator:(id)a5;
@end

@implementation FCUIActivityControl

- (FCUIActivityControl)initWithActivityDescription:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = FCUIActivityControl;
  v7 = [(FCUIActivityControl *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_controlStyle = a4;
    v7->_adjustsFontForContentSizeCategory = 1;
    [(FCUIActivityControl *)v7 setActivityDescription:v6];
    v9 = [MEMORY[0x277D75418] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v8];
      [(FCUIActivityControl *)v8 addInteraction:v11];
    }
  }

  return v8;
}

- (void)setActivityDescription:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_activityDescription, a3);
    [(FCUIActivityControl *)self _updateActivityIcon];
    [(FCUIActivityControl *)self _updateActivityTitle];
    [(FCUIActivityControl *)self _updateActivityDetail];
    [(FCUIActivityControl *)self _updateAccessibilityIdentifier];
  }
}

- (UIAction)defaultAction
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__FCUIActivityControl_defaultAction__block_invoke;
  v4[3] = &unk_27901A768;
  v4[4] = &v5;
  [(FCUIActivityControl *)self enumerateEventHandlers:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __36__FCUIActivityControl_defaultAction__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v9 = a2;
  if (v9)
  {
    v10 = v9;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v9 = v10;
    *a6 = 1;
  }
}

- (void)setDefaultAction:(id)a3
{
  v5 = a3;
  v4 = [(FCUIActivityControl *)self defaultAction];
  if (([v5 fcui_isEqualToAction:v4] & 1) == 0)
  {
    if (v4)
    {
      [(FCUIActivityControl *)self removeAction:v4 forControlEvents:64];
    }

    if (v5)
    {
      [(FCUIActivityControl *)self addAction:v5 forControlEvents:64];
    }
  }
}

- (UIAction)optionsAction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  optionsButton = self->_optionsButton;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__FCUIActivityControl_optionsAction__block_invoke;
  v5[3] = &unk_27901A768;
  v5[4] = &v6;
  [(FCUIOptionsControl *)optionsButton enumerateEventHandlers:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__FCUIActivityControl_optionsAction__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v9 = a2;
  if (v9)
  {
    v10 = v9;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v9 = v10;
    *a6 = 1;
  }
}

- (void)setOptionsAction:(id)a3
{
  v5 = a3;
  v4 = [(FCUIActivityControl *)self optionsAction];
  if (([v5 fcui_isEqualToAction:v4] & 1) == 0)
  {
    [(FCUIActivityControl *)self _configureOptionsButtonIfNecessary];
    if (v4)
    {
      [(FCUIOptionsControl *)self->_optionsButton removeAction:v4 forControlEvents:64];
    }

    if (v5)
    {
      [(FCUIOptionsControl *)self->_optionsButton addAction:v5 forControlEvents:64];
    }
  }
}

- (void)setMenuItemActions:(id)a3
{
  v6 = a3;
  v4 = [(FCUIActivityControl *)self menuItemActions];
  v5 = [v6 fcui_isEqualToActionArray:v4];

  if ((v5 & 1) == 0)
  {
    [(FCUIActivityControl *)self _configureMenuViewIfNecessary];
    [(FCUIActivityControlMenuView *)self->_menuView setMenuItemActions:v6];
    [(FCUIActivityControl *)self setNeedsLayout];
  }
}

- (void)setMenuAlternativeDescription:(id)a3
{
  v6 = a3;
  v4 = [(FCUIActivityControl *)self menuAlternativeDescription];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(FCUIActivityControl *)self _configureMenuViewIfNecessary];
    [(FCUIActivityControlMenuView *)self->_menuView setMenuAlternativeDescription:v6];
    [(FCUIActivityControl *)self setNeedsLayout];
  }
}

- (void)setFooterAction:(id)a3
{
  v6 = a3;
  v4 = [(FCUIActivityControl *)self footerAction];
  v5 = [v6 fcui_isEqualToAction:v4];

  if ((v5 & 1) == 0)
  {
    [(FCUIActivityControl *)self _configureMenuViewIfNecessary];
    [(FCUIActivityControlMenuView *)self->_menuView setFooterAction:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(FCUIActivityControl *)self _sizeThatFits:self->_controlSize withControlSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v63 = *(MEMORY[0x277CBF2C0] + 16);
  v64 = *MEMORY[0x277CBF2C0];
  *&v87.a = *MEMORY[0x277CBF2C0];
  *&v87.c = v63;
  controlStyle = self->_controlStyle;
  v62 = *(MEMORY[0x277CBF2C0] + 32);
  *&v87.tx = v62;
  if (controlStyle == 1)
  {
    contentView = self->_contentView;
    if (contentView)
    {
      [(UIView *)contentView transform];
    }

    else
    {
      memset(&v86, 0, sizeof(v86));
    }

    v87 = v86;
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __37__FCUIActivityControl_layoutSubviews__block_invoke;
    v85[3] = &unk_27901A470;
    v85[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v85];
  }

  v84.receiver = self;
  v84.super_class = FCUIActivityControl;
  [(FCUIActivityControl *)&v84 layoutSubviews];
  [(UIView *)self->_contentView bounds];
  v65 = v6;
  v66 = v5;
  v70 = v7;
  rect = v8;
  [(FCUIActivityControl *)self _configureBackgroundViewIfNecesssary];
  v9 = [(FCUIActivityControl *)self _shouldReverseLayoutDirection];
  if (CGRectIsEmpty(self->_targetContainerBounds))
  {
    [(FCUIActivityControl *)self bounds];
    width = v10;
    height = v12;
  }

  else
  {
    width = self->_targetContainerBounds.size.width;
    height = self->_targetContainerBounds.size.height;
  }

  if (self->_controlSize == -1)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  [(FCUIActivityControl *)self _sizeThatFits:v14 withControlSize:width, height];
  BSRectWithSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v71 = v21;
  [(FCUIActivityControl *)self _cornerRadiusForControlFrame:?];
  v23 = v22;
  v24 = [(UIView *)self->_contentView _background];

  if (v24)
  {
    [(UIView *)self->_contentView _setContinuousCornerRadius:v23];
  }

  [(UIView *)self->_backgroundView _setContinuousCornerRadius:v23];
  [(FCUIActivityControlMenuView *)self->_menuView _setContinuousCornerRadius:v23];
  [(FCUIActivityControl *)self _iconLayoutFrameForControlFrame:v9 isRTL:self->_controlSize controlSize:v16, v71, v18, v20];
  v80 = v25;
  v81 = v26;
  v82 = v27;
  v83 = v28;
  [(UIImageView *)self->_activityIconImageView sizeThatFits:v18, v20];
  [(FCUIActivityControl *)self _glyphFrameForLayoutFrame:&v80 sizeThatFits:?];
  v30 = v29;
  v68 = v32;
  v69 = v31;
  v34 = v33;
  [(FCUIActivityControl *)self _optionsButtonLayoutFrameForControlFrame:v9 isRTL:v16, v71, v18, v20];
  v79[0] = v35;
  v79[1] = v36;
  v79[2] = v37;
  v79[3] = v38;
  [(FCUIOptionsControl *)self->_optionsButton sizeThatFits:v18, v20];
  [(FCUIActivityControl *)self _glyphFrameForLayoutFrame:v79 sizeThatFits:?];
  if (!self->_textLayoutDisabled)
  {
    v58 = v42;
    v59 = v41;
    v60 = v40;
    v61 = v39;
    activityIconPackageView = self->_activityIconPackageView;
    if (activityIconPackageView)
    {
      [(FCUICAPackageView *)activityIconPackageView sizeThatFits:v18, v20];
      [(FCUIActivityControl *)self _effectiveGlyphPointSize];
      BSRectWithSize();
      v45 = v68;
      v44 = v69;
      UIRectCenteredIntegralRectScale();
      [(FCUICAPackageView *)self->_activityIconPackageView setFrame:0];
    }

    else
    {
      v45 = v68;
      v44 = v69;
    }

    [(UIImageView *)self->_activityIconImageView setFrame:v30, v44, v45, v34];
    [(FCUIOptionsControl *)self->_optionsButton setFrame:v61, v60, v59, v58];
    [(FCUIOptionsControl *)self->_optionsButton setSelected:self->_controlSize == 1];
    v46 = 1.0;
    if (self->_controlSize == -1)
    {
      v46 = 0.0;
    }

    [(FCUIOptionsControl *)self->_optionsButton setAlpha:v46];
    [(FCUIActivityControl *)self _textFrameForControlFrame:v9 iconLayoutFrame:self->_controlSize isRTL:v16 controlSize:v71, v18, v20, v80, v81, v82, v83];
    UIRectCenteredYInRect();
    v47 = *(MEMORY[0x277CBF3A0] + 16);
    *&v86.a = *MEMORY[0x277CBF3A0];
    *&v86.c = v47;
    *&v72.a = *&v86.a;
    *&v72.c = v47;
    [MEMORY[0x277D756B8] fcui_layoutPrimaryLabel:self->_activityTitleLabel secondaryLabel:self->_detailLabel inTextFrame:&v86 primaryLabelFrame:&v72 secondaryLabelFrame:self->_drawingContext drawingContext:?];
    [(UILabel *)self->_activityTitleLabel setFrame:v86.a, v86.b, v86.c, v86.d];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v77 = *&v72.a;
    v76[2] = __37__FCUIActivityControl_layoutSubviews__block_invoke_2;
    v76[3] = &unk_27901A790;
    v76[4] = self;
    v78 = *&v72.c;
    [MEMORY[0x277D75D18] performWithoutAnimation:v76];
    [(UILabel *)self->_detailLabel setAlpha:1.0];
  }

  v48 = 0.0;
  if (self->_controlSize == 1)
  {
    v88.origin.x = v16;
    v88.origin.y = v71;
    v88.size.width = v18;
    v88.size.height = v20;
    MaxY = CGRectGetMaxY(v88);
    v89.origin.x = v66;
    v89.origin.y = v70;
    v89.size.width = v65;
    v89.size.height = rect;
    v50 = CGRectGetHeight(v89);
    v90.origin.x = v16;
    v90.origin.y = v71;
    v90.size.width = v18;
    v90.size.height = v20;
    v51 = CGRectGetHeight(v90);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __37__FCUIActivityControl_layoutSubviews__block_invoke_3;
    v75[3] = &unk_27901A790;
    v75[4] = self;
    *&v75[5] = v66;
    *&v75[6] = MaxY;
    *&v75[7] = v65;
    *&v75[8] = v50 - v51;
    [MEMORY[0x277D75D18] performWithoutAnimation:v75];
    v48 = 0.0;
    if (self->_controlSize == 1)
    {
      v48 = 1.0;
    }
  }

  [(FCUIActivityControlMenuView *)self->_menuView setAlpha:v48];
  v52 = [(FCUIActivityControl *)self _isDrawingSelectedAppearance];
  [(FCUIActivityControl *)self _setBackgroundViewHighlighted:v52];
  v53 = kFCUIPackageViewStateOn;
  if (!v52)
  {
    v53 = &kFCUIPackageViewStateOff;
  }

  -[FCUICAPackageView setState:animated:](self->_activityIconPackageView, "setState:animated:", *v53, [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled]);
  v54 = self->_controlStyle;
  if (v54 == 2)
  {
    activityIconImageView = self->_activityIconImageView;
    v56 = [(FCUIActivityControl *)self _activityIconTintColorForSelectedAppearance:v52];
    [(UIImageView *)activityIconImageView setTintColor:v56];

    [(FCUIOptionsControl *)self->_optionsButton setParentControlSelected:v52];
    [(FCUIOptionsControl *)self->_optionsButton layoutIfNeeded];
  }

  else if (v54 == 1)
  {
    [(FCUIActivityControl *)self setOverrideUserInterfaceStyle:[(FCUIActivityControl *)self _userInterfaceStyleForSelectedAppearance:v52]];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v74 = v87;
    v73[2] = __37__FCUIActivityControl_layoutSubviews__block_invoke_4;
    v73[3] = &unk_27901A7B8;
    v73[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v73];
    memset(&v86, 0, sizeof(v86));
    if ([(FCUIActivityControl *)self isHighlighted])
    {
      CGAffineTransformMakeScale(&v86, 0.93, 0.93);
    }

    else
    {
      *&v86.a = v64;
      *&v86.c = v63;
      *&v86.tx = v62;
    }

    v57 = self->_contentView;
    v72 = v86;
    [(UIView *)v57 setTransform:&v72];
  }
}

uint64_t __37__FCUIActivityControl_layoutSubviews__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 456);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __37__FCUIActivityControl_layoutSubviews__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 504) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 32) + 504);

  return [v2 layoutIfNeeded];
}

uint64_t __37__FCUIActivityControl_layoutSubviews__block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 456);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = v5 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 numberOfTouchesRequired] != 1 || objc_msgSend(v4, "numberOfTapsRequired") != 1;

  return v6;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(FCUIActivityControl *)self isHighlighted];
  v7.receiver = self;
  v7.super_class = FCUIActivityControl;
  [(FCUIActivityControl *)&v7 setHighlighted:v3];
  if (v5 != [(FCUIActivityControl *)self isHighlighted])
  {
    if (self->_controlStyle != 1)
    {
      [(FCUIActivityControl *)self _updateDrawingSelectedAppearance];
    }

    [(FCUIActivityControl *)self setNeedsLayout];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__FCUIActivityControl_setHighlighted___block_invoke;
    v6[3] = &unk_27901A470;
    v6[4] = self;
    [MEMORY[0x277D75D18] fcui_animateWithSelectionParameters:v6 completion:0];
  }
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = FCUIActivityControl;
  [(FCUIActivityControl *)&v4 setSelected:a3];
  [(FCUIActivityControl *)self _updateDrawingSelectedAppearance];
}

- (void)addAction:(id)a3 forControlEvents:(unint64_t)a4
{
  v6 = a3;
  v7.receiver = self;
  v7.super_class = FCUIActivityControl;
  [(FCUIActivityControl *)&v7 addAction:v6 forControlEvents:a4];
  if (!self->_controlStyle)
  {
    [(FCUIActivityControl *)self setOptionsAction:v6];
  }
}

- (void)setDetailText:(id)a3
{
  v4 = a3;
  v5 = [(FCUIActivityControl *)self detailText];
  v6 = BSEqualStrings();

  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x277D75D18];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __37__FCUIActivityControl_setDetailText___block_invoke;
    v12 = &unk_27901A380;
    v13 = self;
    v14 = v4;
    [v7 performWithoutAnimation:&v9];
    [(FCUIActivityControl *)self setNeedsLayout:v9];
    v8 = [(FCUIActivityControl *)self superview];
    [v8 setNeedsLayout];
  }
}

uint64_t __37__FCUIActivityControl_setDetailText___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _configureDetailLabelIfNecessary];
  [*(*(a1 + 32) + 488) setText:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 488);

  return [v2 setAlpha:0.0];
}

- (void)setSelectionHidden:(BOOL)a3
{
  if (self->_selectionHidden != a3)
  {
    self->_selectionHidden = a3;
    [(FCUIActivityControl *)self _updateDrawingSelectedAppearance];

    [(FCUIActivityControl *)self setNeedsLayout];
  }
}

- (void)setExpanded:(BOOL)a3
{
  if ((self->_controlSize == 1) != a3)
  {
    self->_controlSize = a3;
    [(FCUIActivityControl *)self _setNeedsTextAttributesUpdate];

    [(FCUIActivityControl *)self setNeedsLayout];
  }
}

- (void)setExpanded:(BOOL)a3 withTransitionCoordinator:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [(FCUIActivityControl *)self isExpanded];
  [(FCUIActivityControl *)self setExpanded:v4];
  v9 = [(FCUIActivityControl *)self isExpanded];
  if (v8 != v9)
  {
    v10 = v9;
    objc_setAssociatedObject(self, &_FCUIActivityControlAnimationUUID, v7, 1);
    [(UIView *)self->_contentView setClipsToBounds:1];
    [(FCUIActivityControl *)self setSelectionHidden:v10];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__FCUIActivityControl_setExpanded_withTransitionCoordinator___block_invoke;
  v12[3] = &unk_27901A7E0;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [v6 animateAlongsideTransition:0 completion:v12];
}

void __61__FCUIActivityControl_setExpanded_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    v3 = objc_getAssociatedObject(*(a1 + 32), &_FCUIActivityControlAnimationUUID);
    v4 = [v3 isEqual:*(a1 + 40)];

    if (v4)
    {
      [*(*(a1 + 32) + 456) setClipsToBounds:0];
      v5 = *(a1 + 32);

      objc_setAssociatedObject(v5, &_FCUIActivityControlAnimationUUID, 0, 1);
    }
  }
}

- (void)setContracted:(BOOL)a3
{
  if ((self->_controlSize == -1) != a3)
  {
    self->_controlSize = a3 << 63 >> 63;
    [(FCUIActivityControl *)self _setNeedsTextAttributesUpdate];

    [(FCUIActivityControl *)self setNeedsLayout];
  }
}

- (void)willPresent:(BOOL)a3 withTargetContainerBounds:(CGRect)a4 transitionCoordinator:(id)a5
{
  if (a5)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v9 = a3;
    v11 = MEMORY[0x277CCAD78];
    v12 = a5;
    v13 = [v11 UUID];
    objc_setAssociatedObject(self, &_FCUIActivityControlAnimationUUID, v13, 1);
    self->_targetContainerBounds.origin.x = x;
    self->_targetContainerBounds.origin.y = y;
    self->_targetContainerBounds.size.width = width;
    self->_targetContainerBounds.size.height = height;
    [(UIView *)self->_contentView setClipsToBounds:1];
    [(FCUIActivityControl *)self _setTextLayoutDisabled:!v9];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__FCUIActivityControl_willPresent_withTargetContainerBounds_transitionCoordinator___block_invoke;
    v15[3] = &unk_27901A7E0;
    v15[4] = self;
    v16 = v13;
    v14 = v13;
    [v12 animateAlongsideTransition:0 completion:v15];
  }
}

void __83__FCUIActivityControl_willPresent_withTargetContainerBounds_transitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    v3 = objc_getAssociatedObject(*(a1 + 32), &_FCUIActivityControlAnimationUUID);
    v4 = [v3 isEqual:*(a1 + 40)];

    if (v4)
    {
      v5 = (*(a1 + 32) + 552);
      v6 = *(MEMORY[0x277CBF3A0] + 16);
      *v5 = *MEMORY[0x277CBF3A0];
      v5[1] = v6;
      [*(*(a1 + 32) + 456) setClipsToBounds:0];
      [*(a1 + 32) _setTextLayoutDisabled:0];
      v7 = *(a1 + 32);

      objc_setAssociatedObject(v7, &_FCUIActivityControlAnimationUUID, 0, 1);
    }
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(FCUIOptionsControl *)self->_optionsButton setAdjustsFontForContentSizeCategory:?];
    [(FCUIActivityControlMenuView *)self->_menuView setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];

    [(FCUIActivityControl *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(FCUIActivityControl *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    [(FCUIActivityControl *)self _setNeedsTextAttributesUpdate];
    [(FCUIOptionsControl *)self->_optionsButton adjustForContentSizeCategoryChange];
    [(FCUIActivityControlMenuView *)self->_menuView adjustForContentSizeCategoryChange];
  }

  return v3;
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  [(FCUIActivityControl *)self _configureBackgroundViewIfNecesssary];
  backgroundView = self->_backgroundView;
  v6 = objc_opt_class();
  v7 = backgroundView;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [(UIView *)v9 visualStylingProviderForCategory:a3];

  return v10;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  if (self->_controlSize == 1)
  {
    return 0;
  }

  else
  {
    return a5;
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x277D758D8]);
  v6 = MEMORY[0x277D75208];
  [(FCUIActivityControl *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(UIView *)self->_backgroundView _continuousCornerRadius];
  v16 = [v6 bezierPathWithRoundedRect:v8 cornerRadius:{v10, v12, v14, v15}];
  [v5 setVisiblePath:v16];

  v17 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v5];
  v18 = MEMORY[0x277D75890];
  v19 = [MEMORY[0x277D75858] effectWithPreview:v17];
  v20 = [v18 styleWithEffect:v19 shape:0];

  return v20;
}

- (double)_cornerRadiusForControlFrame:(CGRect)a3
{
  CGRectGetHeight(a3);
  UIRoundToScale();
  if (result > 37.0)
  {
    return 37.0;
  }

  return result;
}

- (void)_setDrawingSelectedAppearance:(BOOL)a3
{
  if ([(FCUIActivityControl *)self _isDrawingSelectedAppearance]!= a3)
  {
    self->_drawingSelectedAppearance = a3;

    [(FCUIActivityControl *)self setNeedsLayout];
  }
}

- (void)_updateDrawingSelectedAppearance
{
  if (self->_controlStyle)
  {
    if ([(FCUIActivityControl *)self isExpanded]|| ![(FCUIActivityControl *)self isSelected])
    {
      v3 = 0;
    }

    else
    {
      v3 = [(FCUIActivityControl *)self isSelectionHidden]^ 1;
    }
  }

  else
  {
    v3 = [(FCUIActivityControl *)self isHighlighted];
  }

  [(FCUIActivityControl *)self _setDrawingSelectedAppearance:v3];
}

+ (id)_preferredFont:(BOOL)a3 textStyle:(id)a4 weight:(double)a5 additionalTraits:(unsigned int)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a4 addingSymbolicTraits:*&a6 options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (double)_scaledValueForValue:(double)a3
{
  [(FCUIActivityControl *)self _configureActivityTitleLabelIfNecessary];
  [(FCUIActivityControl *)self _updateTextAttributesIfNecessary];
  v5 = [(UILabel *)self->_activityTitleLabel font];
  [v5 _scaledValueForValue:a3];
  v7 = v6;

  return v7;
}

- (double)_effectiveGlyphPointSize
{
  [(FCUIActivityControl *)self _scaledValueForValue:21.0];
  if (result > 30.0)
  {
    return 30.0;
  }

  return result;
}

- (void)_updateTextAttributesForActivityItemImageView
{
  activityIconImageView = self->_activityIconImageView;
  if (activityIconImageView)
  {
    v3 = MEMORY[0x277D755D0];
    [(FCUIActivityControl *)self _effectiveGlyphPointSize];
    v4 = [v3 configurationWithPointSize:?];
    [(UIImageView *)activityIconImageView setPreferredSymbolConfiguration:v4];
  }
}

- (void)_updateTextAttributesForActivityTitleLabel
{
  activityTitleLabel = self->_activityTitleLabel;
  if (activityTitleLabel)
  {
    v3 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D769C0] weight:0x8000 additionalTraits:*MEMORY[0x277D74410]];
    [(UILabel *)activityTitleLabel setFont:v3];
  }
}

- (void)_updateTextAttributesForDetailLabel
{
  detailLabel = self->_detailLabel;
  if (detailLabel)
  {
    v3 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D76940] weight:0x8000 additionalTraits:*MEMORY[0x277D74410]];
    [(UILabel *)detailLabel setFont:v3];
  }
}

- (void)_setNeedsTextAttributesUpdate
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = 0;

  [(FCUIActivityControl *)self setNeedsLayout];
}

- (void)_updateTextAttributes
{
  v3 = [(FCUIActivityControl *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = v4;

  [(FCUIActivityControl *)self _updateTextAttributesForActivityTitleLabel];
  [(FCUIActivityControl *)self _updateTextAttributesForActivityItemImageView];

  [(FCUIActivityControl *)self _updateTextAttributesForDetailLabel];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(FCUIActivityControl *)self _needsTextAttributesUpdate])
  {

    [(FCUIActivityControl *)self _updateTextAttributes];
  }
}

- (void)_configureTextVisualStylingProviderIfNecessary
{
  if (!self->_textVisualStylingProvider)
  {
    v3 = MEMORY[0x277D26740];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 _visualStylingProviderForStyleSetNamed:@"focusModeText" inBundle:v6];
    textVisualStylingProvider = self->_textVisualStylingProvider;
    self->_textVisualStylingProvider = v4;
  }
}

- (void)_configureGlyphVisualStylingProviderIfNecessary
{
  if (!self->_glyphVisualStylingProvider)
  {
    v3 = MEMORY[0x277D26740];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 _visualStylingProviderForStyleSetNamed:@"focusModeGlyph" inBundle:v6];
    glyphVisualStylingProvider = self->_glyphVisualStylingProvider;
    self->_glyphVisualStylingProvider = v4;
  }
}

- (void)_updateVisualStylingOfView:(id)a3 style:(int64_t)a4 visualStylingProvider:(id)a5 outgoingProvider:(id)a6
{
  if (a3)
  {
    v9 = a5;
    v10 = a3;
    [a6 stopAutomaticallyUpdatingView:v10];
    [v9 automaticallyUpdateView:v10 withStyle:a4];
  }
}

- (void)_visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  v10 = a3;
  v7 = [(FCUIActivityControlMenuView *)self->_menuView requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    [(FCUIActivityControlMenuView *)self->_menuView setVisualStylingProvider:v10 forCategory:a4];
  }
}

- (void)_configureContentViewIfNecessary
{
  if (!self->_contentView)
  {
    v3 = [_FCUIActivityControlContentView alloc];
    [(FCUIActivityControl *)self bounds];
    v4 = [(_FCUIActivityControlContentView *)v3 initWithFrame:?];
    contentView = self->_contentView;
    self->_contentView = v4;

    [(UIView *)self->_contentView setAutoresizingMask:18];
    v6 = self->_contentView;

    [(FCUIActivityControl *)self addSubview:v6];
  }
}

- (void)_configureActivityIconImageViewIfNecessaryForReference:(BOOL)a3
{
  if (!self->_activityIconImageView)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    activityIconImageView = self->_activityIconImageView;
    self->_activityIconImageView = v5;

    [(UIImageView *)self->_activityIconImageView setContentMode:4];
    if (!a3)
    {
      [(FCUIActivityControl *)self _configureContentViewIfNecessary];
      contentView = self->_contentView;
      v8 = self->_activityIconImageView;

      [(UIView *)contentView addSubview:v8];
    }
  }
}

- (id)_activityIconTintColorForSelectedAppearance:(BOOL)a3
{
  controlStyle = self->_controlStyle;
  if (!controlStyle)
  {
    goto LABEL_4;
  }

  if (controlStyle == 2)
  {
    if (a3)
    {
LABEL_4:
      v4 = [MEMORY[0x277D75348] fcui_colorForActivity:self->_activityDescription];
      goto LABEL_7;
    }

    v4 = [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    v4 = 0;
  }

LABEL_7:

  return v4;
}

- (void)_setActivityIcon:(id)a3 forReference:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(FCUIActivityControl *)self activityIcon];
  v7 = BSEqualObjects();

  if ((v7 & 1) == 0)
  {
    [(FCUIActivityControl *)self _configureActivityIconImageViewIfNecessaryForReference:v4];
    [(UIImageView *)self->_activityIconImageView setImage:v10];
    if (!v4)
    {
      if (self->_controlStyle == 1)
      {
        [(FCUIActivityControl *)self _configureGlyphVisualStylingProviderIfNecessary];
        [(FCUIActivityControl *)self _updateVisualStylingOfView:self->_activityIconImageView style:0 visualStylingProvider:self->_glyphVisualStylingProvider outgoingProvider:0];
      }

      else
      {
        activityIconImageView = self->_activityIconImageView;
        v9 = [(FCUIActivityControl *)self _activityIconTintColorForSelectedAppearance:[(FCUIActivityControl *)self _isDrawingSelectedAppearance]];
        [(UIImageView *)activityIconImageView setTintColor:v9];
      }

      [(FCUIActivityControl *)self setNeedsLayout];
    }
  }
}

- (int64_t)_titleLabelVisualStyleForHighlightState:(BOOL)a3
{
  if (a3)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)_configureActivityTitleLabelIfNecessary
{
  if (!self->_activityTitleLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    activityTitleLabel = self->_activityTitleLabel;
    self->_activityTitleLabel = v3;

    [(UILabel *)self->_activityTitleLabel setTextAlignment:1];
    [(UILabel *)self->_activityTitleLabel setNumberOfLines:0];
    [(FCUIActivityControl *)self _configureContentViewIfNecessary];
    [(UIView *)self->_contentView addSubview:self->_activityTitleLabel];
    [(FCUIActivityControl *)self _updateTextAttributesForActivityTitleLabel];
    if (self->_controlStyle == 1)
    {
      [(FCUIActivityControl *)self _configureTextVisualStylingProviderIfNecessary];
      v5 = self->_activityTitleLabel;
      v6 = [(FCUIActivityControl *)self _titleLabelVisualStyleForHighlightState:[(FCUIActivityControl *)self _isBackgroundViewHighlighted]];
      textVisualStylingProvider = self->_textVisualStylingProvider;

      [(FCUIActivityControl *)self _updateVisualStylingOfView:v5 style:v6 visualStylingProvider:textVisualStylingProvider outgoingProvider:0];
    }

    else
    {
      v8 = self->_activityTitleLabel;
      v9 = [MEMORY[0x277D75348] labelColor];
      [(UILabel *)v8 setTextColor:v9];
    }
  }
}

- (int64_t)_detailLabelVisualStyleForHighlightState:(BOOL)a3
{
  if (a3)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)_configureDetailLabelIfNecessary
{
  if (!self->_detailLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailLabel = self->_detailLabel;
    self->_detailLabel = v3;

    [(UILabel *)self->_detailLabel setTextAlignment:1];
    [(UILabel *)self->_detailLabel setNumberOfLines:0];
    [(FCUIActivityControl *)self _configureContentViewIfNecessary];
    [(UIView *)self->_contentView addSubview:self->_detailLabel];
    [(FCUIActivityControl *)self _updateTextAttributesForDetailLabel];
    if (self->_controlStyle == 1)
    {
      [(FCUIActivityControl *)self _configureTextVisualStylingProviderIfNecessary];
      v5 = self->_detailLabel;
      v6 = [(FCUIActivityControl *)self _detailLabelVisualStyleForHighlightState:[(FCUIActivityControl *)self _isBackgroundViewHighlighted]];
      textVisualStylingProvider = self->_textVisualStylingProvider;

      [(FCUIActivityControl *)self _updateVisualStylingOfView:v5 style:v6 visualStylingProvider:textVisualStylingProvider outgoingProvider:0];
    }

    else
    {
      v8 = self->_detailLabel;
      v9 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UILabel *)v8 setTextColor:v9];
    }
  }
}

- (int64_t)_optionsControlTypeForControlStyle:(int64_t)a3
{
  controlStyle = self->_controlStyle;
  v4 = 1;
  if (controlStyle == 2)
  {
    v4 = 2;
  }

  if (controlStyle == 1)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (void)_configureOptionsButtonIfNecessary
{
  if (!self->_optionsButton)
  {
    v3 = [[FCUIOptionsControl alloc] initWithReferencePointSize:21.0 maximumPointSize:30.0];
    optionsButton = self->_optionsButton;
    self->_optionsButton = v3;

    [(FCUIOptionsControl *)self->_optionsButton setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
    controlStyle = self->_controlStyle;
    [(FCUIOptionsControl *)self->_optionsButton setControlType:[(FCUIActivityControl *)self _optionsControlTypeForControlStyle:controlStyle]];
    if (controlStyle == 1)
    {
      [(FCUIActivityControl *)self _configureGlyphVisualStylingProviderIfNecessary];
      [(FCUIOptionsControl *)self->_optionsButton setVisualStylingProvider:self->_glyphVisualStylingProvider forCategory:1];
    }

    else
    {
      v6 = self->_optionsButton;
      v7 = [MEMORY[0x277D75348] labelColor];
      [(FCUIOptionsControl *)v6 setTintColor:v7];
    }

    [(FCUIActivityControl *)self _configureContentViewIfNecessary];
    contentView = self->_contentView;
    v9 = self->_optionsButton;

    [(UIView *)contentView addSubview:v9];
  }
}

- (void)_configureMenuViewIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self->_menuView)
  {
    v3 = objc_alloc_init(FCUIActivityControlMenuView);
    menuView = self->_menuView;
    self->_menuView = v3;

    [(FCUIActivityControlMenuView *)self->_menuView setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
    [(FCUIActivityControl *)self _configureContentViewIfNecessary];
    [(UIView *)self->_contentView addSubview:self->_menuView];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(FCUIActivityControlMenuView *)self->_menuView requiredVisualStyleCategories];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * v9) integerValue];
          v11 = self->_menuView;
          v12 = [(FCUIActivityControl *)self visualStylingProviderForCategory:v10];
          [(FCUIActivityControlMenuView *)v11 setVisualStylingProvider:v12 forCategory:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)_configureBackgroundViewIfNecesssary
{
  if (!self->_backgroundView)
  {
    if (self->_controlStyle == 1)
    {
      v3 = [MEMORY[0x277D26718] materialViewWithRecipe:4];
    }

    else
    {
      v3 = [[_FCUIActivityControlBackgroundView alloc] initWithControlStyle:self->_controlStyle];
    }

    backgroundView = self->_backgroundView;
    self->_backgroundView = &v3->super;

    [(FCUIActivityControl *)self _configureContentViewIfNecessary];
    v5 = self->_backgroundView;
    [(UIView *)self->_contentView bounds];
    [(UIView *)v5 setFrame:?];
    [(UIView *)self->_contentView insertSubview:self->_backgroundView atIndex:0];
    [(UIView *)self->_backgroundView setAutoresizingMask:18];
    if (self->_controlStyle == 1 && _UISolariumEnabled())
    {
      [(UIView *)self->_backgroundView setAlpha:0.0];
      [(UIView *)self->_backgroundView setHighlighted:1];
      contentView = self->_contentView;
      v7 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:8];
      [(UIView *)contentView _setBackground:v7];
    }

    v8 = self->_backgroundView;
    v9 = objc_opt_class();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v10;
      }

      else
      {
        v9 = 0;
      }
    }

    if (v9)
    {
      v11 = [(FCUIActivityControl *)self visualStylingProviderForCategory:1];
      [(FCUIActivityControl *)self _visualStylingProviderDidChange:v11 forCategory:1 outgoingProvider:0];
    }
  }
}

- (void)_setActivityIconPackageView:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(FCUICAPackageView *)self->_activityIconPackageView removeFromSuperview];
    objc_storeStrong(&self->_activityIconPackageView, a3);
    [(FCUIActivityControl *)self _configureContentViewIfNecessary];
    [(UIView *)self->_contentView addSubview:self->_activityIconPackageView];
    [(FCUIActivityControl *)self setNeedsLayout];
  }
}

- (void)_updateActivityIcon
{
  if (self->_controlStyle == 1)
  {
    v3 = [FCUICAPackageView packageViewForActivity:self->_activityDescription];
  }

  else
  {
    v3 = 0;
  }

  v10 = v3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = v10;
    if (v10 && self->_activityIconPackageView)
    {
      goto LABEL_9;
    }

    [(UIImageView *)self->_activityIconImageView removeFromSuperview];
    activityIconImageView = self->_activityIconImageView;
    self->_activityIconImageView = 0;
  }

  v4 = v10;
  if (v10)
  {
LABEL_9:
    [(FCUIActivityControl *)self _setActivityIconPackageView:v4];
    v6 = MEMORY[0x277D755B8];
    v7 = [(FCActivityDescribing *)self->_activityDescription activitySymbolImageName];
    v8 = [v6 _systemImageNamed:v7];
    [(FCUIActivityControl *)self _setActivityIcon:v8 forReference:1];
    goto LABEL_11;
  }

  [(FCUIActivityControl *)self _setActivityIconPackageView:0];
  v9 = MEMORY[0x277D755B8];
  v7 = [(FCActivityDescribing *)self->_activityDescription activitySymbolImageName];
  v8 = [v9 _systemImageNamed:v7];
  [(FCUIActivityControl *)self setActivityIcon:v8];
LABEL_11:
}

- (void)_updateActivityTitle
{
  v5 = [(FCUIActivityControl *)self activityDisplayName];
  v3 = [(UILabel *)self->_activityTitleLabel text];
  v4 = BSEqualStrings();

  if ((v4 & 1) == 0)
  {
    [(FCUIActivityControl *)self _configureActivityTitleLabelIfNecessary];
    [(UILabel *)self->_activityTitleLabel setText:v5];
    [(FCUIActivityControl *)self setNeedsLayout];
  }
}

- (void)_updateActivityDetail
{
  v5 = [(FCUIActivityControl *)self _activityDetailText];
  v3 = [(UILabel *)self->_detailLabel text];
  v4 = BSEqualStrings();

  if ((v4 & 1) == 0)
  {
    [(FCUIActivityControl *)self _configureDetailLabelIfNecessary];
    [(UILabel *)self->_detailLabel setText:v5];
    [(FCUIActivityControl *)self setNeedsLayout];
  }
}

- (void)_updateAccessibilityIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FCUIActivityControl *)self activityDisplayName];
  v5 = [v3 stringWithFormat:@"mode-%@", v4];

  [(FCUIActivityControl *)self setAccessibilityIdentifier:v5];
}

- (id)_highlightingBackgroundView
{
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    backgroundView = self->_backgroundView;
  }

  else
  {
    backgroundView = 0;
  }

  return backgroundView;
}

- (BOOL)_isBackgroundViewHighlighted
{
  if (self && self->_controlStyle == 1 && _UISolariumEnabled())
  {
    v3 = [(FCUIActivityControl *)self _highlightingBackgroundView];
    [v3 alpha];
    IsOne = BSFloatIsOne();
  }

  else
  {
    v3 = [(FCUIActivityControl *)self _highlightingBackgroundView];
    IsOne = [v3 isHighlighted];
  }

  v5 = IsOne;

  return v5;
}

- (int64_t)_userInterfaceStyleForSelectedAppearance:(BOOL)a3
{
  if (a3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)_setBackgroundViewHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(FCUIActivityControl *)self _isBackgroundViewHighlighted]== a3)
  {
    return;
  }

  if (self && self->_controlStyle == 1)
  {
    v5 = _UISolariumEnabled();
    v6 = [(FCUIActivityControl *)self _highlightingBackgroundView];
    if (v5)
    {
      v7 = 0.0;
      if (v3)
      {
        v7 = 1.0;
      }

      v16 = v6;
      [v6 setAlpha:v7];
      goto LABEL_11;
    }
  }

  else
  {
    v6 = [(FCUIActivityControl *)self _highlightingBackgroundView];
  }

  v16 = v6;
  [v6 setHighlighted:v3];
LABEL_11:
  if (self->_controlStyle == 1)
  {
    if (v3)
    {
      v8 = [(FCUIActivityControl *)self visualStylingProviderForCategory:1];
      [v8 stopAutomaticallyUpdatingView:self->_activityIconImageView];

      [(UIImageView *)self->_activityIconImageView mt_removeAllVisualStyling];
      activityIconImageView = self->_activityIconImageView;
      v10 = [MEMORY[0x277D75348] fcui_colorForActivity:self->_activityDescription];
      [(UIImageView *)activityIconImageView setTintColor:v10];
    }

    else
    {
      v11 = self->_activityIconImageView;
      v10 = [(FCUIActivityControl *)self visualStylingProviderForCategory:1];
      [(FCUIActivityControl *)self _updateVisualStylingOfView:v11 style:0 visualStylingProvider:v10 outgoingProvider:0];
    }

    activityTitleLabel = self->_activityTitleLabel;
    v13 = [(MTVisualStylingProvider *)self->_textVisualStylingProvider _visualStylingForStyle:[(FCUIActivityControl *)self _titleLabelVisualStyleForHighlightState:v3]];
    [(UILabel *)activityTitleLabel mt_replaceVisualStyling:v13];

    detailLabel = self->_detailLabel;
    v15 = [(MTVisualStylingProvider *)self->_textVisualStylingProvider _visualStylingForStyle:[(FCUIActivityControl *)self _detailLabelVisualStyleForHighlightState:v3]];
    [(UILabel *)detailLabel mt_replaceVisualStyling:v15];

    [(FCUIOptionsControl *)self->_optionsButton setParentControlHighlighted:v3];
    [(FCUIOptionsControl *)self->_optionsButton layoutIfNeeded];
  }
}

- (CGRect)_iconLayoutFrameForControlFrame:(CGRect)a3 isRTL:(BOOL)a4 controlSize:(int64_t)a5
{
  v5 = a4;
  rect_8 = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76840], self->_preferredContentSizeCategory) == NSOrderedDescending)
  {
    [(FCUIActivityControl *)self _scaledValueForValue:32.0];
  }

  BSRectWithSize();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (v5)
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = rect_8;
    rect = v11;
    CGRectGetMaxX(v24);
    v25.origin.x = rect;
    v25.origin.y = v13;
    v25.size.width = v15;
    v25.size.height = v17;
    CGRectGetWidth(v25);
  }

  UIRectCenteredYInRectScale();
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_optionsButtonLayoutFrameForControlFrame:(CGRect)a3 isRTL:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76840], self->_preferredContentSizeCategory) == NSOrderedDescending)
  {
    [(FCUIActivityControl *)self _scaledValueForValue:32.0];
  }

  BSRectWithSize();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (!a4)
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    CGRectGetWidth(v22);
    v23.origin.x = v11;
    v23.origin.y = v13;
    v23.size.width = v15;
    v23.size.height = v17;
    CGRectGetWidth(v23);
  }

  UIRectCenteredYInRectScale();
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_glyphFrameForLayoutFrame:(CGRect *)a3 sizeThatFits:(CGSize)a4
{
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v9 = CGRectGetWidth(v14);
  if (v9 > CGRectGetWidth(*a3))
  {
    a3->origin.x = x;
    a3->origin.y = y;
    a3->size.width = width;
    a3->size.height = height;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_textFrameForControlFrame:(CGRect)a3 iconLayoutFrame:(CGRect)a4 isRTL:(BOOL)a5 controlSize:(int64_t)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  if (a6 == -1)
  {
    v14 = a4.origin.x;
    v15 = a4.origin.y;
    v16 = a4.size.width;
    v17 = a4.size.height;
    if (a5)
    {
      v18 = CGRectGetMinX(*&v14) + -12.0;
      v19 = 22.0;
    }

    else
    {
      v19 = CGRectGetMaxX(*&v14) + 12.0;
      v30.origin.x = v13;
      v30.origin.y = v12;
      v30.size.width = v11;
      v30.size.height = v10;
      v18 = CGRectGetMaxX(v30) + -22.0;
    }

    v24 = v18 - v19;
    v31.origin.x = v13;
    v31.origin.y = v12;
    v31.size.width = v11;
    v31.size.height = v10;
    v21 = CGRectGetHeight(v31);
    v20 = 0.0;
  }

  else
  {
    if (a5)
    {
      CGRectGetMaxX(a3);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      CGRectGetMinX(v27);
    }

    else
    {
      CGRectGetMaxX(a4);
    }

    v28.origin.x = v13;
    v28.origin.y = v12;
    v28.size.width = v11;
    v28.size.height = v10;
    CGRectGetWidth(v28);
    v29.origin.x = v13;
    v29.origin.y = v12;
    v29.size.width = v11;
    v29.size.height = v10;
    CGRectGetHeight(v29);
    BSRectWithSize();
    UIRectCenteredXInRect();
    v19 = v22;
    v24 = v23;
  }

  v25 = v19;
  v26 = v24;
  result.size.height = v21;
  result.size.width = v26;
  result.origin.y = v20;
  result.origin.x = v25;
  return result;
}

- (CGSize)_sizeThatFits:(CGSize)a3 withControlSize:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  [(FCUIActivityControl *)self _updateTextAttributesIfNecessary];
  if (a4 == -1)
  {
    v8 = 40.0;
  }

  else
  {
    v8 = 74.0;
  }

  if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76840], self->_preferredContentSizeCategory) == NSOrderedDescending)
  {
    [(FCUIActivityControl *)self _scaledValueForValue:v8];
  }

  BSRectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(FCUIActivityControl *)self _shouldReverseLayoutDirection];
  [(FCUIActivityControl *)self _iconLayoutFrameForControlFrame:v17 isRTL:a4 controlSize:v10, v12, v14, v16];
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  [(UIImageView *)self->_activityIconImageView sizeThatFits:v14, v16];
  [(FCUIActivityControl *)self _glyphFrameForLayoutFrame:&v33 sizeThatFits:?];
  [(FCUIActivityControl *)self _textFrameForControlFrame:v17 iconLayoutFrame:a4 isRTL:v10 controlSize:v12, v14, v16, v33, v34, v35, v36];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__FCUIActivityControl__sizeThatFits_withControlSize___block_invoke;
  aBlock[3] = &unk_27901A808;
  aBlock[5] = v22;
  aBlock[6] = v23;
  aBlock[7] = v24;
  aBlock[8] = 0x7FEFFFFFFFFFFFFFLL;
  aBlock[4] = self;
  v25 = _Block_copy(aBlock);
  v25[2](v25, self->_activityTitleLabel);
  (v25[2])(v25, self->_detailLabel);
  if (a4 == 1)
  {
    [(FCUIActivityControlMenuView *)self->_menuView sizeThatFits:width, height];
  }

  UISizeRoundToScale();
  v27 = v26;
  v29 = v28;

  v30 = v27;
  v31 = v29;
  result.height = v31;
  result.width = v30;
  return result;
}

double __53__FCUIActivityControl__sizeThatFits_withControlSize___block_invoke(double *a1, void *a2)
{
  v2 = *(*(a1 + 4) + 536);
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a2;
  [v7 fcui_measuringHeightWithNumberOfLines:{objc_msgSend(v7, "fcui_numberOfLinesInFrame:maximum:drawingContext:", 0, v2, v3, v4, v5, v6)}];
  v9 = v8;

  return v9;
}

- (id)_activityDetailText
{
  if ([(FCUIActivityControl *)self isPlaceholder])
  {
    controlStyle = self->_controlStyle;
    v4 = [(FCUIActivityControl *)self showsPersistentDetailText];
    if ((controlStyle - 1) <= 1)
    {
      v5 = [(FCUIActivityControl *)self activityDetailText];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = [v8 localizedStringForKey:@"ACTIVITY_TRY_IT" value:&stru_285ECE868 table:0];
      }

      goto LABEL_11;
    }

    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = [(FCUIActivityControl *)self activityDetailText];
    goto LABEL_11;
  }

  if ([(FCUIActivityControl *)self showsPersistentDetailText])
  {
    goto LABEL_6;
  }

LABEL_8:
  v7 = 0;
LABEL_11:

  return v7;
}

- (void)_setTextLayoutDisabled:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_textLayoutDisabled != a3)
  {
    v5 = FCUILogSelection;
    if (os_log_type_enabled(FCUILogSelection, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_textLayoutDisabled)
      {
        v6 = @"disabled";
      }

      else
      {
        v6 = @"enabled";
      }

      v7 = 138543618;
      v8 = self;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&dword_24BB26000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: text layout %{public}@", &v7, 0x16u);
    }

    self->_textLayoutDisabled = a3;
  }
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = FCUIActivityControl;
  v3 = [(FCUIActivityControl *)&v9 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(FCUIActivityControl *)self activityDisplayName];
  v7 = [v5 stringWithFormat:@" activityDisplayName: %@", v6];;
  [v4 insertString:v7 atIndex:{objc_msgSend(v4, "rangeOfString:options:", @">", 4)}];

  return v4;
}

- (uint64_t)_usesStatefulSolariumStyleBackground
{
  if (a1 && *(a1 + 608) == 1)
  {
    return _UISolariumEnabled();
  }

  else
  {
    return 0;
  }
}

@end