@interface SFPrivateBrowsingExplanationModuleContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SFPrivateBrowsingExplanationModuleContentView)initWithBanner:(id)banner;
- (double)_preferredHeight;
- (id)_attributedMessage;
- (id)_title;
- (void)_applyMessageTextViewStyle;
- (void)_applyMessageViewLinkTextAttributes;
- (void)_bannerDidChange;
- (void)_dismissModule;
- (void)_setUpDismissButtonIfNeeded;
- (void)_setUpExplanationItemCollectionViewIfNeeded;
- (void)_setUpMessageTextIfNecessary;
- (void)_updateAllowsTitleNextToDismissButton;
- (void)setBanner:(id)banner;
@end

@implementation SFPrivateBrowsingExplanationModuleContentView

- (SFPrivateBrowsingExplanationModuleContentView)initWithBanner:(id)banner
{
  v110[8] = *MEMORY[0x1E69E9840];
  bannerCopy = banner;
  v103.receiver = self;
  v103.super_class = SFPrivateBrowsingExplanationModuleContentView;
  v6 = [(SFPrivateBrowsingExplanationModuleContentView *)&v103 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    v101 = bannerCopy;
    objc_storeStrong(&v6->_banner, banner);
    [(SFPrivateBrowsingExplanationModuleContentView *)v7 setLayoutMargins:30.0, 30.0, 30.0, 30.0];
    v100 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDB8] weight:*MEMORY[0x1E69DB980]];
    v8 = [MEMORY[0x1E69DCC10] sf_startPageBannerTitleLabelWithFont:?];
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v8;

    [(UILabel *)v7->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFPrivateBrowsingExplanationModuleContentView *)v7 addSubview:v7->_titleLabel];
    [(SFPrivateBrowsingExplanationModuleContentView *)v7 _setUpMessageTextIfNecessary];
    [(SFPrivateBrowsingExplanationModuleContentView *)v7 _setUpExplanationItemCollectionViewIfNeeded];
    [(SFPrivateBrowsingExplanationModuleContentView *)v7 _setUpDismissButtonIfNeeded];
    LODWORD(v10) = 1132068864;
    [(UILabel *)v7->_titleLabel setContentCompressionResistancePriority:0 forAxis:v10];
    bottomAnchor = [(UICollectionView *)v7->_explanationItemCollectionView bottomAnchor];
    v12 = bottomAnchor;
    if (bottomAnchor)
    {
      v13 = bottomAnchor;
    }

    else
    {
      bottomAnchor2 = [(UITextView *)v7->_messageTextView bottomAnchor];
      v15 = bottomAnchor2;
      if (bottomAnchor2)
      {
        bottomAnchor3 = bottomAnchor2;
      }

      else
      {
        bottomAnchor3 = [(UILabel *)v7->_titleLabel bottomAnchor];
      }

      v13 = bottomAnchor3;
    }

    readableContentGuide = [(SFPrivateBrowsingExplanationModuleContentView *)v7 readableContentGuide];
    v78 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v7->_titleLabel leadingAnchor];
    leadingAnchor2 = [readableContentGuide leadingAnchor];
    v89 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v110[0] = v89;
    topAnchor = [(UILabel *)v7->_titleLabel topAnchor];
    topAnchor2 = [readableContentGuide topAnchor];
    v83 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v110[1] = v83;
    topAnchor3 = [(UILabel *)v7->_titleLabel topAnchor];
    topAnchor4 = [readableContentGuide topAnchor];
    v80 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    LODWORD(v18) = 1132134400;
    v79 = [v80 sf_withPriority:v18];
    v110[2] = v79;
    trailingAnchor = [readableContentGuide trailingAnchor];
    trailingAnchor2 = [(UILabel *)v7->_titleLabel trailingAnchor];
    v75 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    v110[3] = v75;
    centerXAnchor = [(UILabel *)v7->_titleLabel centerXAnchor];
    centerXAnchor2 = [(SFPrivateBrowsingExplanationModuleContentView *)v7 centerXAnchor];
    v72 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v110[4] = v72;
    widthAnchor = [(UILabel *)v7->_titleLabel widthAnchor];
    widthAnchor2 = [readableContentGuide widthAnchor];
    v21 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v110[5] = v21;
    bottomAnchor4 = [readableContentGuide bottomAnchor];
    v23 = [bottomAnchor4 constraintGreaterThanOrEqualToAnchor:v13];
    v110[6] = v23;
    v102 = readableContentGuide;
    bottomAnchor5 = [readableContentGuide bottomAnchor];
    v99 = v13;
    v25 = [bottomAnchor5 constraintEqualToAnchor:v13];
    LODWORD(v26) = 1132068864;
    v27 = [v25 sf_withPriority:v26];
    v110[7] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:8];
    [v78 activateConstraints:v28];

    messageTextView = v7->_messageTextView;
    if (messageTextView)
    {
      v84 = MEMORY[0x1E696ACD8];
      firstBaselineAnchor = [(UITextView *)messageTextView firstBaselineAnchor];
      lastBaselineAnchor = [(UILabel *)v7->_titleLabel lastBaselineAnchor];
      v90 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];
      v109[0] = v90;
      leadingAnchor3 = [(UITextView *)v7->_messageTextView leadingAnchor];
      leadingAnchor4 = [v102 leadingAnchor];
      v30 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
      v109[1] = v30;
      trailingAnchor3 = [v102 trailingAnchor];
      trailingAnchor4 = [(UITextView *)v7->_messageTextView trailingAnchor];
      v33 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
      v109[2] = v33;
      centerXAnchor3 = [(UITextView *)v7->_messageTextView centerXAnchor];
      centerXAnchor4 = [(SFPrivateBrowsingExplanationModuleContentView *)v7 centerXAnchor];
      v36 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
      v109[3] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:4];
      [v84 activateConstraints:v37];
    }

    dismissButton = v7->_dismissButton;
    if (dismissButton)
    {
      v94 = MEMORY[0x1E696ACD8];
      leadingAnchor5 = [(UIButton *)dismissButton leadingAnchor];
      leadingAnchor6 = [(SFPrivateBrowsingExplanationModuleContentView *)v7 leadingAnchor];
      v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
      v108[0] = v41;
      topAnchor5 = [(UIButton *)v7->_dismissButton topAnchor];
      topAnchor6 = [(SFPrivateBrowsingExplanationModuleContentView *)v7 topAnchor];
      v44 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:10.0];
      v108[1] = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:2];
      [v94 activateConstraints:v45];

      topAnchor7 = [(UILabel *)v7->_titleLabel topAnchor];
      bottomAnchor6 = [(UIButton *)v7->_dismissButton bottomAnchor];
      v48 = [topAnchor7 constraintEqualToAnchor:bottomAnchor6];
      v107 = v48;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
      constraintsForTitleBelowDismissButton = v7->_constraintsForTitleBelowDismissButton;
      v7->_constraintsForTitleBelowDismissButton = v49;

      leadingAnchor7 = [(UILabel *)v7->_titleLabel leadingAnchor];
      trailingAnchor5 = [(UIButton *)v7->_dismissButton trailingAnchor];
      v53 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:trailingAnchor5];
      v106 = v53;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v106 count:1];
      constraintsForTitleNextToDismissButton = v7->_constraintsForTitleNextToDismissButton;
      v7->_constraintsForTitleNextToDismissButton = v54;

      [(SFPrivateBrowsingExplanationModuleContentView *)v7 _updateAllowsTitleNextToDismissButton];
    }

    explanationItemCollectionView = v7->_explanationItemCollectionView;
    if (explanationItemCollectionView)
    {
      v91 = MEMORY[0x1E696ACD8];
      leadingAnchor8 = [(UICollectionView *)explanationItemCollectionView leadingAnchor];
      leadingAnchor9 = [v102 leadingAnchor];
      v98 = leadingAnchor8;
      v58 = [leadingAnchor8 constraintEqualToAnchor:?];
      v105[0] = v58;
      topAnchor8 = [(UICollectionView *)v7->_explanationItemCollectionView topAnchor];
      lastBaselineAnchor2 = [(UITextView *)v7->_messageTextView lastBaselineAnchor];
      lastBaselineAnchor3 = lastBaselineAnchor2;
      if (!lastBaselineAnchor2)
      {
        lastBaselineAnchor3 = [(UILabel *)v7->_titleLabel lastBaselineAnchor];
      }

      v62 = [topAnchor8 constraintEqualToAnchor:lastBaselineAnchor3 constant:20.0];
      v105[1] = v62;
      trailingAnchor6 = [v102 trailingAnchor];
      trailingAnchor7 = [(UICollectionView *)v7->_explanationItemCollectionView trailingAnchor];
      v65 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
      v105[2] = v65;
      v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:3];
      [v91 activateConstraints:v66];

      if (!lastBaselineAnchor2)
      {
      }
    }

    [(SFPrivateBrowsingExplanationModuleContentView *)v7 _bannerDidChange];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__applyMessageViewLinkTextAttributes name:*MEMORY[0x1E69DD8A8] object:0];

    v104[0] = objc_opt_class();
    v104[1] = objc_opt_class();
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
    v69 = [(SFPrivateBrowsingExplanationModuleContentView *)v7 registerForTraitChanges:v68 withTarget:v7 action:sel__updateAllowsTitleNextToDismissButton];

    v70 = v7;
    bannerCopy = v101;
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SFPrivateBrowsingExplanationModuleContentView *)self bounds:fits.width];
  Width = CGRectGetWidth(v9);
  [(SFPrivateBrowsingExplanationModuleContentView *)self _preferredHeight];
  v6 = v5;
  v7 = Width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (double)_preferredHeight
{
  [(SFPrivateBrowsingExplanationModuleContentView *)self bounds];
  [(SFPrivateBrowsingExplanationModuleContentView *)self systemLayoutSizeFittingSize:CGRectGetWidth(v7), *(MEMORY[0x1E69DE090] + 8)];
  v4 = v3;
  [(UICollectionView *)self->_explanationItemCollectionView contentSize];
  return v4 + v5;
}

