@interface MediaControlsExpandableButton
+ (double)collapsedHeightWithImageHeight:(double)height maximumHeight:(double)maximumHeight;
+ (id)optionsForListeningModes:(id)modes;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)buttonImageSize;
- (CGSize)maximumExpandedSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MediaControlsExpandableButton)initWithFrame:(CGRect)frame;
- (MediaControlsExpandableButtonOption)selectedOption;
- (id)initForControlCenter;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)selectedButton;
- (int64_t)_buttonLayoutAxis;
- (void)_layoutLabels;
- (void)_layoutSelectionView;
- (void)_resetSelectionView;
- (void)_updateButtonsVisiblity;
- (void)cancelTrackingWithEvent:(id)event;
- (void)didTapButton:(id)button;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)playFailedValueChangedEventHapticWithMessage:(id)message;
- (void)playValueChangedEventHaptic;
- (void)resetMessageAnimated:(BOOL)animated;
- (void)setAvailableListeningModes:(id)modes;
- (void)setAxis:(int64_t)axis;
- (void)setBackgroundView:(id)view;
- (void)setButtonImageSize:(CGSize)size;
- (void)setContentVerticalAlignment:(int64_t)alignment;
- (void)setDisabledSubtitle:(id)subtitle;
- (void)setDisplayMessage:(BOOL)message;
- (void)setEnabled:(BOOL)enabled;
- (void)setExpanded:(BOOL)expanded;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOptions:(id)options;
- (void)setSelectedListeningMode:(id)mode animated:(BOOL)animated;
- (void)setSelectedOptionIndex:(int64_t)index;
- (void)setSelectedOptionIndex:(int64_t)index animated:(BOOL)animated;
- (void)setSelectedOptionIndexWithValueChanged:(unint64_t)changed;
- (void)setStylingProvider:(id)provider;
- (void)setTitle:(id)title;
- (void)showMessage:(id)message;
- (void)updateContentSizeCategory;
- (void)updateGlyphSelectionState;
- (void)updateSubtitle;
- (void)updateVisualStyling;
@end

@implementation MediaControlsExpandableButton

- (void)_layoutLabels
{
  traitCollection = [(MediaControlsExpandableButton *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  [(MediaControlsExpandableButton *)self bounds];
  backgroundView = [(MediaControlsExpandableButton *)self backgroundView];
  [backgroundView frame];
  CGRectGetMaxY(v27);
  UIRectInset();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(UILabel *)self->_titleLabel sizeThatFits:v12, v14];
  v28.origin.x = v8;
  v28.origin.y = v10;
  v28.size.width = v12;
  v28.size.height = v14;
  CGRectGetMinY(v28);
  UIRectCenteredXInRectScale();
  v24 = v16;
  v25 = v15;
  v23 = v17;
  v19 = v18;
  [(UILabel *)self->_titleLabel setFrame:v5];
  [(UILabel *)self->_messageLabel sizeThatFits:v12, v14];
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  CGRectGetMinY(v29);
  UIRectCenteredXInRectScale();
  [(UILabel *)self->_messageLabel setFrame:v5];
  v30.origin.x = v19;
  v30.origin.y = v25;
  v30.size.width = v23;
  v30.size.height = v24;
  CGRectGetHeight(v30);
  UIRectInset();
  [(MRUExpandableButtonSubtitleView *)self->_subtitleView sizeThatFits:v20, v21];
  v31.origin.x = v19;
  v31.origin.y = v25;
  v31.size.width = v23;
  v31.size.height = v24;
  CGRectGetMaxY(v31);
  UIRectCenteredXInRectScale();
  subtitleView = self->_subtitleView;

  [(MRUExpandableButtonSubtitleView *)subtitleView setFrame:?];
}

- (void)updateVisualStyling
{
  isEnabled = [(MediaControlsExpandableButton *)self isEnabled];
  v4 = 0.5;
  if (isEnabled)
  {
    v4 = 1.0;
  }

  [(UIView *)self->_backgroundView setAlpha:v4];
  stylingProvider = self->_stylingProvider;
  if (stylingProvider)
  {
    if (self->_displayMessage)
    {
      [(UILabel *)self->_titleLabel setAlpha:0.0];
      [(MRUExpandableButtonSubtitleView *)self->_subtitleView setAlpha:0.0];
      v6 = self->_stylingProvider;
      messageLabel = self->_messageLabel;
      traitCollection = [(MediaControlsExpandableButton *)self traitCollection];
      [(MRUVisualStylingProvider *)v6 applyStyle:0 toView:messageLabel traitCollection:traitCollection];

      return;
    }

    if (self->_expanded)
    {
      goto LABEL_13;
    }

    isEnabled2 = [(MediaControlsExpandableButton *)self isEnabled];
    stylingProvider = self->_stylingProvider;
    if ((isEnabled2 & 1) == 0)
    {
      titleLabel = self->_titleLabel;
      traitCollection2 = [(MediaControlsExpandableButton *)self traitCollection];
      [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:titleLabel traitCollection:traitCollection2];

      [(UILabel *)self->_titleLabel setAlpha:0.5];
      subtitleView = self->_subtitleView;
      v14 = 0.5;
      goto LABEL_20;
    }

    if (stylingProvider)
    {
LABEL_13:
      if (!self->_expanded)
      {
        v11 = self->_titleLabel;
        traitCollection3 = [(MediaControlsExpandableButton *)self traitCollection];
        [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:v11 traitCollection:traitCollection3];

LABEL_18:
        subtitleView = self->_subtitleView;
        v14 = 1.0;
        goto LABEL_20;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!self->_expanded)
    {
      [(UILabel *)self->_titleLabel setAlpha:1.0];
      goto LABEL_18;
    }

LABEL_16:
    [(UILabel *)self->_titleLabel setAlpha:0.0];
    subtitleView = self->_subtitleView;
    v14 = 0.0;
LABEL_20:
    [(MRUExpandableButtonSubtitleView *)subtitleView setAlpha:v14];
    v8 = self->_messageLabel;
    v9 = 0.0;
    goto LABEL_21;
  }

  if (!self->_displayMessage)
  {
    goto LABEL_15;
  }

  [(UILabel *)self->_titleLabel setAlpha:0.0];
  [(MRUExpandableButtonSubtitleView *)self->_subtitleView setAlpha:0.0];
  v8 = self->_messageLabel;
  v9 = 1.0;
LABEL_21:

  [(UILabel *)v8 setAlpha:v9];
}

- (void)_updateButtonsVisiblity
{
  buttons = self->_buttons;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__MediaControlsExpandableButton__updateButtonsVisiblity__block_invoke;
  v3[3] = &unk_1E7665900;
  v3[4] = self;
  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v3];
}

- (void)updateGlyphSelectionState
{
  buttons = self->_buttons;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__MediaControlsExpandableButton_updateGlyphSelectionState__block_invoke;
  v3[3] = &unk_1E7665900;
  v3[4] = self;
  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v3];
}

