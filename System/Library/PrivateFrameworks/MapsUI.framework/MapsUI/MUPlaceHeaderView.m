@interface MUPlaceHeaderView
- (MUPlaceHeaderView)initWithViewModel:(id)a3 coverPhotoOptions:(id)a4 trailingConstraintProvider:(id)a5 paddingConstraintProvider:(id)a6;
- (MUPlaceHeaderViewDelegate)delegate;
- (double)_expansionProgress;
- (double)_labelHeights;
- (double)_titlePadding;
- (double)_trailingConstraint;
- (double)_trailingPadding;
- (double)heightForContentAboveTitle;
- (double)topToTitleSpacing;
- (id)_containmentString;
- (id)_verifiedAttributedString;
- (void)_contentSizeDidChange;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)_shareButtonPressed;
- (void)_tappedEnclosingPlace;
- (void)_updateAppearance;
- (void)_updateContainmentLineWithAttributedString;
- (void)_updateCoverPhoto;
- (void)_updateHeroImage;
- (void)_updateLogo;
- (void)_updateTopToTitlePaddings;
- (void)_updateWithTransitionController:(id)a3;
- (void)beginAnimatingActivityIndicator;
- (void)dealloc;
- (void)endAnimatingActivityIndicatorWithError:(id)a3;
- (void)hideThirdTitle:(BOOL)a3;
- (void)layoutSubviews;
- (void)reloadSecondaryLabel;
- (void)reloadTitleLabelFont;
- (void)reloadTitleLabelLines;
- (void)reloadTitleLabelMarquee;
- (void)reloadTitleLabelPadding;
- (void)reloadTitleLabels;
- (void)setSuppressContainmentTap:(BOOL)a3;
- (void)setVerifiedBusinessHeaderExpansionProgress:(double)a3;
- (void)setViewModel:(id)a3;
@end

@implementation MUPlaceHeaderView

- (MUPlaceHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateHeroImage
{
  objc_initWeak(&location, self);
  viewModel = self->_viewModel;
  v4 = [(MUPlaceHeaderView *)self traitCollection];
  [v4 displayScale];
  v6 = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MUPlaceHeaderView__updateHeroImage__block_invoke;
  v7[3] = &unk_1E82190C0;
  objc_copyWeak(&v8, &location);
  [(MUPlaceHeaderViewModel *)viewModel loadHeroImageWithFrameSize:v7 displayScale:86.0 completion:86.0, v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __37__MUPlaceHeaderView__updateHeroImage__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (!a3 && WeakRetained)
  {
    [WeakRetained[51] setImage:v7 animated:1];
  }
}

- (void)_updateLogo
{
  objc_initWeak(&location, self);
  viewModel = self->_viewModel;
  v4 = self;
  if (MUIdiomInTraitEnvironment(v4) == 5)
  {
    v5 = 56.0;
  }

  else
  {
    v5 = 72.0;
  }

  v6 = v4;
  if (MUIdiomInTraitEnvironment(v6) == 5)
  {
    v7 = 56.0;
  }

  else
  {
    v7 = 72.0;
  }

  v8 = [(MUPlaceHeaderView *)v6 traitCollection];
  [v8 displayScale];
  v10 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__MUPlaceHeaderView__updateLogo__block_invoke;
  v11[3] = &unk_1E82190C0;
  objc_copyWeak(&v12, &location);
  [(MUPlaceHeaderViewModel *)viewModel loadVerifiedLogoImageWithFrameSize:v11 displayScale:v5 completion:v7, v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __32__MUPlaceHeaderView__updateLogo__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && v6 && !a3)
  {
    [WeakRetained[53] setImage:v6];
  }
}

- (void)_updateCoverPhoto
{
  [(MUPlaceHeaderView *)self frame];
  v4 = v3;
  objc_initWeak(&location, self);
  viewModel = self->_viewModel;
  v6 = [(MUPlaceHeaderView *)self traitCollection];
  [v6 displayScale];
  v8 = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__MUPlaceHeaderView__updateCoverPhoto__block_invoke;
  v9[3] = &unk_1E82190C0;
  objc_copyWeak(&v10, &location);
  [(MUPlaceHeaderViewModel *)viewModel loadCoverPhotoWithFrameSize:v9 displayScale:v4 completion:v4, v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __38__MUPlaceHeaderView__updateCoverPhoto__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && v6 && !a3)
  {
    [WeakRetained[52] setImage:v6];
  }
}

- (void)layoutSubviews
{
  v3 = [(MUPlaceHeaderView *)self delegate];
  v4 = [v3 headerViewShouldLayoutSubviews:self];

  if (v4)
  {
    v10.receiver = self;
    v10.super_class = MUPlaceHeaderView;
    [(MUPlaceHeaderView *)&v10 layoutSubviews];
    [(MUPlaceHeaderView *)self bounds];
    if (!CGRectEqualToRect(v11, self->_cachedBounds))
    {
      [(MUPlaceHeaderView *)self bounds];
      self->_cachedBounds.origin.x = v5;
      self->_cachedBounds.origin.y = v6;
      self->_cachedBounds.size.width = v7;
      self->_cachedBounds.size.height = v8;
      if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto]|| [(MUPlaceHeaderViewModel *)self->_viewModel supportsLogo])
      {
        coverPhotoTransitionController = self->_coverPhotoTransitionController;
        [(MUPlaceHeaderView *)self frame];
        [(MUPlaceCoverPhotoTransitionController *)coverPhotoTransitionController coverPhotoHeightForProposedWidth:CGRectGetWidth(v12)];
        [(MUPlaceHeaderView *)self setVerifiedBusinessHeaderHeight:?];
        [(MUPlaceHeaderView *)self _updateCoverPhoto];
      }

      [(MUPlaceHeaderView *)self reloadTrailingConstraint];
    }
  }
}

- (void)_shareButtonPressed
{
  v6 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v6 setSourceView:self->_shareButton];
  v3 = [(MUPlaceHeaderView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUPlaceHeaderView *)self delegate];
    [v5 headerView:self didSelectShareWithPresentationOptions:v6];
  }
}

- (void)endAnimatingActivityIndicatorWithError:(id)a3
{
  [(MULinkView *)self->_containmentLabel setAlpha:a3, 1.0];
  containmentLabel = self->_containmentLabel;

  [(MULinkView *)containmentLabel setUserInteractionEnabled:1];
}

- (void)beginAnimatingActivityIndicator
{
  [(MULinkView *)self->_containmentLabel setAlpha:0.3];
  containmentLabel = self->_containmentLabel;

  [(MULinkView *)containmentLabel setUserInteractionEnabled:0];
}