- (void)setBanner:(id)banner
{
  bannerCopy = banner;
  privateBrowsingExplanationItems = [(WBSStartPageBanner *)self->_banner privateBrowsingExplanationItems];
  privateBrowsingExplanationItems2 = [bannerCopy privateBrowsingExplanationItems];
  v7 = [privateBrowsingExplanationItems isEqual:privateBrowsingExplanationItems2];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_banner, banner);
    [(SFPrivateBrowsingExplanationModuleContentView *)self _bannerDidChange];
  }
}

- (void)_bannerDidChange
{
  _title = [(SFPrivateBrowsingExplanationModuleContentView *)self _title];
  [(UILabel *)self->_titleLabel setText:_title];

  if ([(SFPrivateBrowsingExplanationModuleContentView *)self _hasMessageText])
  {
    _attributedMessage = [(SFPrivateBrowsingExplanationModuleContentView *)self _attributedMessage];
    [(UITextView *)self->_messageTextView setAttributedText:_attributedMessage];

    [(SFPrivateBrowsingExplanationModuleContentView *)self _applyMessageTextViewStyle];
  }

  if (self->_explanationItemCollectionView)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69955A0]);
    [v8 appendSectionsWithIdentifiers:&unk_1EFF744A8];
    privateBrowsingExplanationItems = [(WBSStartPageBanner *)self->_banner privateBrowsingExplanationItems];
    [v8 appendItemsWithIdentifiers:privateBrowsingExplanationItems];

    indexPathsForVisibleItems = [(UICollectionView *)self->_explanationItemCollectionView indexPathsForVisibleItems];
    v7 = [indexPathsForVisibleItems count] != 0;

    [(UICollectionViewDiffableDataSource *)self->_explanationItemCollectionViewDataSource applySnapshot:v8 animatingDifferences:v7];
  }
}