- (void)_layoutSelectionView
{
  selectedButton = [(MediaControlsExpandableButton *)self selectedButton];
  if (selectedButton)
  {
    v16 = selectedButton;
    [selectedButton assetFrame];
    [(MediaControlsExpandableButton *)self convertRect:v16 fromView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if (self->_expanded)
    {
      isHighlighted = [(MediaControlsExpandableButton *)self isHighlighted];
      v13 = 4.0;
      v14 = 2.0;
      if (!isHighlighted)
      {
        v14 = 4.0;
      }

      v5 = v5 + v14;
      v7 = v7 + v14;
      if (!isHighlighted)
      {
        v13 = 8.0;
      }

      v9 = v9 - v13;
      v11 = v11 - v13;
    }

    UIRectCenteredAboutPoint();
    [(MRUExpandableButtonSelectionView *)self->_selectionView setBounds:?];
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    MidX = CGRectGetMidX(v18);
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    [(MRUExpandableButtonSelectionView *)self->_selectionView setCenter:MidX, CGRectGetMidY(v19)];
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    [(MRUExpandableButtonSelectionView *)self->_selectionView _setCornerRadius:CGRectGetHeight(v20) * 0.5];
    selectedButton = v16;
  }
}

- (void)updateSubtitle
{
  if (([(MediaControlsExpandableButton *)self isEnabled]& 1) != 0 || (disabledSubtitle = self->_disabledSubtitle) == 0)
  {
    selectedOption = [(MediaControlsExpandableButton *)self selectedOption];
    title = [selectedOption title];

    [(MRUExpandableButtonSubtitleView *)self->_subtitleView setText:title];
  }

  else
  {
    title = disabledSubtitle;
    [(MRUExpandableButtonSubtitleView *)self->_subtitleView setText:title];
  }

  [(MediaControlsExpandableButton *)self _layoutLabels];
}

- (id)selectedButton
{
  if (self->_selectedOptionIndex == 0x7FFFFFFFFFFFFFFFLL || [(NSMutableArray *)self->_buttons count]<= self->_selectedOptionIndex)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:?];
  }

  return v3;
}

- (MediaControlsExpandableButtonOption)selectedOption
{
  if (self->_selectedOptionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_options objectAtIndexedSubscript:v2];
  }

  return v4;
}

- (int64_t)_buttonLayoutAxis
{
  if (self->_toggleEnabled)
  {
    return 0;
  }

  else
  {
    return self->_axis;
  }
}