- (double)_expansionProgress
{
  if (!self->_coverPhotoTransitionController)
  {
    return self->_cardExpansionProgress;
  }

  [(MUPlaceCoverPhotoTransitionController *)self->_coverPhotoTransitionController expansionProgress];
  return result;
}

- (double)_titlePadding
{
  paddingConstraintProvider = self->_paddingConstraintProvider;
  if (!paddingConstraintProvider)
  {
    return 0.0;
  }

  paddingConstraintProvider[2]();
  return result;
}

- (double)_trailingConstraint
{
  trailingConstraintProvider = self->_trailingConstraintProvider;
  if (!trailingConstraintProvider)
  {
    return 0.0;
  }

  trailingConstraintProvider[2]();
  return result;
}

- (double)_trailingPadding
{
  [(MUPlaceHeaderView *)self _titlePadding];
  v4 = v3;
  [(MUPlaceHeaderView *)self _trailingConstraint];
  v6 = v5;
  [(MUPlaceHeaderView *)self _expansionProgress];
  return v4 + (1.0 - v7) * v6;
}

- (double)topToTitleSpacing
{
  v3 = [(MUPlaceHeaderViewModel *)self->_viewModel isDeveloperPlaceCard];
  result = 26.0;
  if (!v3)
  {
    [(MUPlaceHeaderView *)self _labelHeights];
    v6 = v5;
    [objc_opt_class() minimalModeHeight];
    return (v7 - v6) * 0.5;
  }

  return result;
}

- (double)_labelHeights
{
  v3 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB958]];
  [v3 lineHeight];
  v5 = v4;

  if (self->_containmentLabel)
  {
    v6 = [(MUPlaceHeaderView *)self _containmentString];
    v7 = [v6 length];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  if (self->_secondaryTitleLabel)
  {
    v8 = [(MUPlaceHeaderViewModel *)self->_viewModel placeSecondaryName];
    v9 = [v8 length];

    if (v9)
    {
LABEL_5:
      v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB980]];
      [v10 lineHeight];
      v5 = v5 + 1.0 + v11;
    }
  }

  return v5;
}

- (id)_containmentString
{
  viewModel = self->_viewModel;
  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB980]];
  v5 = +[MUInfoCardStyle secondaryTextColor];
  v6 = +[MUInfoCardStyle secondaryTextColor];
  v7 = [v6 colorWithAlphaComponent:0.800000012];
  [(MUPlaceHeaderView *)self _expansionProgress];
  v8 = [(MUPlaceHeaderViewModel *)viewModel enclosingPlaceAttributedStringWithFont:v4 labelColor:v5 tokenColor:v7 showContainmentPercent:?];

  return v8;
}

- (void)hideThirdTitle:(BOOL)a3
{
  v3 = a3;
  if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsContactAddressDescription])
  {
    v5 = [(UILabel *)self->_contactAddressDescription attributedText];
    v6 = [v5 length];

    contactAddressDescription = self->_contactAddressDescription;
    if (v6)
    {
      v8 = !v3;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = [(UILabel *)contactAddressDescription attributedText];
      v10 = [v9 length];

      if (v10)
      {
        [(UILabel *)self->_contactAddressDescription alpha];
        if (v11 != 1.0)
        {
          [(UILabel *)self->_contactAddressDescription setHidden:0];
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __36__MUPlaceHeaderView_hideThirdTitle___block_invoke_3;
          v13[3] = &unk_1E821A268;
          v13[4] = self;
          [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:0.3];
        }
      }
    }

    else
    {
      [(UILabel *)contactAddressDescription alpha];
      if (v12 != 0.0)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __36__MUPlaceHeaderView_hideThirdTitle___block_invoke;
        v15[3] = &unk_1E821A268;
        v15[4] = self;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __36__MUPlaceHeaderView_hideThirdTitle___block_invoke_2;
        v14[3] = &unk_1E821A1F0;
        v14[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v15 animations:v14 completion:0.3];
      }
    }
  }
}

uint64_t __36__MUPlaceHeaderView_hideThirdTitle___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 480) setHidden:1];
  }

  return result;
}

- (void)setVerifiedBusinessHeaderExpansionProgress:(double)a3
{
  [(MUPlaceCoverPhotoTransitionController *)self->_coverPhotoTransitionController setExpansionProgress:?];
  self->_cardExpansionProgress = a3;
  if (!self->_coverPhotoTransitionController)
  {

    [(MUPlaceHeaderView *)self reloadTitleLabels];
  }
}

- (double)heightForContentAboveTitle
{
  if (self->_coverPhotoTransitionController)
  {

    [(MUPlaceHeaderView *)self verifiedBusinessHeaderHeight];
  }

  else
  {
    [(MUPlaceHeaderView *)self _trailingConstraint];
    v5 = v4;
    [(MUPlaceHeaderView *)self _titlePadding];
    return v6 + v5;
  }

  return result;
}

- (void)reloadSecondaryLabel
{
  if (self->_secondaryTitleLabel)
  {
    [(MUPlaceHeaderView *)self _expansionProgress];
    if (v3 <= 0.0)
    {
      v8 = [(MUPlaceHeaderView *)self _containmentString];
      v9 = [v8 length];

      if (v9)
      {
        [(UILabel *)self->_secondaryTitleLabel setHidden:1];
        stackLayout = self->_stackLayout;
        secondaryTitleLabel = self->_secondaryTitleLabel;

        [(MUStackLayout *)stackLayout removeArrangedLayoutItem:secondaryTitleLabel];
      }
    }

    else
    {
      [(UILabel *)self->_secondaryTitleLabel setHidden:0];
      v4 = [(MUStackLayout *)self->_stackLayout arrangedLayoutItems];
      v5 = [v4 containsObject:self->_containmentLabel];

      v6 = self->_stackLayout;
      if (v5)
      {
        [(MUStackLayout *)v6 removeArrangedLayoutItem:self->_containmentLabel];
        [(MUStackLayout *)self->_stackLayout addArrangedLayoutItem:self->_secondaryTitleLabel];
        v6 = self->_stackLayout;
        containmentLabel = self->_containmentLabel;
      }

      else
      {
        containmentLabel = self->_secondaryTitleLabel;
      }

      [(MUStackLayout *)v6 addArrangedLayoutItem:containmentLabel];
    }
  }
}

- (void)reloadTitleLabelMarquee
{
  [(MUPlaceHeaderView *)self _expansionProgress];
  v4 = v3 <= 0.0;
  v5 = 60.0;
  if (!v4)
  {
    v5 = -1.0;
  }

  titleLabel = self->_titleLabel;

  [(MUFadingMarqueeLabel *)titleLabel setMarqueeInterval:v5];
}