- (id)_title
{
  privateBrowsingExplanationState = [(WBSStartPageBanner *)self->_banner privateBrowsingExplanationState];
  if (privateBrowsingExplanationState <= 1)
  {
    privateBrowsingExplanationState = _WBSLocalizedString();
  }

  return privateBrowsingExplanationState;
}

- (void)_setUpMessageTextIfNecessary
{
  if ([(SFPrivateBrowsingExplanationModuleContentView *)self _hasMessageText])
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD168]);
    messageTextView = self->_messageTextView;
    self->_messageTextView = v3;

    [(UITextView *)self->_messageTextView setAdjustsFontForContentSizeCategory:1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77__SFPrivateBrowsingExplanationModuleContentView__setUpMessageTextIfNecessary__block_invoke;
    v6[3] = &unk_1E721B360;
    v6[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
    [(UITextView *)self->_messageTextView setDelegate:self];
    [(UITextView *)self->_messageTextView setEditable:0];
    [(UITextView *)self->_messageTextView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)self->_messageTextView setScrollEnabled:0];
    textContainer = [(UITextView *)self->_messageTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)self->_messageTextView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)self->_messageTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFPrivateBrowsingExplanationModuleContentView *)self _applyMessageViewLinkTextAttributes];
    [(SFPrivateBrowsingExplanationModuleContentView *)self addSubview:self->_messageTextView];
  }
}