- (void)layoutSubviews
{
  v73 = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = MediaControlsExpandableButton;
  [(MediaControlsExpandableButton *)&v71 layoutSubviews];
  [(MediaControlsExpandableButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(MediaControlsExpandableButton *)self traitCollection];
  [traitCollection displayScale];

  axis = self->_axis;
  if (axis)
  {
    if (axis != 1)
    {
      goto LABEL_8;
    }

    v74.origin.x = v4;
    v74.origin.y = v6;
    v74.size.width = v8;
    v74.size.height = v10;
    Width = CGRectGetWidth(v74);
    v75.origin.x = v4;
    v75.origin.y = v6;
    v75.size.width = v8;
    v75.size.height = v10;
    v13 = 0;
    CGRectGetHeight(v75);
    v76.origin.x = v4;
    v76.origin.y = v6;
    v76.size.width = v8;
    v76.size.height = v10;
    CGRectGetHeight(v76);
    UIFloorToScale();
    v15 = v14;
    if ([(NSMutableArray *)self->_buttons count]>= 2)
    {
      [(NSMutableArray *)self->_buttons count];
      [(NSMutableArray *)self->_buttons count];
      UIFloorToScale();
      v13 = v16;
    }

    buttons = self->_buttons;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __47__MediaControlsExpandableButton_layoutSubviews__block_invoke_2;
    v69[3] = &unk_1E7665840;
    v69[4] = self;
    *&v69[5] = v4;
    *&v69[6] = v6;
    *&v69[7] = v8;
    *&v69[8] = v10;
    v69[9] = v15;
    v69[10] = v13;
    *&v69[11] = Width;
    v18 = v69;
  }

  else
  {
    v77.origin.x = v4;
    v77.origin.y = v6;
    v77.size.width = v8;
    v77.size.height = v10;
    Height = CGRectGetHeight(v77);
    v78.origin.x = v4;
    v78.origin.y = v6;
    v78.size.width = v8;
    v78.size.height = v10;
    CGRectGetWidth(v78);
    v79.origin.x = v4;
    v79.origin.y = v6;
    v79.size.width = v8;
    v79.size.height = v10;
    CGRectGetWidth(v79);
    UIFloorToScale();
    v21 = v20;
    [(NSArray *)self->_options count];
    UIFloorToScale();
    buttons = self->_buttons;
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __47__MediaControlsExpandableButton_layoutSubviews__block_invoke;
    v70[3] = &unk_1E7665840;
    v70[4] = self;
    *&v70[5] = v4;
    *&v70[6] = v6;
    *&v70[7] = v8;
    *&v70[8] = v10;
    v70[9] = v21;
    v70[10] = v22;
    *&v70[11] = Height;
    v18 = v70;
  }

  [(NSMutableArray *)buttons enumerateObjectsUsingBlock:v18];
LABEL_8:
  firstObject = [(NSMutableArray *)self->_buttons firstObject];
  [firstObject assetFrame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  firstObject2 = [(NSMutableArray *)self->_buttons firstObject];
  [(MediaControlsExpandableButton *)self convertRect:firstObject2 fromView:v25, v27, v29, v31];
  x = v33;
  y = v35;
  v38 = v37;
  v40 = v39;

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v41 = self->_buttons;
  v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v66;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v66 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v65 + 1) + 8 * i);
        [v46 assetFrame];
        [(MediaControlsExpandableButton *)self convertRect:v46 fromView:?];
        v84.origin.x = v47;
        v84.origin.y = v48;
        v84.size.width = v49;
        v84.size.height = v50;
        v80.origin.x = x;
        v80.origin.y = y;
        v80.size.width = v38;
        v80.size.height = v40;
        v81 = CGRectUnion(v80, v84);
        x = v81.origin.x;
        y = v81.origin.y;
        v38 = v81.size.width;
        v40 = v81.size.height;
      }

      v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v43);
  }

  [(MediaControlsExpandableButton *)self bounds];
  UIRectCenteredXInRect();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  [(UIView *)self->_backgroundView setFrame:?];
  v82.origin.x = v52;
  v82.origin.y = v54;
  v82.size.width = v56;
  v82.size.height = v58;
  v59 = CGRectGetWidth(v82);
  v83.origin.x = v52;
  v83.origin.y = v54;
  v83.size.width = v56;
  v83.size.height = v58;
  v60 = CGRectGetHeight(v83);
  v61 = v59 == v60;
  if (v59 < v60)
  {
    v60 = v59;
  }

  v62 = v60 * 0.5;
  backgroundView = self->_backgroundView;
  if (v61)
  {
    [(UIView *)backgroundView _setCornerRadius:v62];
  }

  else
  {
    [(UIView *)backgroundView _setContinuousCornerRadius:v62];
  }

  [(MediaControlsExpandableButton *)self _layoutSelectionView];
  [(MediaControlsExpandableButton *)self _layoutLabels];
}

uint64_t __47__MediaControlsExpandableButton_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(*(a1 + 32) + 456))
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72) + v3 * a3;
    v5 = 0.0;
    v6 = 88;
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = 64;
    v3 = *(a1 + 56);
  }

  return [a2 setFrame:{v4, v5, v3, *(a1 + v6)}];
}

void __56__MediaControlsExpandableButton__updateButtonsVisiblity__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [*(*(a1 + 32) + 464) objectAtIndexedSubscript:a3];
  v6 = *(a1 + 32);
  if (*(v6 + 456) == 1)
  {
    [v11 setUserInteractionEnabled:*(v6 + 472) != a3];
    [v11 setAlpha:1.0];
    [v11 setSelected:*(*(a1 + 32) + 472) == a3];
    [v11 setLabelHidden:*(*(a1 + 32) + 458)];
    v7 = [*(a1 + 32) isEnabled];
    v8 = v5;
    if ((v7 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    [v11 setUserInteractionEnabled:1];
    v10 = 0.0;
    if (*(*(a1 + 32) + 472) == a3)
    {
      v10 = 1.0;
    }

    [v11 setAlpha:v10];
    [v11 setSelected:*(*(a1 + 32) + 472) == a3];
    [v11 setLabelHidden:1];
    v8 = *(a1 + 32);
  }

  v9 = [v8 isEnabled];
LABEL_8:
  [v11 setEnabled:v9];
}

void __58__MediaControlsExpandableButton_updateGlyphSelectionState__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(*(a1 + 32) + 464) objectAtIndexedSubscript:a3];
  v6 = v5;
  if (*(*(a1 + 32) + 472) == a3)
  {
    v7 = [v5 selectedState];
    [v8 setGlyphState:v7];
  }

  else
  {
    [v8 setGlyphState:0];
  }
}