- (void)reloadTitleLabelLines
{
  [(MUPlaceHeaderView *)self _expansionProgress];
  v4 = vcvtmd_s64_f64(v3 * 3.0);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  if (v4 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  titleLabel = self->_titleLabel;

  [(MUFadingMarqueeLabel *)titleLabel setNumberOfLines:v5];
}

- (void)reloadTitleLabelPadding
{
  coverPhotoTransitionController = self->_coverPhotoTransitionController;
  if (coverPhotoTransitionController)
  {
    [(MUPlaceCoverPhotoTransitionController *)coverPhotoTransitionController interpolatedCoverPhotoToTitleSpacing];
    v5 = v4;
  }

  else
  {
    [(MUPlaceHeaderView *)self _trailingConstraint];
    v7 = v6;
    [(MUPlaceHeaderView *)self _titlePadding];
    v9 = v8 + v7;
    [(MUPlaceHeaderView *)self topToTitleSpacing];
    v11 = fmax(self->_cardExpansionProgress * (v9 - v10), 0.0);
    [(MUPlaceHeaderView *)self topToTitleSpacing];
    v5 = v11 + v12;
  }

  stackLayout = self->_stackLayout;
  [(MUPlaceHeaderView *)self _leadingPadding];
  v15 = v14;
  [(MUPlaceHeaderView *)self _trailingPadding];
  titleLabel = self->_titleLabel;

  [(MUStackLayout *)stackLayout setPadding:titleLabel forArrangedLayoutItem:v5, v15, 0.0, v16];
}

- (void)reloadTitleLabelFont
{
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB958]];
  [(MUPlaceHeaderView *)self _expansionProgress];
  v4 = [v5 _fontScaledByScaleFactor:v3 * 0.400000006 + 1.0];
  [(MUFadingLabel *)self->_titleLabel setFont:v4];
}

- (void)reloadTitleLabels
{
  [(MUPlaceHeaderView *)self reloadTitleLabelFont];
  [(MUPlaceHeaderView *)self reloadTitleLabelPadding];
  [(MUPlaceHeaderView *)self reloadTitleLabelLines];
  [(MUPlaceHeaderView *)self reloadTitleLabelMarquee];
  [(MUPlaceHeaderView *)self reloadSecondaryLabel];

  [(MUPlaceHeaderView *)self _updateContainmentLineWithAttributedString];
}

- (void)setSuppressContainmentTap:(BOOL)a3
{
  if (self->_suppressContainmentTap != a3)
  {
    self->_suppressContainmentTap = a3;
    [(MULinkView *)self->_containmentLabel setUserInteractionEnabled:!a3];
  }
}

- (void)_tappedEnclosingPlace
{
  if (![(MUPlaceHeaderView *)self suppressContainmentTap])
  {
    objc_initWeak(&location, self);
    [(MUPlaceHeaderView *)self beginAnimatingActivityIndicator];
    viewModel = self->_viewModel;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __42__MUPlaceHeaderView__tappedEnclosingPlace__block_invoke;
    v4[3] = &unk_1E8219D48;
    objc_copyWeak(&v5, &location);
    [(MUPlaceHeaderViewModel *)viewModel refineEnclosingMapItemWithCompletion:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __42__MUPlaceHeaderView__tappedEnclosingPlace__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && v7 && !a3)
  {
    v6 = [WeakRetained delegate];
    [v6 headerView:WeakRetained didSelectEnclosingMapItem:v7];

    [WeakRetained endAnimatingActivityIndicatorWithError:0];
  }
}

- (void)_contentSizeDidChange
{
  [(MUPlaceHeaderView *)self reloadTitleLabelFont];
  v3 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB980]];
  [(UILabel *)self->_secondaryTitleLabel setFont:v3];

  v4 = [(MUPlaceHeaderView *)self _verifiedAttributedString];
  [(UILabel *)self->_verifiedLabel setAttributedText:v4];

  v5 = [(MUPlaceHeaderViewModel *)self->_viewModel addressDescriptionForContact];
  [(UILabel *)self->_contactAddressDescription setAttributedText:v5];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (([(MUPlaceHeaderViewModel *)self->_viewModel isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MUPlaceHeaderView *)self _updateAppearance];
  }
}

- (void)_updateTopToTitlePaddings
{
  [(MUPlaceHeaderView *)self topToTitleSpacing];
  v4 = v3;
  self->_headerMetrics.topToTitleSpacing = v3;
  v5 = [(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto];
  v6 = 8.0;
  if (v5)
  {
    v7 = 8.0;
  }

  else
  {
    v7 = 20.0;
  }

  if (v5)
  {
    v8 = 8.0;
  }

  else
  {
    v8 = v4;
  }

  v9 = 0.0;
  [(MUCardButton *)self->_shareButton setDirectionalLayoutMargins:v8, 0.0, 0.0, v7];
  [(MUStackLayout *)self->_stackLayout setPadding:self->_heroImageView forArrangedLayoutItem:v4, 20.0, 0.0, 20.0];
  v10 = [(MUPlaceCoverPhotoOptions *)self->_coverPhotoOptions insetsCoverPhoto];
  v11 = 8.0;
  if (!v10)
  {
    v4 = *MEMORY[0x1E69DC5C0];
    v6 = *(MEMORY[0x1E69DC5C0] + 8);
    v9 = *(MEMORY[0x1E69DC5C0] + 16);
    v11 = *(MEMORY[0x1E69DC5C0] + 24);
  }

  [(MUEdgeLayout *)self->_coverPhotoEdgeLayout setInsets:v4, v6, v9, v11];
  v12 = *&self->_headerMetrics.coverPhotoMetrics.coverPhotoContainerToTitleSpacing;
  v14[2] = *&self->_headerMetrics.coverPhotoMetrics.logoSize.height;
  v14[3] = v12;
  endingLogoAlphaTransitionValue = self->_headerMetrics.coverPhotoMetrics.endingLogoAlphaTransitionValue;
  v13 = *&self->_headerMetrics.coverPhotoMetrics.hasLogo;
  v14[0] = *&self->_headerMetrics.topToTitleSpacing;
  v14[1] = v13;
  [(MUPlaceCoverPhotoTransitionController *)self->_coverPhotoTransitionController setMetrics:v14];
}

- (void)_updateContainmentLineWithAttributedString
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = [(MUPlaceHeaderViewModel *)self->_viewModel placeSecondaryName];
  if (![v3 length])
  {
    goto LABEL_8;
  }

  v4 = [(MUPlaceHeaderView *)self _containmentString];
  if (![v4 length])
  {

LABEL_8:
    goto LABEL_9;
  }

  [(MUPlaceHeaderView *)self _expansionProgress];
  v6 = v5;

  if (v6 == 0.0)
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    v8 = [(MUPlaceHeaderViewModel *)self->_viewModel placeSecondaryName];
    v22[0] = *MEMORY[0x1E69DB650];
    v9 = +[MUInfoCardStyle secondaryTextColor];
    v23[0] = v9;
    v22[1] = *MEMORY[0x1E69DB648];
    v10 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB980]];
    v23[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v12 = [v7 initWithString:v8 attributes:v11];
    [(MULinkView *)self->_containmentLabel setAttributedText:v12];

    secondaryContainmentTransitionTimer = self->_secondaryContainmentTransitionTimer;
    if (secondaryContainmentTransitionTimer)
    {
      dispatch_source_cancel(secondaryContainmentTransitionTimer);
    }

    objc_initWeak(&location, self);
    v14 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v20, &location);
    v15 = geo_dispatch_timer_create_on_queue();
    v16 = self->_secondaryContainmentTransitionTimer;
    self->_secondaryContainmentTransitionTimer = v15;

    dispatch_activate(self->_secondaryContainmentTransitionTimer);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