- (id)_attributedMessage
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(SFPrivateBrowsingExplanationModuleContentView *)self _hasMessageText])
  {
    v2 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v2 setParagraphSpacing:8.0];
    v3 = _WBSLocalizedString();
    v12[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    v5 = objc_alloc(MEMORY[0x1E696AD40]);
    v6 = [v4 componentsJoinedByString:@"\n"];
    v10 = *MEMORY[0x1E69DB688];
    v11 = v2;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [v5 initWithString:v6 attributes:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_applyMessageViewLinkTextAttributes
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v7 = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v8[0] = labelColor;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [v3 dictionaryWithDictionary:v5];

  if (UIAccessibilityButtonShapesEnabled())
  {
    [v6 setObject:&unk_1EFF73E08 forKeyedSubscript:*MEMORY[0x1E69DB758]];
  }

  [(UITextView *)self->_messageTextView setLinkTextAttributes:v6];
}

- (void)_applyMessageTextViewStyle
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UITextView *)self->_messageTextView setFont:v3];

  [(UITextView *)self->_messageTextView setTextAlignment:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UITextView *)self->_messageTextView setTextColor:secondaryLabelColor];

  v7 = *MEMORY[0x1E69DB650];
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  v8[0] = linkColor;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(UITextView *)self->_messageTextView setLinkTextAttributes:v6];
}

- (void)_setUpDismissButtonIfNeeded
{
  if (![(WBSStartPageBanner *)self->_banner privateBrowsingExplanationState])
  {
    objc_initWeak(&location, self);
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setButtonSize:3];
    [plainButtonConfiguration setContentInsets:{10.0, 5.0, 10.0, 5.0}];
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
    [plainButtonConfiguration setImage:v4];

    v5 = [MEMORY[0x1E69DCAD8] configurationWithWeight:9];
    [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v5];

    v6 = MEMORY[0x1E69DC628];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __76__SFPrivateBrowsingExplanationModuleContentView__setUpDismissButtonIfNeeded__block_invoke;
    v14 = &unk_1E721C458;
    objc_copyWeak(&v15, &location);
    v7 = [v6 actionWithHandler:&v11];
    v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:{v7, v11, v12, v13, v14}];
    dismissButton = self->_dismissButton;
    self->_dismissButton = v8;

    [(UIButton *)self->_dismissButton setPointerStyleProvider:&__block_literal_global_10];
    [(UIButton *)self->_dismissButton setTintAdjustmentMode:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIButton *)self->_dismissButton setTintColor:secondaryLabelColor];

    [(UIButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_dismissButton _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(SFPrivateBrowsingExplanationModuleContentView *)self addSubview:self->_dismissButton];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __76__SFPrivateBrowsingExplanationModuleContentView__setUpDismissButtonIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismissModule];
}