+ (id)optionsForListeningModes:(id)modes
{
  v34 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(modesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = modesCopy;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v28 = *v30;
    v7 = *MEMORY[0x1E6958728];
    v8 = *MEMORY[0x1E6958740];
    v9 = *MEMORY[0x1E6958738];
    v10 = *MEMORY[0x1E6958730];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        if ([v12 isEqual:v7])
        {
          v13 = objc_alloc_init(MediaControlsExpandableButtonOption);
          [(MediaControlsExpandableButtonOption *)v13 setIdentifier:v7];
          v14 = [MRUAsset packageAssetNamed:@"ListeningModeNoiseCancellation"];
          [(MediaControlsExpandableButtonOption *)v13 setAsset:v14];

          v15 = +[MRUStringsProvider listeningModeNoiseCancellation];
          [(MediaControlsExpandableButtonOption *)v13 setTitle:v15];

          [(MediaControlsExpandableButtonOption *)v13 setSelectedState:@"on"];
          [(MediaControlsExpandableButtonOption *)v13 setSelectedBackground:2];
          [v4 addObject:v13];
        }

        if ([v12 isEqual:v8])
        {
          v16 = objc_alloc_init(MediaControlsExpandableButtonOption);
          [(MediaControlsExpandableButtonOption *)v16 setIdentifier:v8];
          v17 = [MRUAsset packageAssetNamed:@"ListeningModeOff"];
          [(MediaControlsExpandableButtonOption *)v16 setAsset:v17];

          v18 = +[MRUStringsProvider listeningModeOff];
          [(MediaControlsExpandableButtonOption *)v16 setTitle:v18];

          [(MediaControlsExpandableButtonOption *)v16 setSelectedState:@"on"];
          [v4 addObject:v16];
        }

        if ([v12 isEqual:v9])
        {
          v19 = objc_alloc_init(MediaControlsExpandableButtonOption);
          [(MediaControlsExpandableButtonOption *)v19 setIdentifier:v9];
          v20 = [MRUAsset packageAssetNamed:@"ListeningModeAuto"];
          [(MediaControlsExpandableButtonOption *)v19 setAsset:v20];

          v21 = +[MRUStringsProvider listeningModeAutomatic];
          [(MediaControlsExpandableButtonOption *)v19 setTitle:v21];

          [(MediaControlsExpandableButtonOption *)v19 setSelectedState:@"on"];
          [(MediaControlsExpandableButtonOption *)v19 setSelectedBackground:1];
          [v4 addObject:v19];
        }

        if ([v12 isEqual:v10])
        {
          v22 = objc_alloc_init(MediaControlsExpandableButtonOption);
          [(MediaControlsExpandableButtonOption *)v22 setIdentifier:v10];
          v23 = [MRUAsset packageAssetNamed:@"ListeningModeTransparency"];
          [(MediaControlsExpandableButtonOption *)v22 setAsset:v23];

          v24 = +[MRUStringsProvider listeningModeTransparency];
          [(MediaControlsExpandableButtonOption *)v22 setTitle:v24];

          [(MediaControlsExpandableButtonOption *)v22 setSelectedState:@"on"];
          [(MediaControlsExpandableButtonOption *)v22 setSelectedBackground:2];
          [v4 addObject:v22];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  v25 = [v4 copy];

  return v25;
}

- (void)setAvailableListeningModes:(id)modes
{
  modesCopy = modes;
  v10 = [objc_opt_class() optionsForListeningModes:modesCopy];

  traitCollection = [(MediaControlsExpandableButton *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection == 1)
  {
    reverseObjectEnumerator = [v10 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v9 = allObjects;
  }

  else
  {
    v9 = v10;
  }

  v11 = v9;
  [(MediaControlsExpandableButton *)self setOptions:v9];
}

- (void)setSelectedListeningMode:(id)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  modeCopy = mode;
  options = [(MediaControlsExpandableButton *)self options];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__MediaControlsExpandableButton_MRUListeningMode__setSelectedListeningMode_animated___block_invoke;
  v10[3] = &unk_1E7665190;
  v11 = modeCopy;
  v8 = modeCopy;
  v9 = [options indexOfObjectPassingTest:v10];

  [(MediaControlsExpandableButton *)self setSelectedOptionIndex:v9 animated:animatedCopy];
}

uint64_t __85__MediaControlsExpandableButton_MRUListeningMode__setSelectedListeningMode_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)initForControlCenter
{
  v2 = [(MediaControlsExpandableButton *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v3 mru_setGlassBackground];
    [(MediaControlsExpandableButton *)v2 setBackgroundView:v3];
    v2->_isControlCenter = 1;
  }

  return v2;
}

- (MediaControlsExpandableButton)initWithFrame:(CGRect)frame
{
  v36[1] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = MediaControlsExpandableButton;
  v3 = [(MediaControlsExpandableButton *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    array = [MEMORY[0x1E695DF70] array];
    buttons = v3->_buttons;
    v3->_buttons = array;

    v3->_selectedOptionIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(MediaControlsExpandableButton *)v3 setContentVerticalAlignment:0];
    v6 = objc_opt_new();
    hapticPlayer = v3->_hapticPlayer;
    v3->_hapticPlayer = v6;

    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x1E695F058], v10, v11, v12}];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v13;

    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    [(UIView *)v3->_backgroundView setBackgroundColor:systemGroupedBackgroundColor];

    [(MediaControlsExpandableButton *)v3 addSubview:v3->_backgroundView];
    v16 = [[MRUExpandableButtonSelectionView alloc] initWithFrame:v9, v10, v11, v12];
    selectionView = v3->_selectionView;
    v3->_selectionView = v16;

    [(MediaControlsExpandableButton *)v3 addSubview:v3->_selectionView];
    v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v9, v10, v11, v12}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v18;

    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    LODWORD(v20) = 1051931443;
    [(UILabel *)v3->_titleLabel _setHyphenationFactor:v20];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:labelColor];

    [(UILabel *)v3->_titleLabel controlCenterApplyPrimaryContentShadow];
    [(UILabel *)v3->_titleLabel setClipsToBounds:0];
    [(MediaControlsExpandableButton *)v3 addSubview:v3->_titleLabel];
    v22 = [[MRUExpandableButtonSubtitleView alloc] initWithFrame:v9, v10, v11, v12];
    subtitleView = v3->_subtitleView;
    v3->_subtitleView = v22;

    [(MRUExpandableButtonSubtitleView *)v3->_subtitleView controlCenterApplyPrimaryContentShadow];
    [(MediaControlsExpandableButton *)v3 addSubview:v3->_subtitleView];
    v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v9, v10, v11, v12}];
    messageLabel = v3->_messageLabel;
    v3->_messageLabel = v24;

    [(UILabel *)v3->_messageLabel setNumberOfLines:2];
    [(UILabel *)v3->_messageLabel setTextAlignment:1];
    LODWORD(v26) = 1051931443;
    [(UILabel *)v3->_messageLabel _setHyphenationFactor:v26];
    [(UILabel *)v3->_messageLabel setAlpha:0.0];
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_messageLabel setTextColor:labelColor2];

    [(UILabel *)v3->_messageLabel setClipsToBounds:0];
    [(UILabel *)v3->_messageLabel controlCenterApplyPrimaryContentShadow];
    [(MediaControlsExpandableButton *)v3 addSubview:v3->_messageLabel];
    v28 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
    [(MediaControlsExpandableButton *)v3 addInteraction:v28];
    v36[0] = objc_opt_class();
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
    v30 = [(MediaControlsExpandableButton *)v3 registerForTraitChanges:v29 withAction:sel_updateVisualStyling];

    v35 = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v32 = [(MediaControlsExpandableButton *)v3 registerForTraitChanges:v31 withAction:sel_updateContentSizeCategory];

    [(MediaControlsExpandableButton *)v3 updateContentSizeCategory];
  }

  return v3;
}