LABEL_9:
  v19 = [(MUPlaceHeaderView *)self _containmentString];
  [(MULinkView *)self->_containmentLabel setAttributedText:v19];
  v18 = *MEMORY[0x1E69E9840];
}

void __63__MUPlaceHeaderView__updateContainmentLineWithAttributedString__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[57];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __63__MUPlaceHeaderView__updateContainmentLineWithAttributedString__block_invoke_2;
    v3[3] = &unk_1E821A268;
    v3[4] = WeakRetained;
    [MEMORY[0x1E69DD250] transitionWithView:v2 duration:5242880 options:v3 animations:0 completion:1.0];
  }
}

void __63__MUPlaceHeaderView__updateContainmentLineWithAttributedString__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _containmentString];
  [*(*(a1 + 32) + 456) setAttributedText:v2];
}

- (void)_updateAppearance
{
  v31[1] = *MEMORY[0x1E69E9840];
  if ([(MUPlaceHeaderViewModel *)self->_viewModel hasHeroImage])
  {
    [(MUPlaceHeaderView *)self _updateHeroImage];
  }

  if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto])
  {
    [(MUPlaceHeaderView *)self _updateCoverPhoto];
  }

  if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsLogo])
  {
    [(MUPlaceHeaderView *)self _updateLogo];
  }

  v3 = [(MUPlaceHeaderViewModel *)self->_viewModel placeName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = [(MUPlaceHeaderViewModel *)self->_viewModel placeName];
    v8 = [v6 initWithString:v7];

    [v5 addObject:v8];
    if ([(MUPlaceHeaderViewModel *)self->_viewModel isClaimed])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v5 addObject:?];
      v25 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.seal.fill"];
      v9 = MEMORY[0x1E69DCAD8];
      v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
      v11 = [v10 _mapkit_fontWithSymbolicTraits:2];
      v12 = [v9 configurationWithFont:v11 scale:1];
      v13 = [v26 imageWithConfiguration:v12];
      v14 = [v13 imageWithRenderingMode:2];
      [v25 setImage:v14];

      v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v25];
      v16 = [v15 mutableCopy];

      v30 = *MEMORY[0x1E69DB650];
      v17 = [MEMORY[0x1E69DC888] systemBlueColor];
      v31[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      [v16 addAttributes:v18 range:{0, objc_msgSend(v16, "length")}];

      [v5 addObject:v16];
    }

    v19 = [v5 copy];
    v20 = [MapsUILayout buildAttributedDisplayStringForComponents:v19];
    [(MUFadingMarqueeLabel *)self->_titleLabel setAttributedText:v20];
  }

  v21 = [(MUPlaceHeaderViewModel *)self->_viewModel placeSecondaryName];
  [(UILabel *)self->_secondaryTitleLabel setText:v21];

  if ([(MUPlaceHeaderViewModel *)self->_viewModel hasInitialData])
  {
    [(MUPlaceHeaderView *)self _updateContainmentLineWithAttributedString];
  }

  else if ([(MUPlaceHeaderViewModel *)self->_viewModel hasEnclosingPlace])
  {
    objc_initWeak(&location, self);
    viewModel = self->_viewModel;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __38__MUPlaceHeaderView__updateAppearance__block_invoke;
    v27[3] = &unk_1E8219D48;
    objc_copyWeak(&v28, &location);
    [(MUPlaceHeaderViewModel *)viewModel refineEnclosingMapItemWithCompletion:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __38__MUPlaceHeaderView__updateAppearance__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateContainmentLineWithAttributedString];
    [v2 reloadTitleLabels];
    [v2 _updateTopToTitlePaddings];
    WeakRetained = v2;
  }
}