id __76__SFPrivateBrowsingExplanationModuleContentView__setUpDismissButtonIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (UIAccessibilityButtonShapesEnabled())
  {
    v9 = [MEMORY[0x1E69DCDD0] styleWithEffect:v7 shape:v8];
  }

  else
  {
    v10 = MEMORY[0x1E69DCDB8];
    v11 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v6];
    v12 = [v10 effectWithPreview:v11];

    v13 = MEMORY[0x1E69DCDC8];
    v14 = MEMORY[0x1E69DC728];
    v15 = [v6 imageView];
    [v15 frame];
    v16 = [v14 bezierPathWithOvalInRect:?];
    v17 = [v13 shapeWithPath:v16];

    v9 = [MEMORY[0x1E69DCDD0] styleWithEffect:v12 shape:v17];
  }

  return v9;
}

- (void)_updateAllowsTitleNextToDismissButton
{
  if (self->_dismissButton)
  {
    traitCollection = [(SFPrivateBrowsingExplanationModuleContentView *)self traitCollection];
    v3 = &OBJC_IVAR___SFPrivateBrowsingExplanationModuleContentView__constraintsForTitleNextToDismissButton;
    v4 = &OBJC_IVAR___SFPrivateBrowsingExplanationModuleContentView__constraintsForTitleBelowDismissButton;
    if ([traitCollection horizontalSizeClass] == 1)
    {
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      if (IsAccessibilityCategory)
      {
        v7 = &OBJC_IVAR___SFPrivateBrowsingExplanationModuleContentView__constraintsForTitleNextToDismissButton;
      }

      else
      {
        v7 = &OBJC_IVAR___SFPrivateBrowsingExplanationModuleContentView__constraintsForTitleBelowDismissButton;
      }

      if (IsAccessibilityCategory)
      {
        v3 = &OBJC_IVAR___SFPrivateBrowsingExplanationModuleContentView__constraintsForTitleBelowDismissButton;
      }

      v4 = v7;
    }

    [MEMORY[0x1E696ACD8] deactivateConstraints:*(&self->super.super.super.isa + *v4)];
    [MEMORY[0x1E696ACD8] activateConstraints:*(&self->super.super.super.isa + *v3)];
  }
}

- (void)_dismissModule
{
  privateBrowsingExplanationDismissHandler = [(WBSStartPageBanner *)self->_banner privateBrowsingExplanationDismissHandler];
  if (privateBrowsingExplanationDismissHandler)
  {
    v3 = privateBrowsingExplanationDismissHandler;
    privateBrowsingExplanationDismissHandler[2]();
    privateBrowsingExplanationDismissHandler = v3;
  }
}

- (void)_setUpExplanationItemCollectionViewIfNeeded
{
  if (![(WBSStartPageBanner *)self->_banner privateBrowsingExplanationState])
  {
    v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
    [(SFPrivateBrowsingExplanationModuleContentView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [objc_alloc(MEMORY[0x1E69DC808]) initWithSectionProvider:&__block_literal_global_242];
    v13 = [v3 initWithFrame:v12 collectionViewLayout:{v5, v7, v9, v11}];
    explanationItemCollectionView = self->_explanationItemCollectionView;
    self->_explanationItemCollectionView = v13;

    [(UICollectionView *)self->_explanationItemCollectionView setAllowsSelection:0];
    [(UICollectionView *)self->_explanationItemCollectionView setClipsToBounds:0];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __92__SFPrivateBrowsingExplanationModuleContentView__setUpExplanationItemCollectionViewIfNeeded__block_invoke;
    v23[3] = &unk_1E721B360;
    v23[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v23];
    [(UICollectionView *)self->_explanationItemCollectionView setScrollEnabled:0];
    [(UICollectionView *)self->_explanationItemCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFPrivateBrowsingExplanationModuleContentView *)self addSubview:self->_explanationItemCollectionView];
    v15 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_79];
    v16 = objc_alloc(MEMORY[0x1E69DC820]);
    v17 = self->_explanationItemCollectionView;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __92__SFPrivateBrowsingExplanationModuleContentView__setUpExplanationItemCollectionViewIfNeeded__block_invoke_3;
    v21[3] = &unk_1E721C4C0;
    v22 = v15;
    v18 = v15;
    v19 = [v16 initWithCollectionView:v17 cellProvider:v21];
    explanationItemCollectionViewDataSource = self->_explanationItemCollectionViewDataSource;
    self->_explanationItemCollectionViewDataSource = v19;
  }
}

@end