uint64_t __47__MediaControlsExpandableButton_layoutSubviews__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  if (*(v3 + 456))
  {
    v4 = *(v3 + 608);
    v5 = *(a1 + 72) + (*(a1 + 80) + v4) * a3;
    v6 = (a1 + 88);
    v7 = 0.0;
  }

  else
  {
    v7 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = (a1 + 56);
    v4 = *(a1 + 64);
  }

  return [a2 setFrame:{v7, v5, *v6, v4}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (self->_axis && self->_expanded)
  {
    v5 = self->_maximumExpandedSize.height;
    if (v5 <= 0.0)
    {
      v6 = self->_buttonImageSize.height;
      v5 = v6 * [(NSMutableArray *)self->_buttons count];
    }
  }

  else
  {
    [objc_opt_class() collapsedHeightWithImageHeight:self->_buttonImageSize.height maximumHeight:fits.height];
    v5 = v7 + 0.0;
  }

  if (v5 >= height)
  {
    v8 = height;
  }

  else
  {
    v8 = v5;
  }

  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (double)collapsedHeightWithImageHeight:(double)height maximumHeight:(double)maximumHeight
{
  v5 = height + 8.0;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];

  mru_volumeButtonTitleFont = [MEMORY[0x1E69DB878] mru_volumeButtonTitleFont];
  [mru_volumeButtonTitleFont lineHeight];
  UICeilToScale();
  v9 = v5 + v8;

  mru_volumeButtonSubtitleFont = [MEMORY[0x1E69DB878] mru_volumeButtonSubtitleFont];
  [mru_volumeButtonSubtitleFont lineHeight];
  UICeilToScale();
  v12 = v9 + v11;

  if (v12 >= maximumHeight)
  {
    return maximumHeight;
  }

  else
  {
    return v12;
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    backgroundView = [(MediaControlsExpandableButton *)self insertSubview:v7 atIndex:0];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](backgroundView, viewCopy);
}

- (void)setStylingProvider:(id)provider
{
  v16 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MediaControlsExpandableButton *)self updateVisualStyling];
    [(MRUExpandableButtonSubtitleView *)self->_subtitleView setStylingProvider:providerCopy];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_buttons;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setStylingProvider:{providerCopy, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(MediaControlsExpandableButton *)self setNeedsLayout];
}

- (void)setDisabledSubtitle:(id)subtitle
{
  objc_storeStrong(&self->_disabledSubtitle, subtitle);
  [(MediaControlsExpandableButton *)self updateSubtitle];

  [(MediaControlsExpandableButton *)self setNeedsLayout];
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  objc_storeStrong(&self->_options, options);
  v6 = [optionsCopy count];
  self->_toggleEnabled = v6 == 2;
  v7 = v6 != 2 && self->_expanded;
  self->_expanded = v7;
  for (i = -[NSMutableArray count](self->_buttons, "count"); i > [optionsCopy count]; --i)
  {
    lastObject = [(NSMutableArray *)self->_buttons lastObject];
    [(NSMutableArray *)self->_buttons removeLastObject];
    [lastObject removeFromSuperview];
  }

  v10 = [(NSMutableArray *)self->_buttons count];
  if (v10 < [optionsCopy count])
  {
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v15 = [[MediaControlsRoundButton alloc] initWithFrame:v11, v12, v13, v14];
      [(MediaControlsRoundButton *)v15 addTarget:self action:sel_didTapButton_ forControlEvents:64];
      [(NSMutableArray *)self->_buttons addObject:v15];
      [(MediaControlsExpandableButton *)self addSubview:v15];

      ++v10;
    }

    while (v10 < [optionsCopy count]);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__MediaControlsExpandableButton_setOptions___block_invoke;
  v16[3] = &unk_1E7665868;
  v16[4] = self;
  [optionsCopy enumerateObjectsUsingBlock:v16];
  [(MediaControlsExpandableButton *)self updateVisualStyling];
  [(MediaControlsExpandableButton *)self setSelectedOptionIndex:0x7FFFFFFFFFFFFFFFLL];
}

void __44__MediaControlsExpandableButton_setOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 512);
  v6 = a2;
  v9 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 title];
  [v9 setTitle:v7];

  v8 = [v6 asset];

  [v9 setAsset:v8];
  [v9 setStylingProvider:*(*(a1 + 32) + 504)];
  [v9 setAssetSize:{*(*(a1 + 32) + 600), *(*(a1 + 32) + 608)}];
  [v9 setAxis:{objc_msgSend(*(a1 + 32), "_buttonLayoutAxis")}];
  [v9 setContentVerticalAlignment:{objc_msgSend(*(a1 + 32), "contentVerticalAlignment")}];
  if (*(*(a1 + 32) + 459) == 1)
  {
    [v9 controlCenterApplyPrimaryContentShadow];
  }
}