- (void)_setupConstraints
{
  v75[3] = *MEMORY[0x1E69E9840];
  v3 = [[MUStackLayout alloc] initWithContainer:self axis:1];
  [(MUStackLayout *)v3 setAlignment:2];
  [(MUStackLayout *)v3 setAlignmentBoundsContent:1];
  objc_storeStrong(&self->_stackLayout, v3);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v4 addObject:v3];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_heroImageView)
  {
    [(MUStackLayout *)v3 addArrangedLayoutItem:?];
    [(MUPlaceHeaderView *)self topToTitleSpacing];
    [(MUStackLayout *)v3 setPadding:self->_heroImageView forArrangedLayoutItem:?];
    v6 = [[MUSizeLayout alloc] initWithItem:self->_heroImageView size:86.0, 86.0];
    [v4 addObject:v6];
  }

  v74 = v4;
  v73 = v3;
  if (self->_verifiedBusinessContainerView)
  {
    [(MUStackLayout *)v3 addArrangedLayoutItem:?];
    [(MUStackLayout *)v3 setAlignment:0 forArrangedLayoutItem:self->_verifiedBusinessContainerView];
    if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsLogo])
    {
      v7 = [MUSizeLayout alloc];
      verifiedBusinessLogoImageView = self->_verifiedBusinessLogoImageView;
      if (MUIdiomInTraitEnvironment(self) == 5)
      {
        v9 = 56.0;
      }

      else
      {
        v9 = 72.0;
      }

      if (MUIdiomInTraitEnvironment(self) == 5)
      {
        v10 = 56.0;
      }

      else
      {
        v10 = 72.0;
      }

      v11 = [(MUSizeLayout *)v7 initWithItem:verifiedBusinessLogoImageView size:v9, v10];
      LODWORD(v12) = 1148829696;
      [(MUSizeLayout *)v11 setPriority:v12];
      [v4 addObject:v11];
      verifiedBusinessCoverPhotoImageView = self->_verifiedBusinessCoverPhotoImageView;
      v14 = [(MUVerifiedLogoImageView *)self->_verifiedBusinessLogoImageView centerXAnchor];
      if (verifiedBusinessCoverPhotoImageView)
      {
        v15 = [(MUPlaceHeaderCoverPhotoView *)self->_verifiedBusinessCoverPhotoImageView centerXAnchor];
        v16 = [v14 constraintEqualToAnchor:v15];
        [v5 addObject:v16];

        v17 = [(MUVerifiedLogoImageView *)self->_verifiedBusinessLogoImageView centerYAnchor];
        v18 = [(MUPlaceHeaderCoverPhotoView *)self->_verifiedBusinessCoverPhotoImageView centerYAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];
      }

      else
      {
        v23 = [(UIView *)self->_verifiedBusinessContainerView centerXAnchor];
        v24 = [v14 constraintEqualToAnchor:v23];
        [v5 addObject:v24];

        v17 = [(MUVerifiedLogoImageView *)self->_verifiedBusinessLogoImageView topAnchor];
        v18 = [(UIView *)self->_verifiedBusinessContainerView topAnchor];
        v25 = MUIdiomInTraitEnvironment(self);
        v26 = 32.0;
        if (v25 == 5)
        {
          v26 = 16.0;
        }

        v19 = [v17 constraintEqualToAnchor:v18 constant:v26];
      }

      v27 = v19;
      [v5 addObject:v19];

      v22 = 11;
      v4 = v74;
    }

    else
    {
      v22 = 15;
    }

    if ([(MUPlaceCoverPhotoOptions *)self->_coverPhotoOptions insetsCoverPhoto])
    {
      [(MUPlaceHeaderView *)self topToTitleSpacing];
      v29 = v28;
      v30 = 0.0;
      v31 = 8.0;
      v32 = 8.0;
    }

    else
    {
      v29 = *MEMORY[0x1E69DC5C0];
      v32 = *(MEMORY[0x1E69DC5C0] + 8);
      v30 = *(MEMORY[0x1E69DC5C0] + 16);
      v31 = *(MEMORY[0x1E69DC5C0] + 24);
    }

    if (self->_verifiedBusinessCoverPhotoImageView)
    {
      v33 = [MUEdgeLayout alloc];
      LODWORD(v34) = 1148846080;
      v35 = [(MUEdgeLayout *)v33 initWithItem:self->_verifiedBusinessCoverPhotoImageView container:self->_verifiedBusinessContainerView insets:v22 edges:v29 priority:v32, v30, v31, v34];
      coverPhotoEdgeLayout = self->_coverPhotoEdgeLayout;
      self->_coverPhotoEdgeLayout = v35;

      [v4 addObject:self->_coverPhotoEdgeLayout];
    }

    coverPhotoTransitionController = self->_coverPhotoTransitionController;
    [(MUPlaceHeaderView *)self frame];
    [(MUPlaceCoverPhotoTransitionController *)coverPhotoTransitionController coverPhotoHeightForProposedWidth:CGRectGetWidth(v76)];
    v39 = v38;
    v40 = [(UIView *)self->_verifiedBusinessContainerView heightAnchor];
    v41 = [v40 constraintEqualToConstant:v39];
    verifiedBusinessHeaderHeightConstraint = self->_verifiedBusinessHeaderHeightConstraint;
    self->_verifiedBusinessHeaderHeightConstraint = v41;

    [v5 addObject:self->_verifiedBusinessHeaderHeightConstraint];
    v20 = [(UILayoutGuide *)self->_topToTitleLayoutGuide topAnchor];
    v21 = [(UIView *)self->_verifiedBusinessContainerView bottomAnchor];
  }

  else
  {
    v20 = [(UILayoutGuide *)self->_topToTitleLayoutGuide topAnchor];
    v21 = [(MUPlaceHeaderView *)self topAnchor];
  }

  v43 = v21;
  v44 = [v20 constraintEqualToAnchor:v21];
  [v5 addObject:v44];

  v72 = [(UILayoutGuide *)self->_topToTitleLayoutGuide leadingAnchor];
  v71 = [(MUPlaceHeaderView *)self leadingAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v75[0] = v70;
  v45 = [(UILayoutGuide *)self->_topToTitleLayoutGuide trailingAnchor];
  v46 = [(MUFadingMarqueeLabel *)self->_titleLabel trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];
  v75[1] = v47;
  v48 = [(UILayoutGuide *)self->_topToTitleLayoutGuide bottomAnchor];
  v49 = [(MUFadingMarqueeLabel *)self->_titleLabel bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];
  v75[2] = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
  [v5 addObjectsFromArray:v51];

  if (self->_titleLabel)
  {
    [(MUStackLayout *)v73 addArrangedLayoutItem:?];
    [(MUPlaceHeaderView *)self topToTitleSpacing];
    v53 = v52;
    [(MUPlaceHeaderView *)self _leadingPadding];
    v55 = v54;
    [(MUPlaceHeaderView *)self _trailingPadding];
    [(MUStackLayout *)v73 setPadding:self->_titleLabel forArrangedLayoutItem:v53, v55, 0.0, v56];
  }

  if (self->_secondaryTitleLabel)
  {
    [(MUStackLayout *)v73 addArrangedLayoutItem:?];
    [(MUStackLayout *)v73 setPadding:self->_secondaryTitleLabel forArrangedLayoutItem:1.0, 20.0, 0.0, 20.0];
  }

  v57 = [(MUPlaceHeaderView *)self _containmentString];
  v58 = v57;
  if (self->_containmentLabel && [v57 length])
  {
    [(MUStackLayout *)v73 addArrangedLayoutItem:self->_containmentLabel];
    [(MUStackLayout *)v73 setPadding:self->_containmentLabel forArrangedLayoutItem:1.0, 20.0, 0.0, 20.0];
  }

  if (self->_transitInfoLabelView)
  {
    [(MUStackLayout *)v73 addArrangedLayoutItem:?];
    [(MUStackLayout *)v73 setPadding:self->_transitInfoLabelView forArrangedLayoutItem:1.0, 20.0, 0.0, 20.0];
  }

  if (self->_verifiedLabel)
  {
    [(MUStackLayout *)v73 addArrangedLayoutItem:?];
    [(MUStackLayout *)v73 setPadding:self->_verifiedLabel forArrangedLayoutItem:1.0, 20.0, 0.0, 20.0];
  }

  if (self->_contactAddressDescription)
  {
    [(MUStackLayout *)v73 addArrangedLayoutItem:?];
    [(MUStackLayout *)v73 setPadding:self->_contactAddressDescription forArrangedLayoutItem:1.0, 20.0, 0.0, 20.0];
  }

  if ([(MUPlaceCoverPhotoOptions *)self->_coverPhotoOptions showShareButton])
  {
    v59 = [(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto];
    v60 = self;
    if (v59)
    {
      v60 = self->_verifiedBusinessCoverPhotoImageView;
    }

    v61 = v60;
    v62 = [[MUEdgeLayout alloc] initWithItem:self->_shareButton container:v61];
    [(MUEdgeLayout *)v62 setEdges:9];
    [v74 addObject:v62];
    if (self->_titleLabel)
    {
      v63 = [(MUCardButton *)self->_shareButton leadingAnchor];
      v64 = [(MUFadingMarqueeLabel *)self->_titleLabel trailingAnchor];
      v65 = [v63 constraintGreaterThanOrEqualToAnchor:v64];
      [v5 addObject:v65];
    }
  }

  v66 = MEMORY[0x1E696ACD8];
  v67 = [v74 copy];
  v68 = [v5 copy];
  [v66 _mapsui_activateLayouts:v67 constraints:v68];

  v69 = *MEMORY[0x1E69E9840];
}

- (id)_verifiedAttributedString
{
  v26[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.seal.fill"];
  v5 = MEMORY[0x1E69DCAD8];
  v6 = *MEMORY[0x1E69DDD80];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v8 = [v5 configurationWithFont:v7];
  v9 = [v4 imageWithSymbolConfiguration:v8];
  v10 = [v9 imageWithRenderingMode:2];
  [v3 setImage:v10];

  v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v3];
  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  v14 = _MULocalizedStringFromThisBundle(@"Verified [Brand]");
  v15 = [v13 initWithString:v14];

  v26[0] = v11;
  v26[1] = v12;
  v26[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v17 = [MapsUILayout buildAttributedDisplayStringForComponents:v16 forContainingView:self];
  v18 = [v17 mutableCopy];

  v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:{v6, *MEMORY[0x1E69DB648]}];
  v25 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v18 addAttributes:v20 range:{0, objc_msgSend(v18, "length")}];

  v21 = [v18 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)_updateWithTransitionController:(id)a3
{
  v4 = a3;
  -[MUVerifiedLogoImageView setHidden:](self->_verifiedBusinessLogoImageView, "setHidden:", [v4 hideLogo]);
  [v4 logoImageAlpha];
  [(MUVerifiedLogoImageView *)self->_verifiedBusinessLogoImageView setAlpha:?];
  [v4 coverPhotoAlpha];
  [(MUPlaceHeaderCoverPhotoView *)self->_verifiedBusinessCoverPhotoImageView setAlpha:?];
  [v4 expansionProgress];
  [(MUVerifiedLogoImageView *)self->_verifiedBusinessLogoImageView setCardExpansionProgress:?];
  [v4 expansionProgress];
  [(MUPlaceHeaderCoverPhotoView *)self->_verifiedBusinessCoverPhotoImageView setCardExpansionProgress:?];
  [(MUPlaceHeaderView *)self frame];
  [v4 coverPhotoHeightForProposedWidth:CGRectGetWidth(v8)];
  v6 = v5;

  [(MUPlaceHeaderView *)self setVerifiedBusinessHeaderHeight:v6];

  [(MUPlaceHeaderView *)self reloadTitleLabels];
}

- (void)_setupSubviews
{
  v3 = [(MUPlaceHeaderViewModel *)self->_viewModel hasHeroImage];
  v4 = MEMORY[0x1E695F058];
  if (v3)
  {
    v5 = [[MUImageView alloc] initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    heroImageView = self->_heroImageView;
    self->_heroImageView = v5;

    [(MUImageView *)self->_heroImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = +[MUInfoCardStyle imageTileBackgroundColor];
    [(MUImageView *)self->_heroImageView setBackgroundColor:v7];

    [(UIView *)self->_heroImageView _mapsui_setCardCorner];
    [(MUImageView *)self->_heroImageView setAccessibilityIdentifier:@"PlaceHeaderHeroImage"];
    [(MUPlaceHeaderView *)self addSubview:self->_heroImageView];
  }

  if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto]|| [(MUPlaceHeaderViewModel *)self->_viewModel supportsLogo])
  {
    [(MUPlaceHeaderView *)self topToTitleSpacing];
    v9 = v8;
    if (MUIdiomInTraitEnvironment(self) == 5)
    {
      v10 = 24.0;
    }

    else
    {
      v10 = 48.0;
    }

    if (MUIdiomInTraitEnvironment(self) == 5)
    {
      v11 = 12.0;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = [(MUPlaceHeaderViewModel *)self->_viewModel supportsLogo];
    if (MUIdiomInTraitEnvironment(self) == 5)
    {
      v13 = 56.0;
    }

    else
    {
      v13 = 72.0;
    }

    if (MUIdiomInTraitEnvironment(self) == 5)
    {
      v14 = 56.0;
    }

    else
    {
      v14 = 72.0;
    }

    GEOConfigGetDouble();
    v16 = v15;
    GEOConfigGetDouble();
    v18 = v17;
    v19 = [(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto];
    *&self->_headerMetrics.topToTitleSpacing = v9;
    self->_headerMetrics.coverPhotoMetrics.aspectRatio = 0.379487187;
    self->_headerMetrics.coverPhotoMetrics.hasLogo = v12;
    self->_headerMetrics.coverPhotoMetrics.hasCoverPhoto = v19;
    *(&self->_headerMetrics.coverPhotoMetrics.hasCoverPhoto + 1) = 0;
    *(&self->_headerMetrics.coverPhotoMetrics.hasCoverPhoto + 5) = 0;
    self->_headerMetrics.coverPhotoMetrics.logoSize.width = v13;
    self->_headerMetrics.coverPhotoMetrics.logoSize.height = v14;
    self->_headerMetrics.coverPhotoMetrics.coverPhotoBottomToLogoBottomSpacing = v11;
    self->_headerMetrics.coverPhotoMetrics.coverPhotoContainerToTitleSpacing = v10;
    self->_headerMetrics.coverPhotoMetrics.startingLogoAlphaTransitionValue = v16;
    self->_headerMetrics.coverPhotoMetrics.endingLogoAlphaTransitionValue = v18;
    objc_initWeak(location, self);
    v20 = [MUPlaceCoverPhotoTransitionController alloc];
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __35__MUPlaceHeaderView__setupSubviews__block_invoke;
    v89[3] = &unk_1E8219098;
    objc_copyWeak(&v90, location);
    from[0] = v9;
    from[1] = 0x3FD84984A0000000;
    v79 = v12;
    v80 = v19;
    v81 = 0;
    v82 = 0;
    v83 = v13;
    v84 = v14;
    v85 = v11;
    v86 = v10;
    v87 = v16;
    v88 = v18;
    v21 = [(MUPlaceCoverPhotoTransitionController *)v20 initWithMetrics:from updateHandler:v89];
    coverPhotoTransitionController = self->_coverPhotoTransitionController;
    self->_coverPhotoTransitionController = v21;

    v23 = objc_alloc(MEMORY[0x1E69DD250]);
    v24 = *v4;
    v25 = v4[1];
    v26 = v4[2];
    v27 = v4[3];
    v28 = [v23 initWithFrame:{*v4, v25, v26, v27}];
    verifiedBusinessContainerView = self->_verifiedBusinessContainerView;
    self->_verifiedBusinessContainerView = v28;

    [(UIView *)self->_verifiedBusinessContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_verifiedBusinessContainerView setClipsToBounds:0];
    [(MUPlaceHeaderView *)self addSubview:self->_verifiedBusinessContainerView];
    if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto])
    {
      v30 = [[MUPlaceHeaderCoverPhotoView alloc] initWithAspectRatio:0.379487187];
      verifiedBusinessCoverPhotoImageView = self->_verifiedBusinessCoverPhotoImageView;
      self->_verifiedBusinessCoverPhotoImageView = v30;

      [(MUPlaceHeaderCoverPhotoView *)self->_verifiedBusinessCoverPhotoImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v32 = [(MUPlaceHeaderViewModel *)self->_viewModel coverPhotoBackgroundColor];
      v33 = v32;
      if (!v32)
      {
        v33 = +[MUInfoCardStyle punchoutButtonPlatterColor];
      }

      [(MUPlaceHeaderCoverPhotoView *)self->_verifiedBusinessCoverPhotoImageView setBackgroundColor:v33];
      if (!v32)
      {
      }

      [(UIView *)self->_verifiedBusinessContainerView addSubview:self->_verifiedBusinessCoverPhotoImageView];
      if ([(MUPlaceCoverPhotoOptions *)self->_coverPhotoOptions insetsCoverPhoto])
      {
        [(UIView *)self->_verifiedBusinessCoverPhotoImageView _mapsui_setCardCorner];
      }
    }

    if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsLogo])
    {
      v34 = [[MUVerifiedLogoImageView alloc] initWithFrame:v24, v25, v26, v27];
      verifiedBusinessLogoImageView = self->_verifiedBusinessLogoImageView;
      self->_verifiedBusinessLogoImageView = v34;

      [(MUVerifiedLogoImageView *)self->_verifiedBusinessLogoImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v36 = [(MUVerifiedLogoImageView *)self->_verifiedBusinessLogoImageView image];
      [v36 setAccessibilityIdentifier:@"PlaceHeaderLogoImage"];

      v37 = [(MUPlaceHeaderViewModel *)self->_viewModel logoBackgroundColor];
      v38 = v37;
      if (!v37)
      {
        v38 = +[MUInfoCardStyle verifiedLogoBackgroundColor];
      }

      [(MUVerifiedLogoImageView *)self->_verifiedBusinessLogoImageView setBackgroundColor:v38];
      if (!v37)
      {
      }

      [(UIView *)self->_verifiedBusinessContainerView addSubview:self->_verifiedBusinessLogoImageView];
    }

    [(MUPlaceHeaderView *)self _updateWithTransitionController:self->_coverPhotoTransitionController];
    objc_destroyWeak(&v90);
    objc_destroyWeak(location);
  }

  if ([(MUPlaceCoverPhotoOptions *)self->_coverPhotoOptions showShareButton])
  {
    v39 = [[MUCardButton alloc] initWithFrame:*v4, v4[1], v4[2], v4[3]];
    shareButton = self->_shareButton;
    self->_shareButton = v39;

    [(MUCardButton *)self->_shareButton setAccessibilityIdentifier:@"PlaceHeaderShareButton"];
    [(MUCardButton *)self->_shareButton setSymbolName:@"square.and.arrow.up"];
    [(MUCardButton *)self->_shareButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUCardButton *)self->_shareButton addTarget:self action:sel__shareButtonPressed forControlEvents:64];
    if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto])
    {
      [(MUCardButton *)self->_shareButton setBlurBackground:1];
      v41 = [(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto];
      v42 = 8.0;
      if (v41)
      {
        v43 = 8.0;
      }

      else
      {
        [(MUPlaceHeaderView *)self topToTitleSpacing];
        v43 = 20.0;
      }

      [(MUCardButton *)self->_shareButton setDirectionalLayoutMargins:v42, 0.0, 0.0, v43];
    }

    else if (+[MUInfoCardStyle hasExternallyProvidedTintColor])
    {
      v44 = objc_opt_new();
      [(MUCardButton *)self->_shareButton setBackgroundView:v44];

      v45 = +[MUInfoCardStyle tintColor];
      [(MUCardButton *)self->_shareButton setForegroundColor:v45];
    }

    if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsCoverPhoto])
    {
      v46 = self->_verifiedBusinessCoverPhotoImageView;
      v47 = self->_shareButton;
    }

    else
    {
      v47 = self->_shareButton;
      v46 = self;
    }

    [v46 addSubview:v47];
  }

  v48 = [[MUFadingMarqueeLabel alloc] initWithInterval:60.0];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v48;

  [(MUFadingMarqueeLabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC8] weight:*MEMORY[0x1E69DB958]];
  [(MUFadingLabel *)self->_titleLabel setFont:v50];

  [(MUFadingMarqueeLabel *)self->_titleLabel setNumberOfLines:1];
  [(MUFadingMarqueeLabel *)self->_titleLabel setTextAlignment:1];
  [(MUFadingMarqueeLabel *)self->_titleLabel setAccessibilityIdentifier:@"PlaceHeaderTitle"];
  [(MUFadingMarqueeLabel *)self->_titleLabel setLineBreakStrategy:1];
  [(MUPlaceHeaderView *)self addSubview:self->_titleLabel];
  v51 = [(MUPlaceHeaderViewModel *)self->_viewModel placeSecondaryName];
  v52 = [v51 length];

  if (v52)
  {
    v53 = [MUInfoCardStyle vibrantLabelForProminence:1];
    secondaryTitleLabel = self->_secondaryTitleLabel;
    self->_secondaryTitleLabel = v53;

    [(UILabel *)self->_secondaryTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v55 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD28] weight:*MEMORY[0x1E69DB980]];
    [(UILabel *)self->_secondaryTitleLabel setFont:v55];

    [(UILabel *)self->_secondaryTitleLabel setAccessibilityIdentifier:@"PlaceHeaderSecondaryTitle"];
    [(UILabel *)self->_secondaryTitleLabel setPreferredVibrancy:1];
    [(MUPlaceHeaderView *)self addSubview:self->_secondaryTitleLabel];
  }

  if ([(MUPlaceHeaderViewModel *)self->_viewModel hasInitialData])
  {
    v56 = [MULinkView alloc];
    v57 = +[MUInfoCardStyle secondaryTextColor];
    v58 = +[MUInfoCardStyle secondaryTextColor];
    v59 = [v58 colorWithAlphaComponent:0.800000012];
    v60 = [(MULinkView *)v56 initWithLabelColor:v57 linkColor:v59];
    containmentLabel = self->_containmentLabel;
    self->_containmentLabel = v60;

    [(MULinkView *)self->_containmentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MULinkView *)self->_containmentLabel setAccessibilityIdentifier:@"PlaceHeaderContainmentButton"];
    [(MULinkView *)self->_containmentLabel setNumberOfLines:1];
    objc_initWeak(from, self);
    v62 = self->_containmentLabel;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __35__MUPlaceHeaderView__setupSubviews__block_invoke_2;
    v76[3] = &unk_1E821BAA0;
    objc_copyWeak(&v77, from);
    [(MULinkView *)v62 setSelectionBlock:v76];
    [(MUPlaceHeaderView *)self addSubview:self->_containmentLabel];
    objc_destroyWeak(&v77);
    objc_destroyWeak(from);
  }

  v63 = [(MUPlaceHeaderViewModel *)self->_viewModel transitLabelItems];
  v64 = [v63 count];

  if (v64)
  {
    v65 = objc_alloc_init(MEMORY[0x1E696F3F8]);
    transitInfoLabelView = self->_transitInfoLabelView;
    self->_transitInfoLabelView = v65;

    [(MKTransitInfoLabelView *)self->_transitInfoLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
    v67 = [(MUPlaceHeaderViewModel *)self->_viewModel transitLabelItems];
    [(MKTransitInfoLabelView *)self->_transitInfoLabelView setLabelItems:v67];

    [(MKTransitInfoLabelView *)self->_transitInfoLabelView setAccessibilityIdentifier:@"PlaceHeaderTransitInfo"];
    [(MUPlaceHeaderView *)self addSubview:self->_transitInfoLabelView];
  }

  if ([(MUPlaceHeaderViewModel *)self->_viewModel isVerified])
  {
    v68 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
    verifiedLabel = self->_verifiedLabel;
    self->_verifiedLabel = v68;

    [(UILabel *)self->_verifiedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_verifiedLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_verifiedLabel setNumberOfLines:0];
    v70 = [(MUPlaceHeaderView *)self _verifiedAttributedString];
    [(UILabel *)self->_verifiedLabel setAttributedText:v70];

    [(UILabel *)self->_verifiedLabel setAccessibilityIdentifier:@"PlaceHeaderVerifiedLabel"];
    [(MUPlaceHeaderView *)self addSubview:self->_verifiedLabel];
  }

  if ([(MUPlaceHeaderViewModel *)self->_viewModel supportsContactAddressDescription])
  {
    v71 = [MEMORY[0x1E69DCC10] _mapsui_defaultLabel];
    contactAddressDescription = self->_contactAddressDescription;
    self->_contactAddressDescription = v71;

    [(UILabel *)self->_contactAddressDescription setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_contactAddressDescription setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_contactAddressDescription setNumberOfLines:0];
    v73 = [(MUPlaceHeaderViewModel *)self->_viewModel addressDescriptionForContact];
    [(UILabel *)self->_contactAddressDescription setAttributedText:v73];

    [(UILabel *)self->_contactAddressDescription setAccessibilityIdentifier:@"ContactAddressDescriptionLabel"];
    [(MUPlaceHeaderView *)self addSubview:self->_contactAddressDescription];
  }

  v74 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  topToTitleLayoutGuide = self->_topToTitleLayoutGuide;
  self->_topToTitleLayoutGuide = v74;

  [(MUPlaceHeaderView *)self addLayoutGuide:self->_topToTitleLayoutGuide];
  [(MUPlaceHeaderView *)self reloadTitleLabels];
  [(MUPlaceHeaderView *)self _updateTopToTitlePaddings];
}