- (void)setSelectedOptionIndex:(int64_t)index animated:(BOOL)animated
{
  if (animated)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__MediaControlsExpandableButton_setSelectedOptionIndex_animated___block_invoke;
    v5[3] = &unk_1E7663CE0;
    v5[4] = self;
    v5[5] = index;
    [MEMORY[0x1E69DD250] mru_animateUsingType:2 animations:v5];
  }

  else
  {

    [(MediaControlsExpandableButton *)self setSelectedOptionIndex:index];
  }
}

uint64_t __65__MediaControlsExpandableButton_setSelectedOptionIndex_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSelectedOptionIndex:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setSelectedOptionIndex:(int64_t)index
{
  selectedOptionIndex = self->_selectedOptionIndex;
  self->_selectedOptionIndex = index;
  [(MediaControlsExpandableButton *)self updateSubtitle];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__MediaControlsExpandableButton_setSelectedOptionIndex___block_invoke;
  v6[3] = &unk_1E7663F38;
  v6[4] = self;
  v7 = selectedOptionIndex == 0x7FFFFFFFFFFFFFFFLL;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
  if (selectedOptionIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MediaControlsExpandableButton *)self _layoutSelectionView];
  }

  selectedOption = [(MediaControlsExpandableButton *)self selectedOption];
  [(MRUExpandableButtonSelectionView *)self->_selectionView setOption:selectedOption];

  [(MediaControlsExpandableButton *)self _updateButtonsVisiblity];
  [(MediaControlsExpandableButton *)self updateGlyphSelectionState];
  [(MediaControlsExpandableButton *)self setNeedsLayout];
}

uint64_t __56__MediaControlsExpandableButton_setSelectedOptionIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _layoutLabels];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _layoutSelectionView];
  }

  return result;
}

- (void)setSelectedOptionIndexWithValueChanged:(unint64_t)changed
{
  if (self->_selectedOptionIndex != changed)
  {
    v6[8] = v3;
    v6[9] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__MediaControlsExpandableButton_setSelectedOptionIndexWithValueChanged___block_invoke;
    v6[3] = &unk_1E7663CE0;
    v6[4] = self;
    v6[5] = changed;
    [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.25];
    [(MediaControlsExpandableButton *)self updateGlyphSelectionState];
    [(MediaControlsExpandableButton *)self sendActionsForControlEvents:4096];
  }
}

- (void)setAxis:(int64_t)axis
{
  v14 = *MEMORY[0x1E69E9840];
  self->_axis = axis;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_buttons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setAxis:{-[MediaControlsExpandableButton _buttonLayoutAxis](self, "_buttonLayoutAxis", v9)}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(MediaControlsExpandableButton *)self setNeedsLayout];
}

- (void)setContentVerticalAlignment:(int64_t)alignment
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = MediaControlsExpandableButton;
  [(MediaControlsExpandableButton *)&v13 setContentVerticalAlignment:alignment];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_buttons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setContentVerticalAlignment:{-[MediaControlsExpandableButton contentVerticalAlignment](self, "contentVerticalAlignment", v9)}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)setButtonImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v16 = *MEMORY[0x1E69E9840];
  self->_buttonImageSize = size;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_buttons;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) setAssetSize:{width, height, v11}];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(MediaControlsExpandableButton *)self setNeedsLayout];
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    v12[5] = v6;
    v12[6] = v5;
    v12[11] = v3;
    v12[12] = v4;
    if (!self->_toggleEnabled)
    {
      expandedCopy = expanded;
      self->_expanded = expanded;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __45__MediaControlsExpandableButton_setExpanded___block_invoke;
      v12[3] = &unk_1E7663898;
      v12[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v12];
      if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __45__MediaControlsExpandableButton_setExpanded___block_invoke_2;
        v10[3] = &unk_1E7663F38;
        v10[4] = self;
        v11 = expandedCopy;
        [MEMORY[0x1E69DD250] animateWithDuration:96 delay:v10 options:0 animations:0.25 completion:0.0];
      }

      else
      {
        [(MediaControlsExpandableButton *)self _updateButtonsVisiblity];
        [(MediaControlsExpandableButton *)self updateVisualStyling];
        selectionView = [(MediaControlsExpandableButton *)self selectionView];
        [selectionView setExpanded:expandedCopy];
      }

      [(MediaControlsExpandableButton *)self setNeedsLayout];
    }
  }
}

void __45__MediaControlsExpandableButton_setExpanded___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateButtonsVisiblity];
  [*(a1 + 32) updateVisualStyling];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) selectionView];
  [v3 setExpanded:v2];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = MediaControlsExpandableButton;
  [(MediaControlsExpandableButton *)&v5 setEnabled:?];
  [(MediaControlsExpandableButton *)self updateSubtitle];
  [(MediaControlsExpandableButton *)self updateVisualStyling];
  [(MediaControlsExpandableButton *)self _updateButtonsVisiblity];
  [(MediaControlsExpandableButton *)self updateGlyphSelectionState];
  [(MRUExpandableButtonSelectionView *)self->_selectionView setEnabled:enabledCopy];
  [(MediaControlsExpandableButton *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = MediaControlsExpandableButton;
  [(MediaControlsExpandableButton *)&v5 setHighlighted:highlighted];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MediaControlsExpandableButton_setHighlighted___block_invoke;
  v4[3] = &unk_1E7663898;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.15];
}