void __35__MUPlaceHeaderView__setupSubviews__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateWithTransitionController:v5];
  }
}

void __35__MUPlaceHeaderView__setupSubviews__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _tappedEnclosingPlace];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  secondaryContainmentTransitionTimer = self->_secondaryContainmentTransitionTimer;
  if (secondaryContainmentTransitionTimer)
  {
    dispatch_source_cancel(secondaryContainmentTransitionTimer);
  }

  v4.receiver = self;
  v4.super_class = MUPlaceHeaderView;
  [(MUPlaceHeaderView *)&v4 dealloc];
}

- (MUPlaceHeaderView)initWithViewModel:(id)a3 coverPhotoOptions:(id)a4 trailingConstraintProvider:(id)a5 paddingConstraintProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = MUPlaceHeaderView;
  v15 = [(MUPlaceHeaderView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_viewModel, a3);
    objc_storeStrong(&v16->_coverPhotoOptions, a4);
    v17 = [v13 copy];
    trailingConstraintProvider = v16->_trailingConstraintProvider;
    v16->_trailingConstraintProvider = v17;

    v19 = [v14 copy];
    paddingConstraintProvider = v16->_paddingConstraintProvider;
    v16->_paddingConstraintProvider = v19;

    [(MUPlaceHeaderView *)v16 setAccessibilityIdentifier:@"PlaceHeaderView"];
    [(MUPlaceHeaderView *)v16 _setupSubviews];
    [(MUPlaceHeaderView *)v16 _setupConstraints];
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v16 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

    [(MUPlaceHeaderView *)v16 _updateAppearance];
  }

  return v16;
}

@end