- (void)showMessage:(id)message
{
  [(UILabel *)self->_messageLabel setText:message];
  [(MediaControlsExpandableButton *)self _layoutLabels];
  [(NSTimer *)self->_messageTimer invalidate];
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_resetMessage selector:0 userInfo:0 repeats:2.25];
  messageTimer = self->_messageTimer;
  self->_messageTimer = v4;

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__MediaControlsExpandableButton_showMessage___block_invoke;
  v6[3] = &unk_1E7663898;
  v6[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.25];
}

- (void)setDisplayMessage:(BOOL)message
{
  self->_displayMessage = message;
  [(MediaControlsExpandableButton *)self _updateButtonsVisiblity];

  [(MediaControlsExpandableButton *)self updateVisualStyling];
}

- (void)playValueChangedEventHaptic
{
  if ([(MediaControlsExpandableButton *)self isTracking])
  {
    hapticPlayer = self->_hapticPlayer;

    [(MediaControlsHapticPlayer *)hapticPlayer expandedButtonChanged];
  }
}

- (void)playFailedValueChangedEventHapticWithMessage:(id)message
{
  if (message)
  {
    [(MediaControlsExpandableButton *)self showMessage:?];
  }

  [(MediaControlsExpandableButton *)self playFailedValueChangedEventHaptic];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  backgroundView = [(MediaControlsExpandableButton *)self backgroundView];
  [backgroundView frame];
  v12.x = x;
  v12.y = y;
  if (CGRectContainsPoint(v15, v12))
  {
    v8 = 1;
  }

  else
  {
    titleLabel = [(MediaControlsExpandableButton *)self titleLabel];
    [titleLabel frame];
    v13.x = x;
    v13.y = y;
    if (CGRectContainsPoint(v16, v13))
    {
      v8 = 1;
    }

    else
    {
      subtitleView = [(MediaControlsExpandableButton *)self subtitleView];
      [subtitleView frame];
      v14.x = x;
      v14.y = y;
      v8 = CGRectContainsPoint(v17, v14);
    }
  }

  return v8;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  if (self->_expanded)
  {
    [(MediaControlsHapticPlayer *)self->_hapticPlayer prepare:touch];
  }

  else
  {
    v4 = [(MediaControlsExpandableButton *)self selectedButton:touch];
    [v4 setHighlighted:1];
  }

  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  _isPointerTouch = [touchCopy _isPointerTouch];
  if ((_isPointerTouch & 1) == 0 && self->_expanded)
  {
    axis = self->_axis;
    if (axis)
    {
      [(MRUExpandableButtonSelectionView *)self->_selectionView center];
      v9 = v8;
      [touchCopy locationInView:self];
    }

    else
    {
      [touchCopy locationInView:self];
      v9 = v11;
      [(MRUExpandableButtonSelectionView *)self->_selectionView center];
    }

    v12 = v10;
    buttons = self->_buttons;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__MediaControlsExpandableButton_continueTrackingWithTouch_withEvent___block_invoke;
    v30[3] = &__block_descriptor_48_e41_B32__0__MediaControlsRoundButton_8Q16_B24l;
    *&v30[4] = v9;
    *&v30[5] = v10;
    v14 = [(NSMutableArray *)buttons indexOfObjectPassingTest:v30];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v14;
      selectedOptionIndex = self->_selectedOptionIndex;
      v17 = v14 != selectedOptionIndex;
      v18 = [(NSMutableArray *)self->_buttons count];
      if ((selectedOptionIndex & ~(selectedOptionIndex >> 63)) >= v18 - 1)
      {
        v19 = v18 - 1;
      }

      else
      {
        v19 = selectedOptionIndex & ~(selectedOptionIndex >> 63);
      }

      v20 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:v19];
      [v20 center];
      v22 = v21;
      v24 = v23;

      v25 = v12 - v24;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __69__MediaControlsExpandableButton_continueTrackingWithTouch_withEvent___block_invoke_2;
      v27[3] = &unk_1E76658B0;
      v27[4] = self;
      if (!axis)
      {
        v25 = v9 - v22;
      }

      v28 = axis == 0;
      *&v27[5] = v25;
      v29 = v17;
      v27[6] = v15;
      [MEMORY[0x1E69DD250] animateWithDuration:v27 animations:0.1];
      if (v15 != selectedOptionIndex)
      {
        [(MediaControlsExpandableButton *)self sendActionsForControlEvents:4096];
      }
    }
  }

  return _isPointerTouch ^ 1;
}

uint64_t __69__MediaControlsExpandableButton_continueTrackingWithTouch_withEvent___block_invoke(CGPoint *a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  if (CGRectContainsPoint(v6, a1[2]))
  {
    v4 = [v3 isEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __69__MediaControlsExpandableButton_continueTrackingWithTouch_withEvent___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = 0.0;
    v3 = *(a1 + 40) / 6.0;
  }

  else
  {
    v3 = 0.0;
    v2 = *(a1 + 40) / 6.0;
  }

  CGAffineTransformMakeTranslation(&v7, v3, v2);
  v4 = *(*(a1 + 32) + 536);
  v6 = v7;
  result = [v4 setTransform:&v6];
  if (*(a1 + 57) == 1)
  {
    [*(a1 + 32) setSelectedOptionIndex:*(a1 + 48)];
    return [*(a1 + 32) updateGlyphSelectionState];
  }

  return result;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = MediaControlsExpandableButton;
  [(MediaControlsExpandableButton *)&v9 endTrackingWithTouch:touchCopy withEvent:eventCopy];
  if (self->_expanded)
  {
    [(MediaControlsExpandableButton *)self _resetSelectionView];
    [(MediaControlsExpandableButton *)self sendActionsForControlEvents:0x40000];
    [(MediaControlsHapticPlayer *)self->_hapticPlayer tearDown];
  }

  else
  {
    selectedButton = [(MediaControlsExpandableButton *)self selectedButton];
    [selectedButton setHighlighted:0];

    [touchCopy locationInView:self];
    if ([(MediaControlsExpandableButton *)self pointInside:eventCopy withEvent:?])
    {
      if (self->_toggleEnabled)
      {
        [(MediaControlsExpandableButton *)self toggleSelectedOption];
      }

      else
      {
        [(MediaControlsExpandableButton *)self sendActionsForControlEvents:64];
      }
    }
  }
}

- (void)cancelTrackingWithEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MediaControlsExpandableButton;
  [(MediaControlsExpandableButton *)&v5 cancelTrackingWithEvent:event];
  [(MediaControlsExpandableButton *)self _resetSelectionView];
  [(MediaControlsHapticPlayer *)self->_hapticPlayer tearDown];
  if (!self->_expanded)
  {
    selectedButton = [(MediaControlsExpandableButton *)self selectedButton];
    [selectedButton setHighlighted:0];
  }
}

- (void)didTapButton:(id)button
{
  v4 = [(NSMutableArray *)self->_buttons indexOfObject:button];
  if (self->_toggleEnabled)
  {

    [(MediaControlsExpandableButton *)self toggleSelectedOption];
  }

  else if (self->_expanded && self->_selectedOptionIndex != v4)
  {

    [(MediaControlsExpandableButton *)self setSelectedOptionIndexWithValueChanged:v4];
  }

  else
  {

    [(MediaControlsExpandableButton *)self sendActionsForControlEvents:64];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  if (view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1)
  {

    goto LABEL_7;
  }

  numberOfTapsRequired = [beginCopy numberOfTapsRequired];

  if (numberOfTapsRequired != 1)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
  buttons = self->_buttons;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__MediaControlsExpandableButton_pointerInteraction_regionForRequest_defaultRegion___block_invoke;
  v24[3] = &unk_1E76658D8;
  v8 = requestCopy;
  v25 = v8;
  v9 = [(NSMutableArray *)buttons indexOfObjectPassingTest:v24];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v9, v9 == self->_selectedOptionIndex) && self->_expanded)
  {
    v10 = 0;
  }

  else
  {
    v12 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:v9];
    [v12 assetFrame];
    [(MediaControlsExpandableButton *)self convertRect:v12 fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = MEMORY[0x1E69DCDC0];
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v10 = [v21 regionWithRect:v22 identifier:{v14, v16, v18, v20}];
  }

  return v10;
}

BOOL __83__MediaControlsExpandableButton_pointerInteraction_regionForRequest_defaultRegion___block_invoke(uint64_t a1, void *a2)
{
  [a2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 32) location];
  v12 = v11;
  v14 = v13;
  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;

  return CGRectContainsPoint(*&v15, *&v12);
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  identifier = [regionCopy identifier];
  integerValue = [identifier integerValue];

  if (self->_toggleEnabled || !self->_expanded)
  {
    v9 = MEMORY[0x1E69DC728];
    [regionCopy rect];
    v10 = [v9 bezierPathWithOvalInRect:?];
    v11 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    [v11 setShadowPath:v10];
    v12 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v11];
    v13 = [MEMORY[0x1E69DCDB8] effectWithPreview:v12];
    v14 = [MEMORY[0x1E69DCDC8] shapeWithPath:v10];
    v8 = [MEMORY[0x1E69DCDD0] styleWithEffect:v13 shape:v14];
  }

  else
  {
    if (integerValue == self->_selectedOptionIndex)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v10 = [(NSMutableArray *)self->_buttons objectAtIndexedSubscript:integerValue];
    v16 = MEMORY[0x1E69DC728];
    [v10 assetFrame];
    v11 = [v16 bezierPathWithOvalInRect:?];
    v12 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    [v12 setShadowPath:v11];
    v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v10 parameters:v12];
    v14 = [MEMORY[0x1E69DCDA0] effectWithPreview:v13];
    v17 = [MEMORY[0x1E69DCDC8] shapeWithPath:v11];
    v8 = [MEMORY[0x1E69DCDD0] styleWithEffect:v14 shape:v17];
  }

LABEL_7:

  return v8;
}

- (void)_resetSelectionView
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__MediaControlsExpandableButton__resetSelectionView__block_invoke;
  v2[3] = &unk_1E7663898;
  v2[4] = self;
  [MEMORY[0x1E69DD250] mru_animateUsingType:2 animations:v2];
}

uint64_t __52__MediaControlsExpandableButton__resetSelectionView__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutSelectionView];
  v2 = *(*(a1 + 32) + 536);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

- (void)resetMessageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(NSTimer *)self->_messageTimer invalidate];
  messageTimer = self->_messageTimer;
  self->_messageTimer = 0;

  if (animatedCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__MediaControlsExpandableButton_resetMessageAnimated___block_invoke;
    v6[3] = &unk_1E7663898;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.25];
  }

  else
  {

    [(MediaControlsExpandableButton *)self setDisplayMessage:0];
  }
}

- (void)updateContentSizeCategory
{
  mru_volumeButtonTitleFont = [MEMORY[0x1E69DB878] mru_volumeButtonTitleFont];
  [(UILabel *)self->_titleLabel setFont:mru_volumeButtonTitleFont];
  [(UILabel *)self->_messageLabel setFont:mru_volumeButtonTitleFont];
  [(MediaControlsExpandableButton *)self setNeedsLayout];
}

- (CGSize)maximumExpandedSize
{
  width = self->_maximumExpandedSize.width;
  height = self->_maximumExpandedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)buttonImageSize
{
  width = self->_buttonImageSize.width;
  height = self->_buttonImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end