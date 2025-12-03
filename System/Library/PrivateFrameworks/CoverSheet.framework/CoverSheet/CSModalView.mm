@interface CSModalView
+ (double)_bottomBaselineOffsetForPortrait:(BOOL)portrait;
+ (double)_modalViewBottomBaselineOffsetPortrait;
- (BOOL)_hasPortraitDimensions;
- (BOOL)_isPortraitForDelegate:(id)delegate;
- (BOOL)_replaceView:(id)view withNewView:(id)newView inParentView:(id)parentView;
- (CGRect)_dateTimeFrame;
- (CSModalView)initWithFrame:(CGRect)frame;
- (CSModalViewDelegate)delegate;
- (UIColor)secondaryActionButtonTextColor;
- (double)_timeLabelBaselineY;
- (double)_timeToSubtitleLabelBaselineDifferenceY;
- (id)_fontWithTextStyle:(id)style cappedToSize:(id)size;
- (id)_labelWithNumberOfLines:(unint64_t)lines font:(id)font;
- (id)_preferredContentSizeCategoryCappedToSize:(id)size;
- (id)_titleFont;
- (void)_buttonTapped:(id)tapped;
- (void)_createAppropriateSecondaryActionButtonIfNecessary;
- (void)_createEnhancedSecondaryActionButtonIfNecessary;
- (void)_createPrimaryActionButtonIfNecessary;
- (void)_createSecondaryActionButtonIfNecessary;
- (void)_positionBottomElementWithLayoutAnchor:(id)anchor lessThanOrEqual:(BOOL)equal;
- (void)_setImageView:(id)view;
- (void)_setPrimaryActionButton:(id)button;
- (void)_setSecondaryActionButton:(id)button;
- (void)_setSecondarySubtitleLabel:(id)label;
- (void)_setSubtitleLabel:(id)label;
- (void)_setTitleLabel:(id)label;
- (void)layoutSubviews;
- (void)setDetailView:(id)view;
- (void)setFooterText:(id)text;
- (void)setImage:(id)image;
- (void)setLegibilitySettings:(id)settings;
- (void)setOverrideSecondarySubtitleFont:(id)font;
- (void)setOverrideSecondarySubtitleTextColor:(id)color;
- (void)setPrimaryActionButtonBackgroundColor:(id)color;
- (void)setPrimaryActionButtonText:(id)text;
- (void)setSecondaryActionButtonText:(id)text;
- (void)setSecondaryActionButtonTextColor:(id)color;
- (void)setSecondarySubtitleText:(id)text;
- (void)setShowsStatusText:(BOOL)text;
- (void)setSubtitleText:(id)text;
- (void)setTitleText:(id)text;
- (void)setWantsEnhancedSecondaryActionButton:(BOOL)button;
- (void)updateConstraints;
@end

@implementation CSModalView

- (CSModalView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = CSModalView;
  v3 = [(CSModalView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CSModalView *)v3 setShowsDateView:1];
    [(CSModalView *)v4 setShowsStatusText:1];
    v5 = objc_alloc_init(MEMORY[0x277D756D0]);
    dateViewLayoutGuide = v4->_dateViewLayoutGuide;
    v4->_dateViewLayoutGuide = v5;

    [(CSModalView *)v4 addLayoutGuide:v4->_dateViewLayoutGuide];
    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    centralGroupView = v4->_centralGroupView;
    v4->_centralGroupView = v8;

    [(CSModalView *)v4 addSubview:v4->_centralGroupView];
    [(UIView *)v4->_centralGroupView setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [(UIView *)v4->_centralGroupView leadingAnchor];
    leadingAnchor2 = [(CSModalView *)v4 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v12 setActive:1];

    trailingAnchor = [(UIView *)v4->_centralGroupView trailingAnchor];
    trailingAnchor2 = [(CSModalView *)v4 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v15 setActive:1];

    centerYAnchor = [(UIView *)v4->_centralGroupView centerYAnchor];
    centerYAnchor2 = [(CSModalView *)v4 centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    LODWORD(v19) = 1144750080;
    [v18 setPriority:v19];
    [v18 setActive:1];
  }

  return v4;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    statusTextView = [(CSStatusTextViewController *)self->_statusTextViewController statusTextView];
    [statusTextView setLegibilitySettings:self->_legibilitySettings];
  }
}

- (void)setShowsStatusText:(BOOL)text
{
  if (self->_showsStatusText != text)
  {
    self->_showsStatusText = text;
    if (text)
    {
      v4 = objc_alloc_init(CSStatusTextViewController);
      statusTextViewController = self->_statusTextViewController;
      self->_statusTextViewController = v4;

      view = [(CSStatusTextViewController *)self->_statusTextViewController view];
      [(CSModalView *)self addSubview:view];

      [(CSStatusTextViewController *)self->_statusTextViewController viewWillAppear:0];
      [(CSCoverSheetViewControllerBase *)self->_statusTextViewController viewDidAppear:0];

      [(CSModalView *)self setNeedsLayout];
    }

    else
    {
      [(CSCoverSheetViewControllerBase *)self->_statusTextViewController viewWillDisappear:?];
      [(CSStatusTextViewController *)self->_statusTextViewController viewDidDisappear:0];
      view2 = [(CSStatusTextViewController *)self->_statusTextViewController view];
      [view2 removeFromSuperview];

      v8 = self->_statusTextViewController;
      self->_statusTextViewController = 0;
    }
  }
}

- (void)setWantsEnhancedSecondaryActionButton:(BOOL)button
{
  if (self->_wantsEnhancedSecondaryActionButton != button)
  {
    self->_wantsEnhancedSecondaryActionButton = button;
    [(CSModalView *)self _setSecondaryActionButton:0];

    [(CSModalView *)self _createAppropriateSecondaryActionButtonIfNecessary];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  _titleLabel = [(CSModalView *)self _titleLabel];
  text = [_titleLabel text];
  v6 = [textCopy isEqualToString:text];

  if ((v6 & 1) == 0)
  {
    v7 = textCopy;
    if (textCopy)
    {
      titleLabel = self->_titleLabel;
      if (!titleLabel)
      {
        _titleFont = [(CSModalView *)self _titleFont];
        v10 = [(CSModalView *)self _labelWithNumberOfLines:2 font:_titleFont];

        [(CSModalView *)self _setTitleLabel:v10];
        v7 = textCopy;
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:v7];
    }

    else
    {
      [(CSModalView *)self _setTitleLabel:0];
    }
  }
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  _subtitleLabel = [(CSModalView *)self _subtitleLabel];
  text = [_subtitleLabel text];
  v6 = [textCopy isEqualToString:text];

  if ((v6 & 1) == 0)
  {
    v7 = textCopy;
    if (textCopy)
    {
      subtitleLabel = self->_subtitleLabel;
      if (!subtitleLabel)
      {
        _subtitleFont = [(CSModalView *)self _subtitleFont];
        v10 = [(CSModalView *)self _labelWithNumberOfLines:10 font:_subtitleFont];

        [(CSModalView *)self _setSubtitleLabel:v10];
        [v10 setLineBreakMode:4];
        LODWORD(v11) = 1144750080;
        [v10 setContentHuggingPriority:1 forAxis:v11];

        v7 = textCopy;
        subtitleLabel = self->_subtitleLabel;
      }

      [(UILabel *)subtitleLabel setText:v7];
    }

    else
    {
      [(CSModalView *)self _setSubtitleLabel:0];
    }
  }
}

- (void)setSecondarySubtitleText:(id)text
{
  textCopy = text;
  _secondarySubtitleLabel = [(CSModalView *)self _secondarySubtitleLabel];
  text = [_secondarySubtitleLabel text];
  v6 = [textCopy isEqualToString:text];

  if ((v6 & 1) == 0)
  {
    v7 = textCopy;
    if (textCopy)
    {
      secondarySubtitleLabel = self->_secondarySubtitleLabel;
      if (!secondarySubtitleLabel)
      {
        _subtitleFont = [(CSModalView *)self _subtitleFont];
        v10 = [(CSModalView *)self _labelWithNumberOfLines:1 font:_subtitleFont];

        [(CSModalView *)self _setSecondarySubtitleLabel:v10];
        LODWORD(v11) = 1148846080;
        [v10 setContentCompressionResistancePriority:1 forAxis:v11];

        v7 = textCopy;
        secondarySubtitleLabel = self->_secondarySubtitleLabel;
      }

      [(UILabel *)secondarySubtitleLabel setText:v7];
    }

    else
    {
      [(CSModalView *)self _setSecondarySubtitleLabel:0];
    }
  }
}

- (void)setPrimaryActionButtonBackgroundColor:(id)color
{
  colorCopy = color;
  [(CSModalView *)self _createPrimaryActionButtonIfNecessary];
  [(CSModalButton *)self->_primaryActionButton setBackgroundColor:colorCopy];
}

- (void)setPrimaryActionButtonText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    [(CSModalView *)self _createPrimaryActionButtonIfNecessary];
    titleLabel = [(CSModalButton *)self->_primaryActionButton titleLabel];
    text = [titleLabel text];
    v6 = [textCopy isEqualToString:text];

    if ((v6 & 1) == 0)
    {
      [(CSModalButton *)self->_primaryActionButton setTitle:textCopy forState:0];
    }
  }

  else
  {
    [(CSModalView *)self _setPrimaryActionButton:0];
  }
}

- (void)setSecondaryActionButtonText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    [(CSModalView *)self _createAppropriateSecondaryActionButtonIfNecessary];
    _secondaryActionButton = [(CSModalView *)self _secondaryActionButton];
    titleLabel = [_secondaryActionButton titleLabel];
    text = [titleLabel text];
    v7 = [textCopy isEqualToString:text];

    if ((v7 & 1) == 0)
    {
      [(UIButton *)self->_secondaryActionButton setTitle:textCopy forState:0];
    }
  }

  else
  {
    [(CSModalView *)self _setSecondaryActionButton:0];
  }
}

- (UIColor)secondaryActionButtonTextColor
{
  titleLabel = [(UIButton *)self->_secondaryActionButton titleLabel];
  color = [titleLabel color];

  return color;
}

- (void)setSecondaryActionButtonTextColor:(id)color
{
  colorCopy = color;
  [(CSModalView *)self _createAppropriateSecondaryActionButtonIfNecessary];
  [(UIButton *)self->_secondaryActionButton setTitleColor:colorCopy forState:0];
}

- (void)setFooterText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    [(CSModalView *)self setShowsStatusText:1];
  }

  [(CSStatusTextViewController *)self->_statusTextViewController setOverrideFooterText:textCopy];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  _imageView = [(CSModalView *)self _imageView];
  image = [_imageView image];

  v6 = imageCopy;
  if (image != imageCopy)
  {
    if (imageCopy)
    {
      imageView = self->_imageView;
      if (imageView)
      {
        [(UIImageView *)imageView setImage:imageCopy];
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:imageCopy];
        [(CSModalView *)self _setImageView:v8];
      }
    }

    else
    {
      [(CSModalView *)self _setImageView:0];
    }

    v6 = imageCopy;
  }
}

- (void)setDetailView:(id)view
{
  viewCopy = view;
  if ([CSModalView _replaceView:"_replaceView:withNewView:inParentView:" withNewView:self->_detailView inParentView:?])
  {
    objc_storeStrong(&self->_detailView, view);
    self->_needsDetailViewConstraints = 1;
  }
}

- (void)setOverrideSecondarySubtitleFont:(id)font
{
  secondarySubtitleLabel = font;
  v5 = secondarySubtitleLabel;
  if (secondarySubtitleLabel)
  {
    secondarySubtitleLabel = self->_secondarySubtitleLabel;
    if (secondarySubtitleLabel)
    {
      v6 = v5;
      [(UILabel *)secondarySubtitleLabel setFont:v5];
      secondarySubtitleLabel = [(CSModalView *)self setNeedsLayout];
      v5 = v6;
    }
  }

  MEMORY[0x2821F96F8](secondarySubtitleLabel, v5);
}

- (void)setOverrideSecondarySubtitleTextColor:(id)color
{
  secondarySubtitleLabel = color;
  v5 = secondarySubtitleLabel;
  if (secondarySubtitleLabel)
  {
    secondarySubtitleLabel = self->_secondarySubtitleLabel;
    if (secondarySubtitleLabel)
    {
      v6 = v5;
      [(UILabel *)secondarySubtitleLabel setTextColor:v5];
      secondarySubtitleLabel = [(CSModalView *)self setNeedsLayout];
      v5 = v6;
    }
  }

  MEMORY[0x2821F96F8](secondarySubtitleLabel, v5);
}

- (void)layoutSubviews
{
  [(CSModalView *)self bounds];
  v4 = v3;
  [CSPageControl suggestedFrameForPageBounds:?];
  v6 = v5;
  view = [(CSStatusTextViewController *)self->_statusTextViewController view];
  [MEMORY[0x277D65E38] suggestedFrameForStatusView:view inView:self withInsets:{0.0, 0.0, v4 - v6, 0.0}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [view frame];
  v23.origin.x = v15;
  v23.origin.y = v16;
  v23.size.width = v17;
  v23.size.height = v18;
  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  if (!CGRectEqualToRect(v22, v23))
  {
    view2 = [(CSStatusTextViewController *)self->_statusTextViewController view];
    [view2 setFrame:{v8, v10, v12, v14}];

    self->_needsSecondaryActionConstraints = 1;
    [(CSModalView *)self setNeedsUpdateConstraints];
  }

  if (self->_detailView)
  {
    self->_needsDetailViewConstraints = 1;
    [(CSModalView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  v254[1] = *MEMORY[0x277D85DE8];
  v252.receiver = self;
  v252.super_class = CSModalView;
  [(CSModalView *)&v252 updateConstraints];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = self->_titleLabel;
  v5 = self->_subtitleLabel;
  v251 = self->_secondarySubtitleLabel;
  v6 = self->_primaryActionButton;
  v7 = self->_secondaryActionButton;
  v8 = self->_imageView;
  v249 = self->_detailView;
  [(CSModalView *)self _dateTimeFrame];
  v11 = v10;
  dateViewVerticalConstraint = self->_dateViewVerticalConstraint;
  v250 = v6;
  if (!dateViewVerticalConstraint)
  {
    v13 = v9;
    currentDevice5 = v4;
    heightAnchor = [(UILayoutGuide *)self->_dateViewLayoutGuide heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:v13];
    [v15 setActive:1];

    topAnchor = [(UILayoutGuide *)self->_dateViewLayoutGuide topAnchor];
    topAnchor2 = [(CSModalView *)self topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v11];
    v19 = self->_dateViewVerticalConstraint;
    self->_dateViewVerticalConstraint = v18;

    [(NSLayoutConstraint *)self->_dateViewVerticalConstraint setActive:1];
    topAnchor3 = [(UIView *)self->_centralGroupView topAnchor];
    topAnchor4 = [(UILayoutGuide *)self->_dateViewLayoutGuide topAnchor];
    v22 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    [v22 setActive:1];

    v6 = v250;
    dateViewVerticalConstraint = self->_dateViewVerticalConstraint;
  }

  [(NSLayoutConstraint *)dateViewVerticalConstraint setConstant:v11];
  [(CSModalView *)self _subtitleFont];
  v246 = v245 = v7;
  v248 = v8;
  if (v7 && self->_needsSecondaryActionConstraints)
  {
    centerXAnchor = [(UIButton *)v7 centerXAnchor];
    centerXAnchor2 = [(CSModalView *)self centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v25 setActive:1];

    leadingAnchor = [(UIButton *)v7 leadingAnchor];
    leadingAnchor2 = [(CSModalView *)self leadingAnchor];
    v28 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:8.0];
    [v28 setActive:1];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
LABEL_6:
      heightAnchor2 = [(UIButton *)v7 heightAnchor];
      [(UIButton *)v7 _continuousCornerRadius];
      v33 = [heightAnchor2 constraintEqualToConstant:v32 + v32];
      [v33 setActive:1];

      widthAnchor = [(UIButton *)v7 widthAnchor];
      v35 = [widthAnchor constraintGreaterThanOrEqualToConstant:104.0];
      [v35 setActive:1];

      widthAnchor2 = [(UIButton *)v7 widthAnchor];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
      v38 = [widthAnchor2 constraintLessThanOrEqualToConstant:CGRectGetWidth(v255)];
      [v38 setActive:1];

LABEL_7:
      v6 = v250;
      v39 = v250;
      if (v250 || (v39 = v251) != 0)
      {
        v40 = v39;
      }

      else
      {
        if (v5)
        {
          v54 = v5;
        }

        else
        {
          v54 = v4;
        }

        v40 = v54;
        if (!v40)
        {
          v42 = 0;
LABEL_11:
          currentDevice2 = [MEMORY[0x277D75418] currentDevice];
          userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

          if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
LABEL_12:
            bottomAnchor = [(UIButton *)v7 bottomAnchor];
LABEL_89:
            v76 = bottomAnchor;
            [(CSModalView *)self _positionBottomElementWithLayoutAnchor:bottomAnchor lessThanOrEqual:0];

            self->_needsSecondaryActionConstraints = 0;
            goto LABEL_90;
          }

          v51 = __sb__runningInSpringBoard();
          if (v51)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v52 = 0;
              v53 = 0;
              goto LABEL_45;
            }
          }

          else
          {
            currentDevice3 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice3 userInterfaceIdiom])
            {
              v52 = 0;
              v53 = 1;
              goto LABEL_45;
            }
          }

          v53 = v51 ^ 1;
          v61 = __sb__runningInSpringBoard();
          if (v61)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen2 _referenceBounds];
          }

          v52 = v61 ^ 1;
          BSSizeRoundForScale();
          if (v62 >= *(MEMORY[0x277D66E30] + 56))
          {
            v65 = 0;
            goto LABEL_80;
          }

LABEL_45:
          v63 = __sb__runningInSpringBoard();
          v64 = v63;
          if (v63)
          {
            if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
            {
              v65 = 1;
LABEL_79:
              v6 = v250;
LABEL_80:
              v75 = mainScreen2;
              if (v52)
              {
                goto LABEL_81;
              }

              goto LABEL_86;
            }
          }

          else
          {
            currentDevice4 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice4 userInterfaceIdiom])
            {
              v65 = 1;
LABEL_78:

              goto LABEL_79;
            }

            currentDevice11 = currentDevice4;
          }

          v72 = __sb__runningInSpringBoard();
          v73 = v72;
          if (v72)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen3 _referenceBounds];
          }

          BSSizeRoundForScale();
          v65 = v74 < *(MEMORY[0x277D66E30] + 40);
          if (v73)
          {
            if ((v64 & 1) == 0)
            {
LABEL_77:
              currentDevice4 = currentDevice11;
              goto LABEL_78;
            }
          }

          else
          {

            if ((v64 & 1) == 0)
            {
              goto LABEL_77;
            }
          }

          v6 = v250;
          v75 = mainScreen2;
          if (v52)
          {
LABEL_81:

            if ((v53 & 1) == 0)
            {
              goto LABEL_82;
            }

            goto LABEL_87;
          }

LABEL_86:
          if (!v53)
          {
LABEL_82:
            v7 = v245;
            if (!v65)
            {
              goto LABEL_12;
            }

LABEL_88:
            bottomAnchor = [(UIButton *)v7 firstBaselineAnchor];
            goto LABEL_89;
          }

LABEL_87:

          v7 = v245;
          if (!v65)
          {
            goto LABEL_12;
          }

          goto LABEL_88;
        }
      }

      topAnchor5 = [(UIButton *)v7 topAnchor];
      v42 = v40;
      bottomAnchor2 = [v40 bottomAnchor];
      v44 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:8.0];
      [v44 setActive:1];

      v6 = v250;
      goto LABEL_11;
    }

    v48 = __sb__runningInSpringBoard();
    if (v48)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v49 = 0;
        mainScreen4 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom])
      {
        v49 = 0;
        mainScreen4 = 1;
        goto LABEL_34;
      }
    }

    mainScreen4 = v48 ^ 1u;
    v55 = __sb__runningInSpringBoard();
    if (v55)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen2 _referenceBounds];
    }

    v49 = v55 ^ 1;
    BSSizeRoundForScale();
    if (v56 >= *(MEMORY[0x277D66E30] + 56))
    {
      v59 = 1;
      goto LABEL_66;
    }

LABEL_34:
    v57 = __sb__runningInSpringBoard();
    v58 = v57;
    if (v57)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v59 = 0;
        goto LABEL_66;
      }
    }

    else
    {
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom])
      {
        v59 = 0;
LABEL_65:

LABEL_66:
        v71 = mainScreen2;
        if (v49)
        {
LABEL_67:

          if ((mainScreen4 & 1) == 0)
          {
LABEL_68:
            v7 = v245;
            if (!v59)
            {
              goto LABEL_7;
            }

            goto LABEL_6;
          }

LABEL_62:

          v7 = v245;
          if (!v59)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

LABEL_61:
        if (!mainScreen4)
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      }

      mainScreen3 = currentDevice6;
    }

    currentDevice3 = currentDevice5;
    v67 = mainScreen4;
    v68 = __sb__runningInSpringBoard();
    v69 = v68;
    if (v68)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    BSSizeRoundForScale();
    v59 = v70 >= *(MEMORY[0x277D66E30] + 40);
    if ((v69 & 1) == 0)
    {
    }

    LODWORD(mainScreen4) = v67;
    if (v58)
    {
      currentDevice5 = currentDevice3;
      v71 = mainScreen2;
      if (v49)
      {
        goto LABEL_67;
      }

      goto LABEL_61;
    }

    currentDevice6 = mainScreen3;
    currentDevice5 = currentDevice3;
    goto LABEL_65;
  }

LABEL_90:
  if (v6 && self->_needsPrimaryActionConstraints)
  {
    centerXAnchor3 = [v6 centerXAnchor];
    centerXAnchor4 = [(UIView *)self->_centralGroupView centerXAnchor];
    v79 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v79 setActive:1];

    leadingAnchor3 = [(CSModalButton *)v250 leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_centralGroupView leadingAnchor];
    currentDevice7 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice7 userInterfaceIdiom];

    v84 = 32.0;
    if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v84 = 174.0;
    }

    v85 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:v84];
    [v85 setActive:1];

    trailingAnchor = [(CSModalButton *)v250 trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_centralGroupView trailingAnchor];
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice8 userInterfaceIdiom];

    v90 = v250;
    v91 = -32.0;
    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v91 = -174.0;
    }

    v92 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:v91];
    [v92 setActive:1];

    heightAnchor3 = [(CSModalButton *)v250 heightAnchor];
    [(CSModalButton *)v250 _continuousCornerRadius];
    v95 = [heightAnchor3 constraintEqualToConstant:v94 + v94];
    [v95 setActive:1];

    if (v5)
    {
      v96 = v5;
    }

    else
    {
      v96 = v4;
    }

    if (v251)
    {
      v96 = v251;
    }

    v97 = v96;
    if (v97)
    {
      v98 = [(CSModalView *)self _isPortraitForDelegate:WeakRetained];
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
      if (v98)
      {
        Height = CGRectGetHeight(*&v100);
      }

      else
      {
        Height = CGRectGetWidth(*&v100);
      }

      v106 = Height;

      topAnchor6 = [(CSModalButton *)v250 topAnchor];
      lastBaselineAnchor = [v97 lastBaselineAnchor];
      [v246 _scaledValueForValue:v106 * 4.0 / 100.0];
      v109 = [topAnchor6 constraintEqualToAnchor:lastBaselineAnchor constant:?];
      [v109 setActive:1];

      v90 = v250;
    }

    widthAnchor3 = [(CSModalButton *)v90 widthAnchor];
    currentDevice9 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom5 = [currentDevice9 userInterfaceIdiom];

    v113 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:dbl_21EC96430[(userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL) == 1]];
    [v113 setActive:1];

    widthAnchor4 = [(CSModalButton *)v250 widthAnchor];
    mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen6 _referenceBounds];
    v116 = [widthAnchor4 constraintLessThanOrEqualToConstant:CGRectGetWidth(v256)];
    [v116 setActive:1];

    v6 = v250;
    firstBaselineAnchor = [(CSModalButton *)v250 firstBaselineAnchor];
    [(CSModalView *)self _positionBottomElementWithLayoutAnchor:firstBaselineAnchor lessThanOrEqual:1];

    self->_needsPrimaryActionConstraints = 0;
    v105 = 1;
  }

  else
  {
    v105 = 0;
  }

  v118 = v249;
  if (v249 && self->_needsDetailViewConstraints)
  {
    centerXAnchor5 = [v249 centerXAnchor];
    centerXAnchor6 = [(CSModalView *)self centerXAnchor];
    v121 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v121 setActive:1];

    if (v4)
    {
      titleLabelBaselineConstraint = self->_titleLabelBaselineConstraint;
      if (titleLabelBaselineConstraint)
      {
        [(CSModalView *)self bounds];
        [(NSLayoutConstraint *)titleLabelBaselineConstraint setConstant:CGRectGetHeight(v257) * 0.4625];
      }

      else
      {
        firstBaselineAnchor2 = [v4 firstBaselineAnchor];
        topAnchor7 = [(CSModalView *)self topAnchor];
        [(CSModalView *)self bounds];
        v125 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor7 constant:CGRectGetHeight(v258) * 0.4625];
        v126 = self->_titleLabelBaselineConstraint;
        self->_titleLabelBaselineConstraint = v125;

        [(NSLayoutConstraint *)self->_titleLabelBaselineConstraint setActive:1];
      }

      v127 = [(CSModalView *)self _isPortraitForDelegate:WeakRetained];
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
      v118 = v249;
      if (v127)
      {
        Width = CGRectGetHeight(*&v129);
      }

      else
      {
        Width = CGRectGetWidth(*&v129);
      }

      v134 = Width;

      topAnchor8 = [v249 topAnchor];
      lastBaselineAnchor2 = [v4 lastBaselineAnchor];
      v137 = [topAnchor8 constraintEqualToAnchor:lastBaselineAnchor2 constant:v134 * 0.05 / 100.0];
      [v137 setActive:1];
    }

    widthAnchor5 = [v118 widthAnchor];
    mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen8 _referenceBounds];
    v140 = [widthAnchor5 constraintLessThanOrEqualToConstant:CGRectGetWidth(v259)];
    [v140 setActive:1];

    if ((v105 & 1) == 0)
    {
      firstBaselineAnchor3 = [v118 firstBaselineAnchor];
      [(CSModalView *)self _positionBottomElementWithLayoutAnchor:firstBaselineAnchor3 lessThanOrEqual:1];
    }

    self->_needsDetailViewConstraints = 0;
    v105 = 1;
  }

  if (v251 && self->_needsSecondarySubTitleConstraints)
  {
    if (!v5)
    {
LABEL_152:
      if ((v105 & 1) == 0)
      {
        lastBaselineAnchor3 = [v251 lastBaselineAnchor];
        [(CSModalView *)self _positionBottomElementWithLayoutAnchor:lastBaselineAnchor3 lessThanOrEqual:1];
      }

      self->_needsSecondarySubTitleConstraints = 0;
      v105 = 1;
      goto LABEL_155;
    }

    v242 = v105;
    firstBaselineAnchor4 = [v251 firstBaselineAnchor];
    lastBaselineAnchor4 = [v5 lastBaselineAnchor];
    currentDevice12 = 0x277D75000;
    currentDevice10 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom6 = [currentDevice10 userInterfaceIdiom];

    v147 = qword_21EC96000;
    v148 = 35.0;
    if ((userInterfaceIdiom6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v239 = 0;
      v236 = 0;
      v149 = 0;
      v150 = 0;
LABEL_143:
      [v246 _scaledValueForValue:v148];
      v155 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor4 constant:?];
      [v155 setActive:1];

      if (v150)
      {
      }

      if (v149)
      {
      }

      if (v236)
      {
      }

      if (v239)
      {
      }

      leadingAnchor5 = [v251 leadingAnchor];
      leadingAnchor6 = [v5 leadingAnchor];
      v158 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      [v158 setActive:1];

      trailingAnchor3 = [v251 trailingAnchor];
      trailingAnchor4 = [v5 trailingAnchor];
      v161 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      [v161 setActive:1];

      v6 = v250;
      v105 = v242;
      goto LABEL_152;
    }

    v151 = __sb__runningInSpringBoard();
    if (v151)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v239 = 0;
        v236 = 0;
        goto LABEL_136;
      }
    }

    else
    {
      currentDevice11 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice11 userInterfaceIdiom])
      {
        v236 = 0;
        v239 = 1;
        goto LABEL_136;
      }
    }

    v239 = v151 ^ 1;
    v152 = __sb__runningInSpringBoard();
    if (v152)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    v236 = v152 ^ 1;
    BSSizeRoundForScale();
    if (v153 >= *(MEMORY[0x277D66E30] + 56))
    {
      v149 = 0;
      v150 = 0;
      goto LABEL_143;
    }

LABEL_136:
    v154 = __sb__runningInSpringBoard();
    if (v154)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v149 = 0;
        v150 = 0;
        v148 = 25.0;
        goto LABEL_143;
      }
    }

    else
    {
      currentDevice12 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice12 userInterfaceIdiom])
      {
        v232 = currentDevice12;
        v150 = 0;
        v148 = 25.0;
        v149 = 1;
        goto LABEL_143;
      }
    }

    v232 = currentDevice12;
    v149 = v154 ^ 1;
    v227 = __sb__runningInSpringBoard();
    if (v227)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    v150 = v227 ^ 1;
    BSSizeRoundForScale();
    if (v228 >= *(MEMORY[0x277D66E30] + 40))
    {
      v148 = 35.0;
    }

    else
    {
      v148 = 25.0;
    }

    v147 = mainScreen10;
    goto LABEL_143;
  }

LABEL_155:
  if (!v5 || !self->_needsSubTitleConstraints)
  {
    goto LABEL_189;
  }

  if (v4)
  {
    v243 = v105;
    firstBaselineAnchor5 = [v5 firstBaselineAnchor];
    lastBaselineAnchor5 = [v4 lastBaselineAnchor];
    currentDevice14 = 0x277D75000;
    currentDevice13 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom7 = [currentDevice13 userInterfaceIdiom];

    v168 = qword_21EC96000;
    v169 = 35.0;
    if ((userInterfaceIdiom7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v240 = 0;
      v237 = 0;
      v170 = 0;
      v171 = 0;
LABEL_177:
      [v246 _scaledValueForValue:v169];
      v176 = [firstBaselineAnchor5 constraintEqualToAnchor:lastBaselineAnchor5 constant:?];
      [v176 setActive:1];

      if (v171)
      {
      }

      if (v170)
      {
      }

      if (v237)
      {
      }

      if (v240)
      {
      }

      leadingAnchor7 = [v5 leadingAnchor];
      leadingAnchor8 = [v4 leadingAnchor];
      v179 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      [v179 setActive:1];

      trailingAnchor5 = [v5 trailingAnchor];
      trailingAnchor6 = [v4 trailingAnchor];
      v182 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      [v182 setActive:1];

      v6 = v250;
      v105 = v243;
      goto LABEL_186;
    }

    v172 = __sb__runningInSpringBoard();
    if (v172)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v240 = 0;
        v237 = 0;
        goto LABEL_170;
      }
    }

    else
    {
      currentDevice11 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice11 userInterfaceIdiom])
      {
        v237 = 0;
        v240 = 1;
        goto LABEL_170;
      }
    }

    v240 = v172 ^ 1;
    v173 = __sb__runningInSpringBoard();
    if (v173)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen9 _referenceBounds];
    }

    v237 = v173 ^ 1;
    BSSizeRoundForScale();
    if (v174 >= *(MEMORY[0x277D66E30] + 56))
    {
      v170 = 0;
      v171 = 0;
      goto LABEL_177;
    }

LABEL_170:
    v175 = __sb__runningInSpringBoard();
    if (v175)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v170 = 0;
        v171 = 0;
        v169 = 25.0;
        goto LABEL_177;
      }
    }

    else
    {
      currentDevice14 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice14 userInterfaceIdiom])
      {
        v232 = currentDevice14;
        v171 = 0;
        v169 = 25.0;
        v170 = 1;
        goto LABEL_177;
      }
    }

    v232 = currentDevice14;
    v170 = v175 ^ 1;
    v229 = __sb__runningInSpringBoard();
    if (v229)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen10 _referenceBounds];
    }

    v171 = v229 ^ 1;
    BSSizeRoundForScale();
    if (v230 >= *(MEMORY[0x277D66E30] + 40))
    {
      v169 = 35.0;
    }

    else
    {
      v169 = 25.0;
    }

    v168 = mainScreen10;
    goto LABEL_177;
  }

LABEL_186:
  if ((v105 & 1) == 0)
  {
    lastBaselineAnchor6 = [v5 lastBaselineAnchor];
    [(CSModalView *)self _positionBottomElementWithLayoutAnchor:lastBaselineAnchor6 lessThanOrEqual:1];
  }

  self->_needsSubTitleConstraints = 0;
  v105 = 1;
LABEL_189:
  v184 = v248;
  if (v4 && self->_needsTitleConstraints)
  {
    v185 = MEMORY[0x277CCAAD0];
    v253 = @"margin";
    v186 = MEMORY[0x277CCABB0];
    currentDevice15 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom8 = [currentDevice15 userInterfaceIdiom];

    v189 = 32.0;
    if ((userInterfaceIdiom8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v189 = 174.0;
    }

    v190 = [v186 numberWithDouble:v189];
    v254[0] = v190;
    v191 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v254 forKeys:&v253 count:1];
    v192 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, v4, 0);
    v193 = [v185 constraintsWithVisualFormat:@"H:|-(margin)-[titleLabel]-(margin)-|" options:0 metrics:v191 views:v192];
    [v185 activateConstraints:v193];

    if ([(CSModalView *)self _isPortraitForDelegate:WeakRetained])
    {
      v194 = 20.0;
    }

    else
    {
      v194 = 8.0;
    }

    topAnchor9 = [v4 topAnchor];
    bottomAnchor3 = [(UILayoutGuide *)self->_dateViewLayoutGuide bottomAnchor];
    v197 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:bottomAnchor3 constant:v194];
    [v197 setActive:1];

    if ((v105 & 1) == 0)
    {
      lastBaselineAnchor7 = [v4 lastBaselineAnchor];
      [(CSModalView *)self _positionBottomElementWithLayoutAnchor:lastBaselineAnchor7 lessThanOrEqual:1];
    }

    self->_needsTitleConstraints = 0;
    v105 = 1;
    v6 = v250;
    v184 = v248;
  }

  if (v184 && self->_needsImageConstraints)
  {
    centerXAnchor7 = [v184 centerXAnchor];
    centerXAnchor8 = [(CSModalView *)self centerXAnchor];
    v201 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    [v201 setActive:1];

    if (v4)
    {
      bottomAnchor4 = [v184 bottomAnchor];
      firstBaselineAnchor6 = [v4 firstBaselineAnchor];
      currentDevice16 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom9 = [currentDevice16 userInterfaceIdiom];

      v206 = userInterfaceIdiom9 & 0xFFFFFFFFFFFFFFFBLL;
      v184 = v248;
      v207 = -52.0;
      if (v206 == 1)
      {
        v207 = -72.0;
      }

      v208 = [bottomAnchor4 constraintEqualToAnchor:firstBaselineAnchor6 constant:v207];
      [v208 setActive:1];
    }

    self->_needsImageConstraints = 0;
  }

  if ((v105 & 1) == 0)
  {
    v209 = SBLogCommon();
    if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
    {
      [(CSModalView *)v209 updateConstraints];
    }
  }

  v244 = v5 | v4 | v184;
  v210 = v4;
  [(UIView *)self->_centralGroupView removeConstraint:self->_centralGroupTopConstraint];
  [(UIView *)self->_centralGroupView removeConstraint:self->_centralGroupBottomConstraint];
  if (v4)
  {
    v211 = v4;
  }

  else
  {
    v211 = v5;
  }

  if (!v4)
  {
    v210 = v184;
  }

  if (v184)
  {
    v211 = v184;
  }

  if (v249)
  {
    v212 = v249;
  }

  else
  {
    v212 = v6;
  }

  if (v249)
  {
    v213 = v249;
  }

  else
  {
    v213 = v251;
  }

  if (v251)
  {
    v212 = v251;
  }

  if (!v244)
  {
    v211 = v212;
  }

  v214 = v211;
  if (v6)
  {
    v215 = v6;
  }

  else
  {
    v215 = v213;
  }

  v216 = v6;
  if (v5)
  {
    v217 = v5;
  }

  else
  {
    v217 = v210;
  }

  if (!(v251 | v6 | v249))
  {
    v215 = v217;
  }

  v218 = v215;
  topAnchor10 = [v214 topAnchor];
  topAnchor11 = [(UIView *)self->_centralGroupView topAnchor];
  v221 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
  centralGroupTopConstraint = self->_centralGroupTopConstraint;
  self->_centralGroupTopConstraint = v221;

  bottomAnchor5 = [v218 bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_centralGroupView bottomAnchor];
  v225 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  centralGroupBottomConstraint = self->_centralGroupBottomConstraint;
  self->_centralGroupBottomConstraint = v225;

  [(NSLayoutConstraint *)self->_centralGroupTopConstraint setActive:1];
  [(NSLayoutConstraint *)self->_centralGroupBottomConstraint setActive:1];
}

- (void)_positionBottomElementWithLayoutAnchor:(id)anchor lessThanOrEqual:(BOOL)equal
{
  equalCopy = equal;
  anchorCopy = anchor;
  if (self->_showsStatusText)
  {
    view = [(CSStatusTextViewController *)self->_statusTextViewController view];
    topAnchor = [view topAnchor];

    v8 = -20.0;
  }

  else
  {
    topAnchor = [(CSModalView *)self bottomAnchor];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [(CSModalView *)self _isPortraitForDelegate:WeakRetained];

    [objc_opt_class() _bottomBaselineOffsetForPortrait:v10];
    v8 = -v11;
  }

  if (equalCopy)
  {
    [anchorCopy constraintLessThanOrEqualToAnchor:topAnchor constant:v8];
  }

  else
  {
    [anchorCopy constraintEqualToAnchor:topAnchor constant:v8];
  }
  v12 = ;
  [v12 setActive:1];
}

- (void)_setTitleLabel:(id)label
{
  labelCopy = label;
  if ([CSModalView _replaceView:"_replaceView:withNewView:inParentView:" withNewView:self->_titleLabel inParentView:?])
  {
    objc_storeStrong(&self->_titleLabel, label);
    self->_needsTitleConstraints = 1;
  }
}

- (void)_setSubtitleLabel:(id)label
{
  labelCopy = label;
  if ([CSModalView _replaceView:"_replaceView:withNewView:inParentView:" withNewView:self->_subtitleLabel inParentView:?])
  {
    objc_storeStrong(&self->_subtitleLabel, label);
    self->_needsSubTitleConstraints = 1;
  }
}

- (void)_setSecondarySubtitleLabel:(id)label
{
  labelCopy = label;
  if ([CSModalView _replaceView:"_replaceView:withNewView:inParentView:" withNewView:self->_secondarySubtitleLabel inParentView:?])
  {
    objc_storeStrong(&self->_secondarySubtitleLabel, label);
    self->_needsSecondarySubTitleConstraints = 1;
  }
}

- (void)_setPrimaryActionButton:(id)button
{
  buttonCopy = button;
  if ([CSModalView _replaceView:"_replaceView:withNewView:inParentView:" withNewView:self->_primaryActionButton inParentView:?])
  {
    objc_storeStrong(&self->_primaryActionButton, button);
    self->_needsPrimaryActionConstraints = 1;
  }
}

- (void)_setSecondaryActionButton:(id)button
{
  buttonCopy = button;
  if ([CSModalView _replaceView:"_replaceView:withNewView:inParentView:" withNewView:self->_secondaryActionButton inParentView:?])
  {
    objc_storeStrong(&self->_secondaryActionButton, button);
    self->_needsSecondaryActionConstraints = 1;
  }
}

- (void)_setImageView:(id)view
{
  viewCopy = view;
  if ([CSModalView _replaceView:"_replaceView:withNewView:inParentView:" withNewView:self->_imageView inParentView:?])
  {
    objc_storeStrong(&self->_imageView, view);
    self->_needsImageConstraints = 1;
  }
}

- (id)_preferredContentSizeCategoryCappedToSize:(id)size
{
  v3 = _preferredContentSizeCategoryCappedToSize__onceToken;
  sizeCopy = size;
  if (v3 != -1)
  {
    [CSModalView _preferredContentSizeCategoryCappedToSize:];
  }

  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  v6 = [_preferredContentSizeCategoryCappedToSize__fontSizes indexOfObject:preferredContentSizeCategory];
  v7 = [_preferredContentSizeCategoryCappedToSize__fontSizes indexOfObject:sizeCopy];

  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = [_preferredContentSizeCategoryCappedToSize__fontSizes objectAtIndexedSubscript:v8];

  return v9;
}

void __57__CSModalView__preferredContentSizeCategoryCappedToSize___block_invoke()
{
  v8[13] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D76858];
  v8[0] = *MEMORY[0x277D76830];
  v8[1] = v0;
  v1 = *MEMORY[0x277D76838];
  v8[2] = *MEMORY[0x277D76840];
  v8[3] = v1;
  v2 = *MEMORY[0x277D76820];
  v8[4] = *MEMORY[0x277D76828];
  v8[5] = v2;
  v3 = *MEMORY[0x277D76808];
  v8[6] = *MEMORY[0x277D76818];
  v8[7] = v3;
  v4 = *MEMORY[0x277D767F8];
  v8[8] = *MEMORY[0x277D76800];
  v8[9] = v4;
  v5 = *MEMORY[0x277D767E8];
  v8[10] = *MEMORY[0x277D767F0];
  v8[11] = v5;
  v8[12] = *MEMORY[0x277D76860];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:13];
  v7 = _preferredContentSizeCategoryCappedToSize__fontSizes;
  _preferredContentSizeCategoryCappedToSize__fontSizes = v6;
}

- (id)_fontWithTextStyle:(id)style cappedToSize:(id)size
{
  styleCopy = style;
  v7 = [(CSModalView *)self _preferredContentSizeCategoryCappedToSize:size];
  v8 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v7];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:styleCopy compatibleWithTraitCollection:v8];

  return v9;
}

- (id)_titleFont
{
  v5 = *MEMORY[0x277D76A00];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  userInterfaceIdiom = __sb__runningInSpringBoard();
  if (userInterfaceIdiom)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v8 = 0;
      v11 = 0;
      goto LABEL_13;
    }

LABEL_9:
    v11 = userInterfaceIdiom ^ 1;
    currentDevice2 = __sb__runningInSpringBoard();
    if (currentDevice2)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      userInterfaceIdiom = [MEMORY[0x277D759A0] mainScreen];
      [userInterfaceIdiom _referenceBounds];
    }

    v8 = currentDevice2 ^ 1;
    BSSizeRoundForScale();
    if (v12 >= *(MEMORY[0x277D66E30] + 56))
    {
      v9 = 0;
      v10 = 0;
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom])
  {
    goto LABEL_9;
  }

  v8 = 0;
  v11 = 1;
LABEL_13:
  mainScreen = __sb__runningInSpringBoard();
  if (mainScreen)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v9 = 0;
      v10 = 0;
      v13 = MEMORY[0x277D76808];
      goto LABEL_26;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom])
    {
      v10 = 0;
      v13 = MEMORY[0x277D76808];
      v9 = 1;
      goto LABEL_26;
    }
  }

  v9 = mainScreen ^ 1;
  v14 = __sb__runningInSpringBoard();
  if (v14)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  v10 = v14 ^ 1;
  BSSizeRoundForScale();
  if (v15 < *(MEMORY[0x277D66E30] + 40))
  {
    v13 = MEMORY[0x277D76808];
    goto LABEL_26;
  }

LABEL_25:
  v13 = MEMORY[0x277D76800];
LABEL_26:
  v16 = [(CSModalView *)self _fontWithTextStyle:v5 cappedToSize:*v13];
  if (v10)
  {

    if (!v9)
    {
      goto LABEL_28;
    }
  }

  else if (!v9)
  {
LABEL_28:
    if (v8)
    {
      goto LABEL_29;
    }

LABEL_33:
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (!v8)
  {
    goto LABEL_33;
  }

LABEL_29:

  if (v11)
  {
LABEL_34:
  }

LABEL_35:

  return v16;
}

- (BOOL)_replaceView:(id)view withNewView:(id)newView inParentView:(id)parentView
{
  newViewCopy = newView;
  parentViewCopy = parentView;
  if (view != newViewCopy)
  {
    [view removeFromSuperview];
    if (newViewCopy)
    {
      [parentViewCopy addSubview:newViewCopy];
      [newViewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    [(CSModalView *)self setNeedsUpdateConstraints];
  }

  return view != newViewCopy;
}

- (id)_labelWithNumberOfLines:(unint64_t)lines font:(id)font
{
  v5 = MEMORY[0x277D756B8];
  fontCopy = font;
  v7 = objc_alloc_init(v5);
  [v7 setTextAlignment:1];
  [v7 setFont:fontCopy];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v7 setTextColor:whiteColor];

  [v7 setNumberOfLines:lines];
  [v7 setAdjustsFontSizeToFitWidth:1];
  [v7 setContentMode:5];

  return v7;
}

- (void)_createPrimaryActionButtonIfNecessary
{
  if (!self->_primaryActionButton)
  {
    v4 = [CSModalButton alloc];
    v8 = [(CSModalButton *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    titleLabel = [(CSModalButton *)v8 titleLabel];
    _primaryActionFont = [(CSModalView *)self _primaryActionFont];
    [titleLabel setFont:_primaryActionFont];

    [(CSModalButton *)v8 addTarget:self action:sel__buttonTapped_ forControlEvents:64];
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    [(CSModalButton *)v8 setBackgroundColor:systemOrangeColor];

    [(CSModalButton *)v8 _setContinuousCornerRadius:30.0];
    [(CSModalView *)self _setPrimaryActionButton:v8];
  }
}

- (void)_createAppropriateSecondaryActionButtonIfNecessary
{
  if (self->_wantsEnhancedSecondaryActionButton)
  {
    [(CSModalView *)self _createEnhancedSecondaryActionButtonIfNecessary];
  }

  else
  {
    [(CSModalView *)self _createSecondaryActionButtonIfNecessary];
  }
}

- (void)_createSecondaryActionButtonIfNecessary
{
  if (self->_secondaryActionButton)
  {
    return;
  }

  currentDevice3 = 0x277D75000;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  mainScreen = 0x277D75000uLL;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    goto LABEL_3;
  }

  v12 = __sb__runningInSpringBoard();
  if (v12)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom])
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_14;
    }
  }

  v14 = v12 ^ 1;
  v15 = __sb__runningInSpringBoard();
  if (v15)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    currentDevice = [MEMORY[0x277D759A0] mainScreen];
    [currentDevice _referenceBounds];
  }

  v13 = v15 ^ 1;
  BSSizeRoundForScale();
  if (v16 >= *(MEMORY[0x277D66E30] + 56))
  {
    v19 = 0;
    if (v13)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

LABEL_14:
  v17 = __sb__runningInSpringBoard();
  v18 = v17;
  if (v17)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v19 = 1;
      if (v13)
      {
        goto LABEL_34;
      }

LABEL_22:
      if (!v14)
      {
        goto LABEL_35;
      }

LABEL_23:

      if (v19)
      {
        goto LABEL_36;
      }

      goto LABEL_3;
    }
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice3 userInterfaceIdiom])
    {
      v19 = 1;
      goto LABEL_33;
    }
  }

  v20 = __sb__runningInSpringBoard();
  v21 = v20;
  if (v20)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v19 = v22 < *(MEMORY[0x277D66E30] + 40);
  if ((v21 & 1) == 0)
  {
  }

  mainScreen = 0x277D75000;
  if ((v18 & 1) == 0)
  {
LABEL_33:

    if (v13)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_34:

  if (v14)
  {
    goto LABEL_23;
  }

LABEL_35:
  if (v19)
  {
LABEL_36:
    v28 = [MEMORY[0x277D75220] buttonWithType:1];
    goto LABEL_37;
  }

LABEL_3:
  v9 = [CSModalButton alloc];
  v28 = [(CSModalButton *)v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v10 = [*(mainScreen + 840) colorWithWhite:1.0 alpha:0.6];
  [(CSModalButton *)v28 setBackgroundColor:v10];

  [(CSModalButton *)v28 _setContinuousCornerRadius:24.0];
  v11 = objc_opt_new();
  [(CSModalButton *)v28 setVisualEffect:v11];

LABEL_37:
  titleLabel = [(CSModalButton *)v28 titleLabel];
  _secondaryActionFont = [(CSModalView *)self _secondaryActionFont];
  [titleLabel setFont:_secondaryActionFont];

  titleLabel2 = [(CSModalButton *)v28 titleLabel];
  [titleLabel2 setNumberOfLines:1];

  titleLabel3 = [(CSModalButton *)v28 titleLabel];
  [titleLabel3 setAdjustsFontSizeToFitWidth:0];

  whiteColor = [*(mainScreen + 840) whiteColor];
  [(CSModalButton *)v28 setTitleColor:whiteColor forState:0];

  [(CSModalButton *)v28 addTarget:self action:sel__buttonTapped_ forControlEvents:64];
  [(CSModalView *)self _setSecondaryActionButton:v28];
}

- (void)_createEnhancedSecondaryActionButtonIfNecessary
{
  if (!self->_secondaryActionButton)
  {
    v4 = [CSEnhancedModalButton alloc];
    v9 = [(CSEnhancedModalButton *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(CSEnhancedModalButton *)v9 _setContinuousCornerRadius:24.0];
    titleLabel = [(CSEnhancedModalButton *)v9 titleLabel];
    _secondaryActionFont = [(CSModalView *)self _secondaryActionFont];
    [titleLabel setFont:_secondaryActionFont];

    titleLabel2 = [(CSEnhancedModalButton *)v9 titleLabel];
    [titleLabel2 setNumberOfLines:1];

    titleLabel3 = [(CSEnhancedModalButton *)v9 titleLabel];
    [titleLabel3 setAdjustsFontSizeToFitWidth:0];

    [(CSEnhancedModalButton *)v9 addTarget:self action:sel__buttonTapped_ forControlEvents:64];
    [(CSModalView *)self _setSecondaryActionButton:v9];
  }
}

- (void)_buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_secondaryActionButton == tappedCopy)
  {
    [WeakRetained handleSecondaryActionForView:self];
  }

  else if (self->_primaryActionButton == tappedCopy)
  {
    [WeakRetained handlePrimaryActionForView:self];
  }
}

- (CGRect)_dateTimeFrame
{
  [(CSModalView *)self bounds];
  CGRectGetWidth(v8);
  [(CSModalView *)self bounds];
  [(CSModalView *)self bounds];
  UIRectCenteredXInRect();
  CGRectGetMinX(v9);
  [(CSModalView *)self _timeLabelBaselineY];
  [(CSModalView *)self _timeLabelBaselineY];
  [(CSModalView *)self _timeToSubtitleLabelBaselineDifferenceY];
  [MEMORY[0x277D65EB0] timeFontMetrics];
  [MEMORY[0x277D65EA8] labelFontMetrics];
  SBFMainScreenScale();

  BSRectRoundForScale();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)_timeLabelBaselineY
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  currentDevice2 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL);
  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (currentDevice2 == 1)
  {
    if (v6)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_25;
      }

LABEL_10:
      v8 = __sb__runningInSpringBoard();
      v9 = v8;
      if (v8)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      BSSizeRoundForScale();
      if (v9)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] == 1)
    {
      goto LABEL_10;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (!v6)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom])
    {
      goto LABEL_24;
    }

LABEL_18:
    v10 = __sb__runningInSpringBoard();
    v11 = v10;
    if (v10)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v11)
    {
LABEL_23:
      if (v7)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_18;
  }

LABEL_25:
  SBFMainScreenScale();

  BSFloatRoundForScale();
  return result;
}

- (double)_timeToSubtitleLabelBaselineDifferenceY
{
  if (_timeToSubtitleLabelBaselineDifferenceY_onceToken != -1)
  {
    [CSModalView _timeToSubtitleLabelBaselineDifferenceY];
  }

  if (BSFloatIsZero())
  {
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      [MEMORY[0x277D65EA8] labelFontMetrics];
      _timeToSubtitleLabelBaselineDifferenceY__timeToSubtitleLabelBaselineDifferenceY = v5;
      return *&_timeToSubtitleLabelBaselineDifferenceY__timeToSubtitleLabelBaselineDifferenceY;
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v10 = 0x4042000000000000;
      goto LABEL_11;
    }

    v8 = __sb__runningInSpringBoard();
    v9 = v8;
    if (v8)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v10 = 0x4044000000000000;
LABEL_11:
        _timeToSubtitleLabelBaselineDifferenceY__timeToSubtitleLabelBaselineDifferenceY = v10;
        return *&_timeToSubtitleLabelBaselineDifferenceY__timeToSubtitleLabelBaselineDifferenceY;
      }
    }

    else
    {
      userInterfaceIdiom = [MEMORY[0x277D75418] currentDevice];
      if ([userInterfaceIdiom userInterfaceIdiom] != 1)
      {
        _timeToSubtitleLabelBaselineDifferenceY__timeToSubtitleLabelBaselineDifferenceY = 0x4044000000000000;
LABEL_22:

        return *&_timeToSubtitleLabelBaselineDifferenceY__timeToSubtitleLabelBaselineDifferenceY;
      }
    }

    v11 = __sb__runningInSpringBoard();
    v12 = v11;
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    v13 = 40.0;
    if (v14 >= *(MEMORY[0x277D66E30] + 280))
    {
      v13 = 46.0;
    }

    _timeToSubtitleLabelBaselineDifferenceY__timeToSubtitleLabelBaselineDifferenceY = *&v13;
    if ((v12 & 1) == 0)
    {
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  return *&_timeToSubtitleLabelBaselineDifferenceY__timeToSubtitleLabelBaselineDifferenceY;
}

void __54__CSModalView__timeToSubtitleLabelBaselineDifferenceY__block_invoke()
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v0 = *MEMORY[0x277D76810];
  v1 = [MEMORY[0x277CCABD8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_39];
}

- (BOOL)_isPortraitForDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector())
  {
    isPortrait = [delegateCopy isPortrait];
  }

  else
  {
    isPortrait = [(CSModalView *)self _hasPortraitDimensions];
  }

  v6 = isPortrait;

  return v6;
}

- (BOOL)_hasPortraitDimensions
{
  [(CSModalView *)self bounds];
  CGRectGetHeight(v5);
  [(CSModalView *)self bounds];
  CGRectGetWidth(v6);

  return BSFloatGreaterThanOrEqualToFloat();
}

+ (double)_bottomBaselineOffsetForPortrait:(BOOL)portrait
{
  if (portrait)
  {

    [self _modalViewBottomBaselineOffsetPortrait];
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    result = 90.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      return 21.0;
    }
  }

  return result;
}

+ (double)_modalViewBottomBaselineOffsetPortrait
{
  v6 = +[CSQuickActionsViewController deviceSupportsButtons];
  v7 = __sb__runningInSpringBoard();
  v8 = v7;
  if (v6)
  {
    mainScreen55 = &CSQuickActionButtonInsetY;
    if (v7)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v451[12] = 0;
        goto LABEL_18;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        LODWORD(v451[12]) = 0;
        BYTE4(v451[12]) = 1;
        goto LABEL_18;
      }
    }

    BYTE4(v451[12]) = v8 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v10 = __sb__runningInSpringBoard();
      if (v10)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen _referenceBounds];
      }

      LODWORD(v451[12]) = v10 ^ 1;
      BSSizeRoundForScale();
      if (v38 == *(MEMORY[0x277D66E30] + 288) && v37 == *(MEMORY[0x277D66E30] + 296))
      {
        memset(v453, 0, sizeof(v453));
        v422 = 0;
        v424 = 0;
        v426 = 0;
        v428 = 0;
        v430 = 0;
        v431 = 0;
        v433 = 0;
        v435 = 0;
        v437 = 0;
        v439 = 0;
        v441 = 0;
        v443 = 0;
        v445 = 0;
        v447 = 0;
        v449 = 0;
        memset(v451, 0, 96);
        v26 = &qword_21EC96320;
        goto LABEL_131;
      }
    }

    else
    {
      LODWORD(v451[12]) = 0;
    }

LABEL_18:
    v12 = __sb__runningInSpringBoard();
    if (v12)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v451[11] = 0;
        goto LABEL_36;
      }
    }

    else
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] != 1)
      {
        v451[11] = 0x100000000;
        goto LABEL_36;
      }
    }

    HIDWORD(v451[11]) = v12 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v13 = __sb__runningInSpringBoard();
      if (v13)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      LODWORD(v451[11]) = v13 ^ 1;
      BSSizeRoundForScale();
      if (v43 >= *(MEMORY[0x277D66E30] + 440))
      {
        memset(v453, 0, sizeof(v453));
        v422 = 0;
        v424 = 0;
        v426 = 0;
        v428 = 0;
        v430 = 0;
        v431 = 0;
        v433 = 0;
        v435 = 0;
        v437 = 0;
        v439 = 0;
        v441 = 0;
        v443 = 0;
        v445 = 0;
        v447 = 0;
        v449 = 0;
        memset(v451, 0, 88);
        v26 = &qword_21EC96348;
        goto LABEL_131;
      }
    }

    else
    {
      LODWORD(v451[11]) = 0;
    }

LABEL_36:
    v15 = __sb__runningInSpringBoard();
    if (v15)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v451[10] = 0;
        goto LABEL_54;
      }
    }

    else
    {
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        v451[10] = 0x100000000;
        goto LABEL_54;
      }
    }

    HIDWORD(v451[10]) = v15 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v16 = __sb__runningInSpringBoard();
      if (v16)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      LODWORD(v451[10]) = v16 ^ 1;
      BSSizeRoundForScale();
      if (v45 >= *(MEMORY[0x277D66E30] + 376))
      {
        memset(v453, 0, sizeof(v453));
        v422 = 0;
        v424 = 0;
        v426 = 0;
        v428 = 0;
        v430 = 0;
        v431 = 0;
        v433 = 0;
        v435 = 0;
        v437 = 0;
        v439 = 0;
        v441 = 0;
        v443 = 0;
        v445 = 0;
        v447 = 0;
        v449 = 0;
        memset(v451, 0, 80);
        v26 = &qword_21EC96338;
        goto LABEL_131;
      }
    }

    else
    {
      LODWORD(v451[10]) = 0;
    }

LABEL_54:
    v18 = __sb__runningInSpringBoard();
    if (v18)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v451[9] = 0;
        goto LABEL_71;
      }
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        v451[9] = 0x100000000;
        goto LABEL_71;
      }
    }

    HIDWORD(v451[9]) = v18 ^ 1;
    v19 = __sb__runningInSpringBoard();
    if (v19)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    LODWORD(v451[9]) = v19 ^ 1;
    BSSizeRoundForScale();
    if (v21 >= *(MEMORY[0x277D66E30] + 280))
    {
      memset(v453, 0, sizeof(v453));
      v422 = 0;
      v424 = 0;
      v426 = 0;
      v428 = 0;
      v430 = 0;
      v431 = 0;
      v433 = 0;
      v435 = 0;
      v437 = 0;
      v439 = 0;
      v441 = 0;
      v443 = 0;
      v445 = 0;
      v447 = 0;
      v449 = 0;
      memset(v451, 0, 72);
      v26 = &qword_21EC96340;
      goto LABEL_131;
    }

LABEL_71:
    v22 = __sb__runningInSpringBoard();
    if (v22)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v451[8] = 0;
        goto LABEL_91;
      }
    }

    else
    {
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        v451[8] = 0x100000000;
        goto LABEL_91;
      }
    }

    HIDWORD(v451[8]) = v22 ^ 1;
    v23 = __sb__runningInSpringBoard();
    if (v23)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    LODWORD(v451[8]) = v23 ^ 1;
    BSSizeRoundForScale();
    if (v32 >= *(MEMORY[0x277D66E30] + 264))
    {
      memset(v453, 0, sizeof(v453));
      v422 = 0;
      v424 = 0;
      v426 = 0;
      v428 = 0;
      v430 = 0;
      v431 = 0;
      v433 = 0;
      v435 = 0;
      v437 = 0;
      v439 = 0;
      v441 = 0;
      v443 = 0;
      v445 = 0;
      v447 = 0;
      v449 = 0;
      memset(v451, 0, 64);
      v26 = &qword_21EC96330;
      goto LABEL_131;
    }

LABEL_91:
    v33 = __sb__runningInSpringBoard();
    if (v33)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v451[7] = 0;
        goto LABEL_551;
      }
    }

    else
    {
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        v451[7] = 0x100000000;
        goto LABEL_551;
      }
    }

    HIDWORD(v451[7]) = v33 ^ 1;
    v34 = __sb__runningInSpringBoard();
    if (v34)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    LODWORD(v451[7]) = v34 ^ 1;
    BSSizeRoundForScale();
    if (v75 >= *(MEMORY[0x277D66E30] + 248))
    {
      memset(v453, 0, sizeof(v453));
      v422 = 0;
      v424 = 0;
      v426 = 0;
      v428 = 0;
      v430 = 0;
      v431 = 0;
      v433 = 0;
      v435 = 0;
      v437 = 0;
      v439 = 0;
      v441 = 0;
      v443 = 0;
      v445 = 0;
      v447 = 0;
      v449 = 0;
      memset(v451, 0, 56);
      v26 = &qword_21EC96328;
      goto LABEL_131;
    }

LABEL_551:
    v76 = __sb__runningInSpringBoard();
    if (v76)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_553;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice7 userInterfaceIdiom] != 1)
      {
LABEL_553:
        HIDWORD(v451[6]) = v76 ^ 1;
        if (!_SBF_Private_IsD94Like())
        {
LABEL_557:
          *(&v451[5] + 4) = 0;
          goto LABEL_609;
        }

        v77 = __sb__runningInSpringBoard();
        if (v77)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_557;
          }
        }

        else
        {
          currentDevice8 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice8 userInterfaceIdiom])
          {
            HIDWORD(v451[5]) = 0;
            LODWORD(v451[6]) = 1;
            goto LABEL_609;
          }
        }

        LODWORD(v451[6]) = v77 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v82 = __sb__runningInSpringBoard();
          if (v82)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen7 _referenceBounds];
          }

          HIDWORD(v451[5]) = v82 ^ 1;
          BSSizeRoundForScale();
          if (v90 >= *(MEMORY[0x277D66E30] + 200))
          {
            memset(v453, 0, sizeof(v453));
            v422 = 0;
            v424 = 0;
            v426 = 0;
            v428 = 0;
            v430 = 0;
            v431 = 0;
            v433 = 0;
            v435 = 0;
            v437 = 0;
            v439 = 0;
            v441 = 0;
            v443 = 0;
            v445 = 0;
            v447 = 0;
            v449 = 0;
            memset(v451, 0, 44);
            v26 = &qword_21EC962F8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v451[5]) = 0;
        }

LABEL_609:
        v83 = __sb__runningInSpringBoard();
        if (v83)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v451[4] + 4) = 0;
            goto LABEL_619;
          }
        }

        else
        {
          currentDevice9 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice9 userInterfaceIdiom])
          {
            HIDWORD(v451[4]) = 0;
            LODWORD(v451[5]) = 1;
            goto LABEL_619;
          }
        }

        LODWORD(v451[5]) = v83 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v84 = __sb__runningInSpringBoard();
          if (v84)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen8 _referenceBounds];
          }

          HIDWORD(v451[4]) = v84 ^ 1;
          BSSizeRoundForScale();
          if (v85 >= *(MEMORY[0x277D66E30] + 200))
          {
            goto LABEL_623;
          }
        }

        else
        {
          HIDWORD(v451[4]) = 0;
        }

LABEL_619:
        if (_SBF_Private_IsD94Like())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v426 = 0;
          v428 = 0;
          v430 = 0;
          v431 = 0;
          v433 = 0;
          v435 = 0;
          v437 = 0;
          v439 = 0;
          v441 = 0;
          v443 = 0;
          v445 = 0;
          v447 = 0;
          v449 = 0;
          memset(v451, 0, 36);
          v26 = &qword_21EC96300;
          goto LABEL_131;
        }

LABEL_623:
        if (!_SBF_Private_IsD64Like())
        {
LABEL_627:
          *(&v451[3] + 4) = 0;
          goto LABEL_702;
        }

        v86 = __sb__runningInSpringBoard();
        if (v86)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_627;
          }
        }

        else
        {
          currentDevice10 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            HIDWORD(v451[3]) = 0;
            LODWORD(v451[4]) = 1;
            goto LABEL_702;
          }
        }

        LODWORD(v451[4]) = v86 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v95 = __sb__runningInSpringBoard();
          if (v95)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen9 _referenceBounds];
          }

          HIDWORD(v451[3]) = v95 ^ 1;
          BSSizeRoundForScale();
          if (v109 >= *(MEMORY[0x277D66E30] + 136))
          {
            memset(v453, 0, sizeof(v453));
            v422 = 0;
            v424 = 0;
            v426 = 0;
            v428 = 0;
            v430 = 0;
            v431 = 0;
            v433 = 0;
            v435 = 0;
            v437 = 0;
            v439 = 0;
            v441 = 0;
            v443 = 0;
            v445 = 0;
            v447 = 0;
            v449 = 0;
            memset(v451, 0, 28);
            v26 = &qword_21EC96308;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v451[3]) = 0;
        }

LABEL_702:
        v96 = __sb__runningInSpringBoard();
        if (v96)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v451[2] + 4) = 0;
            goto LABEL_712;
          }
        }

        else
        {
          currentDevice11 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice11 userInterfaceIdiom])
          {
            HIDWORD(v451[2]) = 0;
            LODWORD(v451[3]) = 1;
            goto LABEL_712;
          }
        }

        LODWORD(v451[3]) = v96 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v97 = __sb__runningInSpringBoard();
          if (v97)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen10 _referenceBounds];
          }

          HIDWORD(v451[2]) = v97 ^ 1;
          BSSizeRoundForScale();
          if (v98 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_716;
          }
        }

        else
        {
          HIDWORD(v451[2]) = 0;
        }

LABEL_712:
        if (_SBF_Private_IsD64Like())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v426 = 0;
          v428 = 0;
          v430 = 0;
          v431 = 0;
          v433 = 0;
          v435 = 0;
          v437 = 0;
          v439 = 0;
          v441 = 0;
          v443 = 0;
          v445 = 0;
          v447 = 0;
          v449 = 0;
          memset(v451, 0, 20);
          v26 = &qword_21EC96310;
          goto LABEL_131;
        }

LABEL_716:
        v99 = __sb__runningInSpringBoard();
        if (v99)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(&v451[1] + 4) = 0;
            goto LABEL_726;
          }
        }

        else
        {
          currentDevice12 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            HIDWORD(v451[1]) = 0;
            LODWORD(v451[2]) = 1;
            goto LABEL_726;
          }
        }

        LODWORD(v451[2]) = v99 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v100 = __sb__runningInSpringBoard();
          if (v100)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen11 _referenceBounds];
          }

          HIDWORD(v451[1]) = v100 ^ 1;
          BSSizeRoundForScale();
          if (v106 >= *(MEMORY[0x277D66E30] + 136))
          {
            memset(v453, 0, sizeof(v453));
            v422 = 0;
            v424 = 0;
            v426 = 0;
            v428 = 0;
            v430 = 0;
            v431 = 0;
            v433 = 0;
            v435 = 0;
            v437 = 0;
            v439 = 0;
            v441 = 0;
            v443 = 0;
            v445 = 0;
            v447 = 0;
            v449 = 0;
            v451[0] = 0;
            LODWORD(v451[1]) = 0;
            v26 = &qword_21EC962E8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v451[1]) = 0;
        }

LABEL_726:
        v101 = __sb__runningInSpringBoard();
        if (v101)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            *(v451 + 4) = 0;
            goto LABEL_776;
          }
        }

        else
        {
          currentDevice13 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice13 userInterfaceIdiom])
          {
            HIDWORD(v451[0]) = 0;
            LODWORD(v451[1]) = 1;
            goto LABEL_776;
          }
        }

        LODWORD(v451[1]) = v101 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v104 = __sb__runningInSpringBoard();
          if (v104)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          HIDWORD(v451[0]) = v104 ^ 1;
          BSSizeRoundForScale();
          if (v113 >= *(MEMORY[0x277D66E30] + 136))
          {
            goto LABEL_812;
          }
        }

        else
        {
          HIDWORD(v451[0]) = 0;
        }

LABEL_776:
        if (_SBF_Private_IsD54())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v426 = 0;
          v428 = 0;
          v430 = 0;
          v431 = 0;
          v433 = 0;
          v435 = 0;
          v437 = 0;
          v439 = 0;
          v441 = 0;
          v443 = 0;
          v445 = 0;
          v447 = 0;
          v449 = 0;
          LODWORD(v451[0]) = 0;
          v26 = &qword_21EC962F0;
          goto LABEL_131;
        }

LABEL_812:
        v114 = __sb__runningInSpringBoard();
        if (v114)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v449) = 0;
            LODWORD(v451[0]) = 0;
            goto LABEL_840;
          }
        }

        else
        {
          currentDevice14 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
          {
            HIDWORD(v449) = 0;
            LODWORD(v451[0]) = 1;
            goto LABEL_840;
          }
        }

        LODWORD(v451[0]) = v114 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v118 = __sb__runningInSpringBoard();
          if (v118)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen13 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v449) = v118 ^ 1;
          if (v123 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
          {
            memset(v453, 0, sizeof(v453));
            v422 = 0;
            v424 = 0;
            v426 = 0;
            v428 = 0;
            v430 = 0;
            v431 = 0;
            v433 = 0;
            v435 = 0;
            v437 = 0;
            v439 = 0;
            v441 = 0;
            v443 = 0;
            v445 = 0;
            v447 = 0;
            LODWORD(v449) = 0;
            v26 = &qword_21EC962A8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v449) = 0;
        }

LABEL_840:
        v119 = __sb__runningInSpringBoard();
        if (v119)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v447) = 0;
            LODWORD(v449) = 0;
            goto LABEL_867;
          }
        }

        else
        {
          currentDevice15 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice15 userInterfaceIdiom])
          {
            HIDWORD(v447) = 0;
            LODWORD(v449) = 1;
            goto LABEL_867;
          }
        }

        LODWORD(v449) = v119 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v121 = __sb__runningInSpringBoard();
          if (v121)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen14 _referenceBounds];
          }

          HIDWORD(v447) = v121 ^ 1;
          BSSizeRoundForScale();
          if (v127 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_900;
          }
        }

        else
        {
          HIDWORD(v447) = 0;
        }

LABEL_867:
        if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v426 = 0;
          v428 = 0;
          v430 = 0;
          v431 = 0;
          v433 = 0;
          v435 = 0;
          v437 = 0;
          v439 = 0;
          v441 = 0;
          v443 = 0;
          v445 = 0;
          LODWORD(v447) = 0;
          v26 = &qword_21EC962B0;
          goto LABEL_131;
        }

LABEL_900:
        if (!_SBF_Private_IsD93Like())
        {
LABEL_904:
          HIDWORD(v445) = 0;
          LODWORD(v447) = 0;
          goto LABEL_945;
        }

        v128 = __sb__runningInSpringBoard();
        if (v128)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_904;
          }
        }

        else
        {
          currentDevice16 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice16 userInterfaceIdiom])
          {
            HIDWORD(v445) = 0;
            LODWORD(v447) = 1;
            goto LABEL_945;
          }
        }

        LODWORD(v447) = v128 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v134 = __sb__runningInSpringBoard();
          if (v134)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen15 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v445) = v134 ^ 1;
          if (v143 >= *(MEMORY[0x277D66E30] + 184))
          {
            memset(v453, 0, sizeof(v453));
            v422 = 0;
            v424 = 0;
            v426 = 0;
            v428 = 0;
            v430 = 0;
            v431 = 0;
            v433 = 0;
            v435 = 0;
            v437 = 0;
            v439 = 0;
            v441 = 0;
            v443 = 0;
            LODWORD(v445) = 0;
            v26 = &qword_21EC96298;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v445) = 0;
        }

LABEL_945:
        v135 = __sb__runningInSpringBoard();
        if (v135)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v443) = 0;
            LODWORD(v445) = 0;
            goto LABEL_955;
          }
        }

        else
        {
          currentDevice17 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice17 userInterfaceIdiom])
          {
            HIDWORD(v443) = 0;
            LODWORD(v445) = 1;
            goto LABEL_955;
          }
        }

        LODWORD(v445) = v135 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v136 = __sb__runningInSpringBoard();
          if (v136)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen16 _referenceBounds];
          }

          HIDWORD(v443) = v136 ^ 1;
          BSSizeRoundForScale();
          if (v137 >= *(MEMORY[0x277D66E30] + 184))
          {
            goto LABEL_959;
          }
        }

        else
        {
          HIDWORD(v443) = 0;
        }

LABEL_955:
        if (_SBF_Private_IsD93Like())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v426 = 0;
          v428 = 0;
          v430 = 0;
          v431 = 0;
          v433 = 0;
          v435 = 0;
          v437 = 0;
          v439 = 0;
          v441 = 0;
          LODWORD(v443) = 0;
          v26 = &qword_21EC962A0;
          goto LABEL_131;
        }

LABEL_959:
        if (!_SBF_Private_IsD63Like())
        {
LABEL_963:
          HIDWORD(v441) = 0;
          LODWORD(v443) = 0;
          goto LABEL_1029;
        }

        v138 = __sb__runningInSpringBoard();
        if (v138)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_963;
          }
        }

        else
        {
          currentDevice18 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice18 userInterfaceIdiom])
          {
            HIDWORD(v441) = 0;
            LODWORD(v443) = 1;
            goto LABEL_1029;
          }
        }

        LODWORD(v443) = v138 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v147 = __sb__runningInSpringBoard();
          if (v147)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen17 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen17 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v441) = v147 ^ 1;
          if (v156 >= *(MEMORY[0x277D66E30] + 104))
          {
            memset(v453, 0, sizeof(v453));
            v422 = 0;
            v424 = 0;
            v426 = 0;
            v428 = 0;
            v430 = 0;
            v431 = 0;
            v433 = 0;
            v435 = 0;
            v437 = 0;
            v439 = 0;
            LODWORD(v441) = 0;
            v26 = &qword_21EC962C8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v441) = 0;
        }

LABEL_1029:
        v148 = __sb__runningInSpringBoard();
        if (v148)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v439) = 0;
            LODWORD(v441) = 0;
            goto LABEL_1039;
          }
        }

        else
        {
          currentDevice19 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice19 userInterfaceIdiom])
          {
            HIDWORD(v439) = 0;
            LODWORD(v441) = 1;
            goto LABEL_1039;
          }
        }

        LODWORD(v441) = v148 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v149 = __sb__runningInSpringBoard();
          if (v149)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen18 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen18 _referenceBounds];
          }

          HIDWORD(v439) = v149 ^ 1;
          BSSizeRoundForScale();
          if (v150 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1043;
          }
        }

        else
        {
          HIDWORD(v439) = 0;
        }

LABEL_1039:
        if (_SBF_Private_IsD63Like())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v426 = 0;
          v428 = 0;
          v430 = 0;
          v431 = 0;
          v433 = 0;
          v435 = 0;
          v437 = 0;
          LODWORD(v439) = 0;
          v26 = &qword_21EC962D0;
          goto LABEL_131;
        }

LABEL_1043:
        if (!_SBF_Private_IsD23Like())
        {
LABEL_1047:
          HIDWORD(v437) = 0;
          LODWORD(v439) = 0;
          goto LABEL_1122;
        }

        v151 = __sb__runningInSpringBoard();
        if (v151)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_1047;
          }
        }

        else
        {
          currentDevice20 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            HIDWORD(v437) = 0;
            LODWORD(v439) = 1;
            goto LABEL_1122;
          }
        }

        LODWORD(v439) = v151 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v160 = __sb__runningInSpringBoard();
          if (v160)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          HIDWORD(v437) = v160 ^ 1;
          BSSizeRoundForScale();
          if (v175 >= *(MEMORY[0x277D66E30] + 216))
          {
            memset(v453, 0, sizeof(v453));
            v422 = 0;
            v424 = 0;
            v426 = 0;
            v428 = 0;
            v430 = 0;
            v431 = 0;
            v433 = 0;
            v435 = 0;
            LODWORD(v437) = 0;
            v26 = &qword_21EC962D8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v437) = 0;
        }

LABEL_1122:
        v161 = __sb__runningInSpringBoard();
        if (v161)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v435) = 0;
            LODWORD(v437) = 0;
            goto LABEL_1132;
          }
        }

        else
        {
          currentDevice21 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice21 userInterfaceIdiom])
          {
            HIDWORD(v435) = 0;
            LODWORD(v437) = 1;
            goto LABEL_1132;
          }
        }

        LODWORD(v437) = v161 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v162 = __sb__runningInSpringBoard();
          if (v162)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen20 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen20 _referenceBounds];
          }

          HIDWORD(v435) = v162 ^ 1;
          BSSizeRoundForScale();
          if (v163 >= *(MEMORY[0x277D66E30] + 216))
          {
            goto LABEL_1136;
          }
        }

        else
        {
          HIDWORD(v435) = 0;
        }

LABEL_1132:
        if (_SBF_Private_IsD23Like())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v426 = 0;
          v428 = 0;
          v430 = 0;
          v431 = 0;
          v433 = 0;
          LODWORD(v435) = 0;
          v26 = &qword_21EC962E0;
          goto LABEL_131;
        }

LABEL_1136:
        v164 = __sb__runningInSpringBoard();
        if (v164)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v433) = 0;
            LODWORD(v435) = 0;
            goto LABEL_1146;
          }
        }

        else
        {
          currentDevice22 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            HIDWORD(v433) = 0;
            LODWORD(v435) = 1;
            goto LABEL_1146;
          }
        }

        LODWORD(v435) = v164 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v165 = __sb__runningInSpringBoard();
          if (v165)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          BSSizeRoundForScale();
          HIDWORD(v433) = v165 ^ 1;
          if (v172 >= *(MEMORY[0x277D66E30] + 120))
          {
            memset(v453, 0, sizeof(v453));
            v422 = 0;
            v424 = 0;
            v426 = 0;
            v428 = 0;
            v430 = 0;
            v431 = 0;
            LODWORD(v433) = 0;
            v26 = &qword_21EC962B8;
            goto LABEL_131;
          }
        }

        else
        {
          HIDWORD(v433) = 0;
        }

LABEL_1146:
        v166 = __sb__runningInSpringBoard();
        if (v166)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            HIDWORD(v431) = 0;
            LODWORD(v433) = 0;
            goto LABEL_1196;
          }
        }

        else
        {
          currentDevice23 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice23 userInterfaceIdiom])
          {
            HIDWORD(v431) = 0;
            LODWORD(v433) = 1;
            goto LABEL_1196;
          }
        }

        LODWORD(v433) = v166 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v170 = __sb__runningInSpringBoard();
          if (v170)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          HIDWORD(v431) = v170 ^ 1;
          BSSizeRoundForScale();
          if (v179 >= *(MEMORY[0x277D66E30] + 120))
          {
            goto LABEL_1232;
          }
        }

        else
        {
          HIDWORD(v431) = 0;
        }

LABEL_1196:
        if (_SBF_Private_IsD33OrSimilarDevice())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v426 = 0;
          v428 = 0;
          v430 = 0;
          LODWORD(v431) = 0;
          v26 = &qword_21EC962C0;
          goto LABEL_131;
        }

LABEL_1232:
        v180 = __sb__runningInSpringBoard();
        if (v180)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v430 = 0;
            LODWORD(v431) = 0;
            goto LABEL_1260;
          }
        }

        else
        {
          currentDevice24 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice24 userInterfaceIdiom])
          {
            v430 = 0;
            LODWORD(v431) = 1;
            goto LABEL_1260;
          }
        }

        LODWORD(v431) = v180 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v183 = __sb__runningInSpringBoard();
          if (v183)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          v430 = v183 ^ 1;
          BSSizeRoundForScale();
          if (v187 >= *(MEMORY[0x277D66E30] + 104))
          {
            memset(v453, 0, sizeof(v453));
            v422 = 0;
            v424 = 0;
            v426 = 0;
            v428 = 0;
            v26 = &qword_21EC96288;
            goto LABEL_131;
          }
        }

        else
        {
          v430 = 0;
        }

LABEL_1260:
        v184 = __sb__runningInSpringBoard();
        if (v184)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v426 = 0;
            v428 = 0;
            goto LABEL_1286;
          }
        }

        else
        {
          currentDevice25 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice25 userInterfaceIdiom])
          {
            v426 = 0;
            v428 = 1;
            goto LABEL_1286;
          }
        }

        v428 = v184 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v185 = __sb__runningInSpringBoard();
          if (v185)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          v426 = v185 ^ 1;
          BSSizeRoundForScale();
          if (v190 >= *(MEMORY[0x277D66E30] + 104))
          {
            goto LABEL_1317;
          }
        }

        else
        {
          v426 = 0;
        }

LABEL_1286:
        if (_SBF_Private_IsD53())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v26 = &qword_21EC96290;
          goto LABEL_131;
        }

LABEL_1317:
        if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v26 = &qword_21EC96268;
          goto LABEL_131;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v26 = &qword_21EC96270;
          goto LABEL_131;
        }

        if (_SBF_Private_IsD52OrSimilarDevice())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v26 = &qword_21EC96258;
          goto LABEL_131;
        }

        if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
        {
          memset(v453, 0, sizeof(v453));
          v422 = 0;
          v424 = 0;
          v26 = &qword_21EC96260;
          goto LABEL_131;
        }

        v194 = __sb__runningInSpringBoard();
        if (v194)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v422 = 0;
            v424 = 0;
            goto LABEL_1371;
          }
        }

        else
        {
          currentDevice26 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice26 userInterfaceIdiom])
          {
            v422 = 0;
            v424 = 1;
            goto LABEL_1371;
          }
        }

        v424 = v194 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v196 = __sb__runningInSpringBoard();
          if (v196)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen25 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen25 _referenceBounds];
          }

          v422 = v196 ^ 1;
          BSSizeRoundForScale();
          if (v207 >= *(MEMORY[0x277D66E30] + 88))
          {
            memset(v453, 0, sizeof(v453));
            v26 = &qword_21EC96278;
            goto LABEL_131;
          }
        }

        else
        {
          v422 = 0;
        }

LABEL_1371:
        v197 = __sb__runningInSpringBoard();
        if (v197)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v453[2] = 0;
            goto LABEL_1401;
          }
        }

        else
        {
          currentDevice27 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice27 userInterfaceIdiom])
          {
            v453[2] = 0x100000000;
            goto LABEL_1401;
          }
        }

        HIDWORD(v453[2]) = v197 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v198 = __sb__runningInSpringBoard();
          if (v198)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen26 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen26 _referenceBounds];
          }

          LODWORD(v453[2]) = v198 ^ 1;
          BSSizeRoundForScale();
          if (v210 >= *(MEMORY[0x277D66E30] + 72))
          {
            v453[0] = 0;
            v453[1] = 0;
            v26 = &qword_21EC96280;
            goto LABEL_131;
          }
        }

        else
        {
          LODWORD(v453[2]) = 0;
        }

LABEL_1401:
        v199 = __sb__runningInSpringBoard();
        if (v199)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v453[1] = 0;
            goto LABEL_1432;
          }
        }

        else
        {
          currentDevice28 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice28 userInterfaceIdiom])
          {
            v453[1] = 0x100000000;
            goto LABEL_1432;
          }
        }

        HIDWORD(v453[1]) = v199 ^ 1;
        v201 = __sb__runningInSpringBoard();
        if (v201)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen27 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen27 _referenceBounds];
        }

        LODWORD(v453[1]) = v201 ^ 1;
        BSSizeRoundForScale();
        if (v202 >= *(MEMORY[0x277D66E30] + 56))
        {
          v453[0] = 0;
          v26 = &qword_21EC96250;
          goto LABEL_131;
        }

LABEL_1432:
        v203 = __sb__runningInSpringBoard();
        if (v203)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v453[0] = 0;
            goto LABEL_1477;
          }
        }

        else
        {
          currentDevice29 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice29 userInterfaceIdiom])
          {
            v453[0] = 0x100000000;
            goto LABEL_1477;
          }
        }

        HIDWORD(v453[0]) = v203 ^ 1;
        v214 = __sb__runningInSpringBoard();
        if (v214)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen28 = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen28 _referenceBounds];
        }

        LODWORD(v453[0]) = v214 ^ 1;
        BSSizeRoundForScale();
        if (v215 >= *(MEMORY[0x277D66E30] + 40))
        {
          v26 = &qword_21EC96248;
LABEL_131:
          v46 = *v26;
          v47 = __sb__runningInSpringBoard();
          mainScreen56 = &CSQuickActionButtonDiameter;
          if (v47)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v420 = 0;
              v418 = 0;
              goto LABEL_140;
            }
          }

          else
          {
            currentDevice30 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice30 userInterfaceIdiom] != 1)
            {
              v418 = 0;
              v420 = 1;
              goto LABEL_140;
            }
          }

          v420 = v47 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            currentDevice58 = __sb__runningInSpringBoard();
            if (currentDevice58)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen29 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen29 _referenceBounds];
            }

            v418 = currentDevice58 ^ 1;
            BSSizeRoundForScale();
            if (v65 == *(MEMORY[0x277D66E30] + 288) && v64 == *(MEMORY[0x277D66E30] + 296))
            {
              v416 = 0;
              v414 = 0;
              v412 = 0;
              v410 = 0;
              v408 = 0;
              v406 = 0;
              v404 = 0;
              v402 = 0;
              v400 = 0;
              v398 = 0;
              v396 = 0;
              v394 = 0;
              v392 = 0;
              v390 = 0;
              v388 = 0;
              v386 = 0;
              v384 = 0;
              v382 = 0;
              v380 = 0;
              v378 = 0;
              v376 = 0;
              v374 = 0;
              v372 = 0;
              v370 = 0;
              v368 = 0;
              v366 = 0;
              v364 = 0;
              v362 = 0;
              v360 = 0;
              v358 = 0;
              v356 = 0;
              v354 = 0;
              v352 = 0;
              v350 = 0;
              v348 = 0;
              v346 = 0;
              v344 = 0;
              v342 = 0;
              v340 = 0;
              v338 = 0;
              v336 = 0;
              v334 = 0;
              v332 = 0;
              v330 = 0;
              v328 = 0;
              v327 = 0;
              v326 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = &qword_21EC96100;
              goto LABEL_194;
            }
          }

          else
          {
            v418 = 0;
          }

LABEL_140:
          v50 = __sb__runningInSpringBoard();
          if (v50)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v416 = 0;
              v414 = 0;
              goto LABEL_149;
            }
          }

          else
          {
            currentDevice31 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice31 userInterfaceIdiom] != 1)
            {
              v414 = 0;
              v416 = 1;
              goto LABEL_149;
            }
          }

          v416 = v50 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            currentDevice58 = __sb__runningInSpringBoard();
            if (currentDevice58)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen30 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen30 _referenceBounds];
            }

            v414 = currentDevice58 ^ 1;
            BSSizeRoundForScale();
            if (v66 >= *(MEMORY[0x277D66E30] + 440))
            {
              v412 = 0;
              v410 = 0;
              v408 = 0;
              v406 = 0;
              v404 = 0;
              v402 = 0;
              v400 = 0;
              v398 = 0;
              v396 = 0;
              v394 = 0;
              v392 = 0;
              v390 = 0;
              v388 = 0;
              v386 = 0;
              v384 = 0;
              v382 = 0;
              v380 = 0;
              v378 = 0;
              v376 = 0;
              v374 = 0;
              v372 = 0;
              v370 = 0;
              v368 = 0;
              v366 = 0;
              v364 = 0;
              v362 = 0;
              v360 = 0;
              v358 = 0;
              v356 = 0;
              v354 = 0;
              v352 = 0;
              v350 = 0;
              v348 = 0;
              v346 = 0;
              v344 = 0;
              v342 = 0;
              v340 = 0;
              v338 = 0;
              v336 = 0;
              v334 = 0;
              v332 = 0;
              v330 = 0;
              v328 = 0;
              v327 = 0;
              v326 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = &qword_21EC96128;
              goto LABEL_194;
            }
          }

          else
          {
            v414 = 0;
          }

LABEL_149:
          v51 = __sb__runningInSpringBoard();
          if (v51)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v412 = 0;
              v410 = 0;
              goto LABEL_158;
            }
          }

          else
          {
            currentDevice32 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice32 userInterfaceIdiom] != 1)
            {
              v410 = 0;
              v412 = 1;
              goto LABEL_158;
            }
          }

          v412 = v51 ^ 1;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            currentDevice58 = __sb__runningInSpringBoard();
            if (currentDevice58)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen31 = [MEMORY[0x277D759A0] mainScreen];
              [mainScreen31 _referenceBounds];
            }

            v410 = currentDevice58 ^ 1;
            BSSizeRoundForScale();
            if (v67 >= *(MEMORY[0x277D66E30] + 376))
            {
              v408 = 0;
              v406 = 0;
              v404 = 0;
              v402 = 0;
              v400 = 0;
              v398 = 0;
              v396 = 0;
              v394 = 0;
              v392 = 0;
              v390 = 0;
              v388 = 0;
              v386 = 0;
              v384 = 0;
              v382 = 0;
              v380 = 0;
              v378 = 0;
              v376 = 0;
              v374 = 0;
              v372 = 0;
              v370 = 0;
              v368 = 0;
              v366 = 0;
              v364 = 0;
              v362 = 0;
              v360 = 0;
              v358 = 0;
              v356 = 0;
              v354 = 0;
              v352 = 0;
              v350 = 0;
              v348 = 0;
              v346 = 0;
              v344 = 0;
              v342 = 0;
              v340 = 0;
              v338 = 0;
              v336 = 0;
              v334 = 0;
              v332 = 0;
              v330 = 0;
              v328 = 0;
              v327 = 0;
              v326 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = 0;
              v61 = &qword_21EC96118;
              goto LABEL_194;
            }
          }

          else
          {
            v410 = 0;
          }

LABEL_158:
          v52 = __sb__runningInSpringBoard();
          if (v52)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v408 = 0;
              v406 = 0;
              goto LABEL_167;
            }
          }

          else
          {
            currentDevice33 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice33 userInterfaceIdiom] != 1)
            {
              v406 = 0;
              v408 = 1;
              goto LABEL_167;
            }
          }

          v408 = v52 ^ 1;
          currentDevice58 = __sb__runningInSpringBoard();
          if (currentDevice58)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen32 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen32 _referenceBounds];
          }

          v406 = currentDevice58 ^ 1;
          BSSizeRoundForScale();
          if (v53 >= *(MEMORY[0x277D66E30] + 280))
          {
            v404 = 0;
            v402 = 0;
            v400 = 0;
            v398 = 0;
            v396 = 0;
            v394 = 0;
            v392 = 0;
            v390 = 0;
            v388 = 0;
            v386 = 0;
            v384 = 0;
            v382 = 0;
            v380 = 0;
            v378 = 0;
            v376 = 0;
            v374 = 0;
            v372 = 0;
            v370 = 0;
            v368 = 0;
            v366 = 0;
            v364 = 0;
            v362 = 0;
            v360 = 0;
            v358 = 0;
            v356 = 0;
            v354 = 0;
            v352 = 0;
            v350 = 0;
            v348 = 0;
            v346 = 0;
            v344 = 0;
            v342 = 0;
            v340 = 0;
            v338 = 0;
            v336 = 0;
            v334 = 0;
            v332 = 0;
            v330 = 0;
            v328 = 0;
            v327 = 0;
            v326 = 0;
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = &qword_21EC96120;
            goto LABEL_194;
          }

LABEL_167:
          v54 = __sb__runningInSpringBoard();
          if (v54)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v404 = 0;
              v402 = 0;
              goto LABEL_177;
            }
          }

          else
          {
            currentDevice34 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice34 userInterfaceIdiom] != 1)
            {
              v402 = 0;
              v404 = 1;
              goto LABEL_177;
            }
          }

          v404 = v54 ^ 1;
          currentDevice58 = __sb__runningInSpringBoard();
          if (currentDevice58)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen33 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen33 _referenceBounds];
          }

          v402 = currentDevice58 ^ 1;
          BSSizeRoundForScale();
          if (v62 >= *(MEMORY[0x277D66E30] + 264))
          {
            v400 = 0;
            v398 = 0;
            v396 = 0;
            v394 = 0;
            v392 = 0;
            v390 = 0;
            v388 = 0;
            v386 = 0;
            v384 = 0;
            v382 = 0;
            v380 = 0;
            v378 = 0;
            v376 = 0;
            v374 = 0;
            v372 = 0;
            v370 = 0;
            v368 = 0;
            v366 = 0;
            v364 = 0;
            v362 = 0;
            v360 = 0;
            v358 = 0;
            v356 = 0;
            v354 = 0;
            v352 = 0;
            v350 = 0;
            v348 = 0;
            v346 = 0;
            v344 = 0;
            v342 = 0;
            v340 = 0;
            v338 = 0;
            v336 = 0;
            v334 = 0;
            v332 = 0;
            v330 = 0;
            v328 = 0;
            v327 = 0;
            v326 = 0;
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = &qword_21EC96110;
            goto LABEL_194;
          }

LABEL_177:
          v63 = __sb__runningInSpringBoard();
          if (v63)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              v400 = 0;
              v398 = 0;
              goto LABEL_538;
            }
          }

          else
          {
            currentDevice35 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice35 userInterfaceIdiom] != 1)
            {
              v398 = 0;
              v400 = 1;
              goto LABEL_538;
            }
          }

          v400 = v63 ^ 1;
          currentDevice58 = __sb__runningInSpringBoard();
          if (currentDevice58)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen34 = [MEMORY[0x277D759A0] mainScreen];
            [mainScreen34 _referenceBounds];
          }

          v398 = currentDevice58 ^ 1;
          BSSizeRoundForScale();
          if (v73 >= *(MEMORY[0x277D66E30] + 248))
          {
            v396 = 0;
            v394 = 0;
            v392 = 0;
            v390 = 0;
            v388 = 0;
            v386 = 0;
            v384 = 0;
            v382 = 0;
            v380 = 0;
            v378 = 0;
            v376 = 0;
            v374 = 0;
            v372 = 0;
            v370 = 0;
            v368 = 0;
            v366 = 0;
            v364 = 0;
            v362 = 0;
            v360 = 0;
            v358 = 0;
            v356 = 0;
            v354 = 0;
            v352 = 0;
            v350 = 0;
            v348 = 0;
            v346 = 0;
            v344 = 0;
            v342 = 0;
            v340 = 0;
            v338 = 0;
            v336 = 0;
            v334 = 0;
            v332 = 0;
            v330 = 0;
            v328 = 0;
            v327 = 0;
            v326 = 0;
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = &qword_21EC96108;
            goto LABEL_194;
          }

LABEL_538:
          currentDevice58 = __sb__runningInSpringBoard();
          if (currentDevice58)
          {
            if (SBFEffectiveDeviceClass() != 2)
            {
              goto LABEL_540;
            }
          }

          else
          {
            currentDevice36 = [MEMORY[0x277D75418] currentDevice];
            if ([currentDevice36 userInterfaceIdiom] != 1)
            {
LABEL_540:
              v396 = currentDevice58 ^ 1;
              if (!_SBF_Private_IsD94Like())
              {
LABEL_544:
                v394 = 0;
                v392 = 0;
                goto LABEL_584;
              }

              v74 = __sb__runningInSpringBoard();
              if (v74)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  goto LABEL_544;
                }
              }

              else
              {
                currentDevice37 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice37 userInterfaceIdiom])
                {
                  v392 = 0;
                  v394 = 1;
                  goto LABEL_584;
                }
              }

              v394 = v74 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen35 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen35 _referenceBounds];
                }

                v392 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v89 >= *(MEMORY[0x277D66E30] + 200))
                {
                  v390 = 0;
                  v388 = 0;
                  v386 = 0;
                  v384 = 0;
                  v382 = 0;
                  v380 = 0;
                  v378 = 0;
                  v376 = 0;
                  v374 = 0;
                  v372 = 0;
                  v370 = 0;
                  v368 = 0;
                  v366 = 0;
                  v364 = 0;
                  v362 = 0;
                  v360 = 0;
                  v358 = 0;
                  v356 = 0;
                  v354 = 0;
                  v352 = 0;
                  v350 = 0;
                  v348 = 0;
                  v346 = 0;
                  v344 = 0;
                  v342 = 0;
                  v340 = 0;
                  v338 = 0;
                  v336 = 0;
                  v334 = 0;
                  v332 = 0;
                  v330 = 0;
                  v328 = 0;
                  v327 = 0;
                  v326 = 0;
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC960D8;
                  goto LABEL_194;
                }
              }

              else
              {
                v392 = 0;
              }

LABEL_584:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v390 = 0;
                  v388 = 0;
                  goto LABEL_594;
                }
              }

              else
              {
                currentDevice38 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice38 userInterfaceIdiom])
                {
                  v388 = 0;
                  v390 = 1;
                  goto LABEL_594;
                }
              }

              v390 = currentDevice58 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen36 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen36 _referenceBounds];
                }

                v388 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v80 >= *(MEMORY[0x277D66E30] + 200))
                {
                  goto LABEL_598;
                }
              }

              else
              {
                v388 = 0;
              }

LABEL_594:
              if (_SBF_Private_IsD94Like())
              {
                v386 = 0;
                v384 = 0;
                v382 = 0;
                v380 = 0;
                v378 = 0;
                v376 = 0;
                v374 = 0;
                v372 = 0;
                v370 = 0;
                v368 = 0;
                v366 = 0;
                v364 = 0;
                v362 = 0;
                v360 = 0;
                v358 = 0;
                v356 = 0;
                v354 = 0;
                v352 = 0;
                v350 = 0;
                v348 = 0;
                v346 = 0;
                v344 = 0;
                v342 = 0;
                v340 = 0;
                v338 = 0;
                v336 = 0;
                v334 = 0;
                v332 = 0;
                v330 = 0;
                v328 = 0;
                v327 = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC960E0;
                goto LABEL_194;
              }

LABEL_598:
              if (!_SBF_Private_IsD64Like())
              {
LABEL_602:
                v386 = 0;
                v384 = 0;
                goto LABEL_668;
              }

              v81 = __sb__runningInSpringBoard();
              if (v81)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  goto LABEL_602;
                }
              }

              else
              {
                currentDevice39 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice39 userInterfaceIdiom])
                {
                  v384 = 0;
                  v386 = 1;
                  goto LABEL_668;
                }
              }

              v386 = v81 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                v92 = __sb__runningInSpringBoard();
                if (v92)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen37 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen37 _referenceBounds];
                }

                currentDevice58 = v92 ^ 1u;
                BSSizeRoundForScale();
                v384 = currentDevice58;
                if (v108 >= *(MEMORY[0x277D66E30] + 136))
                {
                  v382 = 0;
                  v380 = 0;
                  v378 = 0;
                  v376 = 0;
                  v374 = 0;
                  v372 = 0;
                  v370 = 0;
                  v368 = 0;
                  v366 = 0;
                  v364 = 0;
                  v362 = 0;
                  v360 = 0;
                  v358 = 0;
                  v356 = 0;
                  v354 = 0;
                  v352 = 0;
                  v350 = 0;
                  v348 = 0;
                  v346 = 0;
                  v344 = 0;
                  v342 = 0;
                  v340 = 0;
                  v338 = 0;
                  v336 = 0;
                  v334 = 0;
                  v332 = 0;
                  v330 = 0;
                  v328 = 0;
                  v327 = 0;
                  v326 = 0;
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC960E8;
                  goto LABEL_194;
                }
              }

              else
              {
                v384 = 0;
              }

LABEL_668:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v382 = 0;
                  v380 = 0;
                  goto LABEL_678;
                }
              }

              else
              {
                currentDevice40 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice40 userInterfaceIdiom])
                {
                  v380 = 0;
                  v382 = 1;
                  goto LABEL_678;
                }
              }

              v382 = currentDevice58 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen38 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen38 _referenceBounds];
                }

                v380 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v93 >= *(MEMORY[0x277D66E30] + 136))
                {
                  goto LABEL_682;
                }
              }

              else
              {
                v380 = 0;
              }

LABEL_678:
              if (_SBF_Private_IsD64Like())
              {
                v378 = 0;
                v376 = 0;
                v374 = 0;
                v372 = 0;
                v370 = 0;
                v368 = 0;
                v366 = 0;
                v364 = 0;
                v362 = 0;
                v360 = 0;
                v358 = 0;
                v356 = 0;
                v354 = 0;
                v352 = 0;
                v350 = 0;
                v348 = 0;
                v346 = 0;
                v344 = 0;
                v342 = 0;
                v340 = 0;
                v338 = 0;
                v336 = 0;
                v334 = 0;
                v332 = 0;
                v330 = 0;
                v328 = 0;
                v327 = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC960F0;
                goto LABEL_194;
              }

LABEL_682:
              v94 = __sb__runningInSpringBoard();
              if (v94)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v378 = 0;
                  v376 = 0;
                  goto LABEL_692;
                }
              }

              else
              {
                currentDevice41 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice41 userInterfaceIdiom])
                {
                  v376 = 0;
                  v378 = 1;
                  goto LABEL_692;
                }
              }

              v378 = v94 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen39 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen39 _referenceBounds];
                }

                v376 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v105 >= *(MEMORY[0x277D66E30] + 136))
                {
                  v374 = 0;
                  v372 = 0;
                  v370 = 0;
                  v368 = 0;
                  v366 = 0;
                  v364 = 0;
                  v362 = 0;
                  v360 = 0;
                  v358 = 0;
                  v356 = 0;
                  v354 = 0;
                  v352 = 0;
                  v350 = 0;
                  v348 = 0;
                  v346 = 0;
                  v344 = 0;
                  v342 = 0;
                  v340 = 0;
                  v338 = 0;
                  v336 = 0;
                  v334 = 0;
                  v332 = 0;
                  v330 = 0;
                  v328 = 0;
                  v327 = 0;
                  v326 = 0;
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC960C8;
                  goto LABEL_194;
                }
              }

              else
              {
                v376 = 0;
              }

LABEL_692:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v374 = 0;
                  v372 = 0;
                  goto LABEL_770;
                }
              }

              else
              {
                currentDevice42 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice42 userInterfaceIdiom])
                {
                  v372 = 0;
                  v374 = 1;
                  goto LABEL_770;
                }
              }

              v374 = currentDevice58 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen40 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen40 _referenceBounds];
                }

                v372 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v111 >= *(MEMORY[0x277D66E30] + 136))
                {
                  goto LABEL_804;
                }
              }

              else
              {
                v372 = 0;
              }

LABEL_770:
              if (_SBF_Private_IsD54())
              {
                v370 = 0;
                v368 = 0;
                v366 = 0;
                v364 = 0;
                v362 = 0;
                v360 = 0;
                v358 = 0;
                v356 = 0;
                v354 = 0;
                v352 = 0;
                v350 = 0;
                v348 = 0;
                v346 = 0;
                v344 = 0;
                v342 = 0;
                v340 = 0;
                v338 = 0;
                v336 = 0;
                v334 = 0;
                v332 = 0;
                v330 = 0;
                v328 = 0;
                v327 = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC960D0;
                goto LABEL_194;
              }

LABEL_804:
              v112 = __sb__runningInSpringBoard();
              if (v112)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v370 = 0;
                  v368 = 0;
                  goto LABEL_830;
                }
              }

              else
              {
                currentDevice43 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice43 userInterfaceIdiom])
                {
                  v368 = 0;
                  v370 = 1;
                  goto LABEL_830;
                }
              }

              v370 = v112 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen41 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen41 _referenceBounds];
                }

                v368 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v122 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
                {
                  v366 = 0;
                  v364 = 0;
                  v362 = 0;
                  v360 = 0;
                  v358 = 0;
                  v356 = 0;
                  v354 = 0;
                  v352 = 0;
                  v350 = 0;
                  v348 = 0;
                  v346 = 0;
                  v344 = 0;
                  v342 = 0;
                  v340 = 0;
                  v338 = 0;
                  v336 = 0;
                  v334 = 0;
                  v332 = 0;
                  v330 = 0;
                  v328 = 0;
                  v327 = 0;
                  v326 = 0;
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC96088;
                  goto LABEL_194;
                }
              }

              else
              {
                v368 = 0;
              }

LABEL_830:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v366 = 0;
                  v364 = 0;
                  goto LABEL_860;
                }
              }

              else
              {
                currentDevice44 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice44 userInterfaceIdiom])
                {
                  v364 = 0;
                  v366 = 1;
                  goto LABEL_860;
                }
              }

              v366 = currentDevice58 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen42 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen42 _referenceBounds];
                }

                v364 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v125 >= *(MEMORY[0x277D66E30] + 120))
                {
                  goto LABEL_891;
                }
              }

              else
              {
                v364 = 0;
              }

LABEL_860:
              if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
              {
                v362 = 0;
                v360 = 0;
                v358 = 0;
                v356 = 0;
                v354 = 0;
                v352 = 0;
                v350 = 0;
                v348 = 0;
                v346 = 0;
                v344 = 0;
                v342 = 0;
                v340 = 0;
                v338 = 0;
                v336 = 0;
                v334 = 0;
                v332 = 0;
                v330 = 0;
                v328 = 0;
                v327 = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC96090;
                goto LABEL_194;
              }

LABEL_891:
              if (!_SBF_Private_IsD93Like())
              {
LABEL_895:
                v362 = 0;
                v360 = 0;
                goto LABEL_920;
              }

              v126 = __sb__runningInSpringBoard();
              if (v126)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  goto LABEL_895;
                }
              }

              else
              {
                currentDevice45 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice45 userInterfaceIdiom])
                {
                  v360 = 0;
                  v362 = 1;
                  goto LABEL_920;
                }
              }

              v362 = v126 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                v131 = __sb__runningInSpringBoard();
                if (v131)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen43 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen43 _referenceBounds];
                }

                currentDevice58 = v131 ^ 1u;
                BSSizeRoundForScale();
                v360 = currentDevice58;
                if (v142 >= *(MEMORY[0x277D66E30] + 184))
                {
                  v358 = 0;
                  v356 = 0;
                  v354 = 0;
                  v352 = 0;
                  v350 = 0;
                  v348 = 0;
                  v346 = 0;
                  v344 = 0;
                  v342 = 0;
                  v340 = 0;
                  v338 = 0;
                  v336 = 0;
                  v334 = 0;
                  v332 = 0;
                  v330 = 0;
                  v328 = 0;
                  v327 = 0;
                  v326 = 0;
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC96078;
                  goto LABEL_194;
                }
              }

              else
              {
                v360 = 0;
              }

LABEL_920:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v358 = 0;
                  v356 = 0;
                  goto LABEL_930;
                }
              }

              else
              {
                currentDevice46 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice46 userInterfaceIdiom])
                {
                  v356 = 0;
                  v358 = 1;
                  goto LABEL_930;
                }
              }

              v358 = currentDevice58 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen44 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen44 _referenceBounds];
                }

                v356 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v132 >= *(MEMORY[0x277D66E30] + 184))
                {
                  goto LABEL_934;
                }
              }

              else
              {
                v356 = 0;
              }

LABEL_930:
              if (_SBF_Private_IsD93Like())
              {
                v354 = 0;
                v352 = 0;
                v350 = 0;
                v348 = 0;
                v346 = 0;
                v344 = 0;
                v342 = 0;
                v340 = 0;
                v338 = 0;
                v336 = 0;
                v334 = 0;
                v332 = 0;
                v330 = 0;
                v328 = 0;
                v327 = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC96080;
                goto LABEL_194;
              }

LABEL_934:
              if (!_SBF_Private_IsD63Like())
              {
LABEL_938:
                v354 = 0;
                v352 = 0;
                goto LABEL_1004;
              }

              v133 = __sb__runningInSpringBoard();
              if (v133)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  goto LABEL_938;
                }
              }

              else
              {
                currentDevice47 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice47 userInterfaceIdiom])
                {
                  v352 = 0;
                  v354 = 1;
                  goto LABEL_1004;
                }
              }

              v354 = v133 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen45 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen45 _referenceBounds];
                }

                v352 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v155 >= *(MEMORY[0x277D66E30] + 104))
                {
                  v350 = 0;
                  v348 = 0;
                  v346 = 0;
                  v344 = 0;
                  v342 = 0;
                  v340 = 0;
                  v338 = 0;
                  v336 = 0;
                  v334 = 0;
                  v332 = 0;
                  v330 = 0;
                  v328 = 0;
                  v327 = 0;
                  v326 = 0;
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC960A8;
                  goto LABEL_194;
                }
              }

              else
              {
                v352 = 0;
              }

LABEL_1004:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v350 = 0;
                  v348 = 0;
                  goto LABEL_1014;
                }
              }

              else
              {
                currentDevice48 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice48 userInterfaceIdiom])
                {
                  v348 = 0;
                  v350 = 1;
                  goto LABEL_1014;
                }
              }

              v350 = currentDevice58 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen46 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen46 _referenceBounds];
                }

                v348 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v145 >= *(MEMORY[0x277D66E30] + 104))
                {
                  goto LABEL_1018;
                }
              }

              else
              {
                v348 = 0;
              }

LABEL_1014:
              if (_SBF_Private_IsD63Like())
              {
                v346 = 0;
                v344 = 0;
                v342 = 0;
                v340 = 0;
                v338 = 0;
                v336 = 0;
                v334 = 0;
                v332 = 0;
                v330 = 0;
                v328 = 0;
                v327 = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC960B0;
                goto LABEL_194;
              }

LABEL_1018:
              if (!_SBF_Private_IsD23Like())
              {
LABEL_1022:
                v346 = 0;
                v344 = 0;
                goto LABEL_1088;
              }

              v146 = __sb__runningInSpringBoard();
              if (v146)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  goto LABEL_1022;
                }
              }

              else
              {
                currentDevice49 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice49 userInterfaceIdiom])
                {
                  v344 = 0;
                  v346 = 1;
                  goto LABEL_1088;
                }
              }

              v346 = v146 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen47 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen47 _referenceBounds];
                }

                v344 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v174 >= *(MEMORY[0x277D66E30] + 216))
                {
                  v342 = 0;
                  v340 = 0;
                  v338 = 0;
                  v336 = 0;
                  v334 = 0;
                  v332 = 0;
                  v330 = 0;
                  v328 = 0;
                  v327 = 0;
                  v326 = 0;
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC960B8;
                  goto LABEL_194;
                }
              }

              else
              {
                v344 = 0;
              }

LABEL_1088:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v342 = 0;
                  v340 = 0;
                  goto LABEL_1098;
                }
              }

              else
              {
                currentDevice50 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice50 userInterfaceIdiom])
                {
                  v340 = 0;
                  v342 = 1;
                  goto LABEL_1098;
                }
              }

              v342 = currentDevice58 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen48 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen48 _referenceBounds];
                }

                v340 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v158 >= *(MEMORY[0x277D66E30] + 216))
                {
                  goto LABEL_1102;
                }
              }

              else
              {
                v340 = 0;
              }

LABEL_1098:
              if (_SBF_Private_IsD23Like())
              {
                v338 = 0;
                v336 = 0;
                v334 = 0;
                v332 = 0;
                v330 = 0;
                v328 = 0;
                v327 = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC960C0;
                goto LABEL_194;
              }

LABEL_1102:
              v159 = __sb__runningInSpringBoard();
              if (v159)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v338 = 0;
                  v336 = 0;
                  goto LABEL_1112;
                }
              }

              else
              {
                currentDevice51 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice51 userInterfaceIdiom])
                {
                  v336 = 0;
                  v338 = 1;
                  goto LABEL_1112;
                }
              }

              v338 = v159 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen49 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen49 _referenceBounds];
                }

                v336 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v171 >= *(MEMORY[0x277D66E30] + 120))
                {
                  v334 = 0;
                  v332 = 0;
                  v330 = 0;
                  v328 = 0;
                  v327 = 0;
                  v326 = 0;
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC96098;
                  goto LABEL_194;
                }
              }

              else
              {
                v336 = 0;
              }

LABEL_1112:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v334 = 0;
                  v332 = 0;
                  goto LABEL_1190;
                }
              }

              else
              {
                currentDevice52 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice52 userInterfaceIdiom])
                {
                  v332 = 0;
                  v334 = 1;
                  goto LABEL_1190;
                }
              }

              v334 = currentDevice58 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen50 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen50 _referenceBounds];
                }

                v332 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v177 >= *(MEMORY[0x277D66E30] + 120))
                {
                  goto LABEL_1224;
                }
              }

              else
              {
                v332 = 0;
              }

LABEL_1190:
              if (_SBF_Private_IsD33OrSimilarDevice())
              {
                v330 = 0;
                v328 = 0;
                v327 = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC960A0;
                goto LABEL_194;
              }

LABEL_1224:
              v178 = __sb__runningInSpringBoard();
              if (v178)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v330 = 0;
                  HIDWORD(v328) = 0;
                  goto LABEL_1250;
                }
              }

              else
              {
                currentDevice53 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice53 userInterfaceIdiom])
                {
                  HIDWORD(v328) = 0;
                  v330 = 1;
                  goto LABEL_1250;
                }
              }

              v330 = v178 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen51 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen51 _referenceBounds];
                }

                HIDWORD(v328) = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v186 >= *(MEMORY[0x277D66E30] + 104))
                {
                  LODWORD(v328) = 0;
                  v327 = 0;
                  v326 = 0;
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC96068;
                  goto LABEL_194;
                }
              }

              else
              {
                HIDWORD(v328) = 0;
              }

LABEL_1250:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  LODWORD(v328) = 0;
                  HIDWORD(v327) = 0;
                  goto LABEL_1280;
                }
              }

              else
              {
                currentDevice54 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice54 userInterfaceIdiom])
                {
                  HIDWORD(v327) = 0;
                  LODWORD(v328) = 1;
                  goto LABEL_1280;
                }
              }

              LODWORD(v328) = currentDevice58 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen52 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen52 _referenceBounds];
                }

                HIDWORD(v327) = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v189 >= *(MEMORY[0x277D66E30] + 104))
                {
                  goto LABEL_1305;
                }
              }

              else
              {
                HIDWORD(v327) = 0;
              }

LABEL_1280:
              if (_SBF_Private_IsD53())
              {
                LODWORD(v327) = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC96070;
                goto LABEL_194;
              }

LABEL_1305:
              if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
              {
                LODWORD(v327) = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC96048;
                goto LABEL_194;
              }

              if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
              {
                LODWORD(v327) = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC96050;
                goto LABEL_194;
              }

              if (_SBF_Private_IsD52OrSimilarDevice())
              {
                LODWORD(v327) = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC96038;
                goto LABEL_194;
              }

              if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
              {
                LODWORD(v327) = 0;
                v326 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC96040;
                goto LABEL_194;
              }

              v193 = __sb__runningInSpringBoard();
              if (v193)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  LODWORD(v327) = 0;
                  v326 = 0;
                  goto LABEL_1361;
                }
              }

              else
              {
                currentDevice55 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice55 userInterfaceIdiom])
                {
                  v326 = 0;
                  LODWORD(v327) = 1;
                  goto LABEL_1361;
                }
              }

              LODWORD(v327) = v193 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen53 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen53 _referenceBounds];
                }

                v326 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v206 >= *(MEMORY[0x277D66E30] + 88))
                {
                  v55 = 0;
                  v56 = 0;
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC96058;
                  goto LABEL_194;
                }
              }

              else
              {
                v326 = 0;
              }

LABEL_1361:
              v195 = __sb__runningInSpringBoard();
              if (v195)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v55 = 0;
                  v56 = 0;
                  goto LABEL_1391;
                }
              }

              else
              {
                currentDevice56 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice56 userInterfaceIdiom])
                {
                  v56 = 0;
                  v55 = 1;
                  goto LABEL_1391;
                }
              }

              v55 = v195 ^ 1;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                currentDevice58 = __sb__runningInSpringBoard();
                if (currentDevice58)
                {
                  __sb__mainScreenReferenceBounds();
                }

                else
                {
                  mainScreen54 = [MEMORY[0x277D759A0] mainScreen];
                  [mainScreen54 _referenceBounds];
                }

                v56 = currentDevice58 ^ 1;
                BSSizeRoundForScale();
                if (v209 >= *(MEMORY[0x277D66E30] + 72))
                {
                  v57 = 0;
                  v58 = 0;
                  v59 = 0;
                  v60 = 0;
                  v61 = &qword_21EC96060;
                  goto LABEL_194;
                }
              }

              else
              {
                v56 = 0;
              }

LABEL_1391:
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v57 = 0;
                  v58 = 0;
                  goto LABEL_1421;
                }
              }

              else
              {
                currentDevice57 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice57 userInterfaceIdiom])
                {
                  v58 = 0;
                  v57 = 1;
                  goto LABEL_1421;
                }
              }

              v57 = currentDevice58 ^ 1;
              currentDevice58 = __sb__runningInSpringBoard();
              if (currentDevice58)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen55 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen55 _referenceBounds];
              }

              v58 = currentDevice58 ^ 1;
              BSSizeRoundForScale();
              if (v200 >= *(MEMORY[0x277D66E30] + 56))
              {
                v59 = 0;
                v60 = 0;
                v61 = &qword_21EC96030;
                goto LABEL_194;
              }

LABEL_1421:
              mainScreen56 = __sb__runningInSpringBoard();
              if (mainScreen56)
              {
                if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
                {
                  v59 = 0;
                  v60 = 0;
                  goto LABEL_1471;
                }
              }

              else
              {
                currentDevice58 = [MEMORY[0x277D75418] currentDevice];
                if ([currentDevice58 userInterfaceIdiom])
                {
                  v60 = 0;
                  v59 = 1;
                  goto LABEL_1471;
                }
              }

              v59 = mainScreen56 ^ 1;
              v212 = __sb__runningInSpringBoard();
              if (v212)
              {
                __sb__mainScreenReferenceBounds();
              }

              else
              {
                mainScreen56 = [MEMORY[0x277D759A0] mainScreen];
                [mainScreen56 _referenceBounds];
              }

              v60 = v212 ^ 1;
              BSSizeRoundForScale();
              if (v213 >= *(MEMORY[0x277D66E30] + 40))
              {
                v61 = &qword_21EC96028;
LABEL_194:
                v68 = *v61;
                if (v60)
                {
                }

                if (v59)
                {
                }

                if (v58)
                {
                }

                if (v57)
                {
                }

                if (v56)
                {
                }

                if (v55)
                {
                }

                if (v326)
                {
                }

                if (v327)
                {
                }

                if (HIDWORD(v327))
                {
                }

                if (v328)
                {
                }

                if (HIDWORD(v328))
                {
                }

                if (v330)
                {
                }

                if (v332)
                {
                }

                if (v334)
                {
                }

                if (v336)
                {
                }

                if (v338)
                {
                }

                if (v340)
                {
                }

                if (v342)
                {
                }

                if (v344)
                {
                }

                if (v346)
                {
                }

                if (v348)
                {
                }

                if (v350)
                {
                }

                if (v352)
                {
                }

                if (v354)
                {
                }

                if (v356)
                {
                }

                if (v358)
                {
                }

                if (v360)
                {
                }

                if (v362)
                {
                }

                if (v364)
                {
                }

                if (v366)
                {
                }

                if (v368)
                {
                }

                if (v370)
                {
                }

                if (v372)
                {
                }

                if (v374)
                {
                }

                if (v376)
                {
                }

                if (v378)
                {
                }

                if (v380)
                {
                }

                if (v382)
                {
                }

                if (v384)
                {
                }

                if (v386)
                {
                }

                if (v388)
                {
                }

                if (v390)
                {
                }

                if (v392)
                {
                }

                if (v394)
                {
                }

                if (v396)
                {
                }

                if (v398)
                {
                }

                if (v400)
                {
                }

                if (v402)
                {
                }

                if (v404)
                {
                }

                if (v406)
                {
                }

                if (v408)
                {
                }

                if (v410)
                {
                }

                if (v412)
                {
                }

                if (v414)
                {
                }

                if (v416)
                {
                }

                if (v418)
                {
                }

                if (v420)
                {
                }

                if (LODWORD(v453[0]))
                {
                }

                if (HIDWORD(v453[0]))
                {
                }

                if (LODWORD(v453[1]))
                {
                }

                if (HIDWORD(v453[1]))
                {
                }

                if (LODWORD(v453[2]))
                {
                }

                if (HIDWORD(v453[2]))
                {
                }

                if (v422)
                {
                }

                if (v424)
                {
                }

                if (v426)
                {
                }

                if (v428)
                {
                }

                if (v430)
                {
                }

                if (v431)
                {
                }

                if (HIDWORD(v431))
                {
                }

                if (v433)
                {
                }

                if (HIDWORD(v433))
                {
                }

                if (v435)
                {
                }

                if (HIDWORD(v435))
                {
                }

                if (v437)
                {
                }

                if (HIDWORD(v437))
                {
                }

                if (v439)
                {
                }

                if (HIDWORD(v439))
                {
                }

                if (v441)
                {
                }

                if (HIDWORD(v441))
                {
                }

                if (v443)
                {
                }

                if (HIDWORD(v443))
                {
                }

                if (v445)
                {
                }

                if (HIDWORD(v445))
                {
                }

                if (v447)
                {
                }

                if (HIDWORD(v447))
                {
                }

                if (v449)
                {
                }

                if (HIDWORD(v449))
                {
                }

                if (LODWORD(v451[0]))
                {
                }

                if (HIDWORD(v451[0]))
                {
                }

                if (LODWORD(v451[1]))
                {
                }

                if (HIDWORD(v451[1]))
                {
                }

                if (LODWORD(v451[2]))
                {
                }

                if (HIDWORD(v451[2]))
                {
                }

                if (LODWORD(v451[3]))
                {
                }

                if (HIDWORD(v451[3]))
                {
                }

                if (LODWORD(v451[4]))
                {
                }

                if (HIDWORD(v451[4]))
                {
                }

                if (LODWORD(v451[5]))
                {
                }

                if (HIDWORD(v451[5]))
                {
                }

                if (LODWORD(v451[6]))
                {
                }

                if (HIDWORD(v451[6]))
                {
                }

                if (LODWORD(v451[7]))
                {
                }

                if (HIDWORD(v451[7]))
                {
                }

                if (LODWORD(v451[8]))
                {
                }

                if (HIDWORD(v451[8]))
                {
                }

                if (LODWORD(v451[9]))
                {
                }

                if (HIDWORD(v451[9]))
                {
                }

                if (LODWORD(v451[10]))
                {
                }

                if (HIDWORD(v451[10]))
                {
                }

                if (LODWORD(v451[11]))
                {
                }

                v69 = v68 * 0.5;
                if (HIDWORD(v451[11]))
                {
                }

                v70 = v46 + v69;
                if (LODWORD(v451[12]))
                {
                }

                v31 = v70 + -24.0;
                if ((v451[12] & 0x100000000) == 0)
                {
                  return v31;
                }

LABEL_533:

                return v31;
              }

LABEL_1471:
              v61 = &CSQuickActionButtonDiameter;
              goto LABEL_194;
            }
          }

          v394 = 0;
          v392 = 0;
          v390 = 0;
          v388 = 0;
          v386 = 0;
          v384 = 0;
          v382 = 0;
          v380 = 0;
          v378 = 0;
          v376 = 0;
          v374 = 0;
          v372 = 0;
          v370 = 0;
          v368 = 0;
          v366 = 0;
          v364 = 0;
          v362 = 0;
          v360 = 0;
          v358 = 0;
          v356 = 0;
          v354 = 0;
          v352 = 0;
          v350 = 0;
          v348 = 0;
          v346 = 0;
          v344 = 0;
          v342 = 0;
          v340 = 0;
          v338 = 0;
          v336 = 0;
          v334 = 0;
          v332 = 0;
          v330 = 0;
          v328 = 0;
          v327 = 0;
          v326 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = &qword_21EC960F8;
          v396 = currentDevice58 ^ 1;
          goto LABEL_194;
        }

LABEL_1477:
        v26 = &CSQuickActionButtonInsetY;
        goto LABEL_131;
      }
    }

    memset(v453, 0, sizeof(v453));
    v422 = 0;
    v424 = 0;
    v426 = 0;
    v428 = 0;
    v430 = 0;
    v431 = 0;
    v433 = 0;
    v435 = 0;
    v437 = 0;
    v439 = 0;
    v441 = 0;
    v443 = 0;
    v445 = 0;
    v447 = 0;
    v449 = 0;
    memset(v451, 0, 52);
    v26 = &qword_21EC96318;
    HIDWORD(v451[6]) = v76 ^ 1;
    goto LABEL_131;
  }

  if (v7)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v453[1] + 4) = 0;
      goto LABEL_27;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      *(&v453[1] + 4) = 0x100000000;
      goto LABEL_27;
    }
  }

  LODWORD(v453[2]) = v8 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen57 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen57 _referenceBounds];
    }

    HIDWORD(v453[1]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v41 == *(MEMORY[0x277D66E30] + 288) && v40 == *(MEMORY[0x277D66E30] + 296))
    {
      *(v453 + 4) = 0;
      LODWORD(v453[0]) = 0;
      memset(v451, 0, sizeof(v451));
      v450 = 0;
      v448 = 0;
      v446 = 0;
      v444 = 0;
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 90.0;
      goto LABEL_1483;
    }
  }

  else
  {
    HIDWORD(v453[1]) = 0;
  }

LABEL_27:
  v14 = __sb__runningInSpringBoard();
  if (v14)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(v453 + 4) = 0;
      goto LABEL_45;
    }
  }

  else
  {
    currentDevice59 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice59 userInterfaceIdiom] != 1)
    {
      *(v453 + 4) = 0x100000000;
      goto LABEL_45;
    }
  }

  LODWORD(v453[1]) = v14 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen58 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen58 _referenceBounds];
    }

    HIDWORD(v453[0]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v44 >= *(MEMORY[0x277D66E30] + 440))
    {
      LODWORD(v453[0]) = 0;
      memset(v451, 0, sizeof(v451));
      v450 = 0;
      v448 = 0;
      v446 = 0;
      v444 = 0;
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 90.0;
      goto LABEL_1483;
    }
  }

  else
  {
    HIDWORD(v453[0]) = 0;
  }

LABEL_45:
  v17 = __sb__runningInSpringBoard();
  if (v17)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      LODWORD(v453[0]) = 0;
      HIDWORD(v451[12]) = 0;
      goto LABEL_62;
    }
  }

  else
  {
    currentDevice60 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice60 userInterfaceIdiom] != 1)
    {
      HIDWORD(v451[12]) = 0;
      LODWORD(v453[0]) = 1;
      goto LABEL_62;
    }
  }

  LODWORD(v453[0]) = v17 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen59 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen59 _referenceBounds];
    }

    HIDWORD(v451[12]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v71 >= *(MEMORY[0x277D66E30] + 376))
    {
      memset(v451, 0, 100);
      v450 = 0;
      v448 = 0;
      v446 = 0;
      v444 = 0;
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 90.0;
      goto LABEL_1483;
    }
  }

  else
  {
    HIDWORD(v451[12]) = 0;
  }

LABEL_62:
  v20 = __sb__runningInSpringBoard();
  if (v20)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v451[11] + 4) = 0;
      goto LABEL_80;
    }
  }

  else
  {
    currentDevice61 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice61 userInterfaceIdiom] != 1)
    {
      HIDWORD(v451[11]) = 0;
      LODWORD(v451[12]) = 1;
      goto LABEL_80;
    }
  }

  LODWORD(v451[12]) = v20 ^ 1;
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen60 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen60 _referenceBounds];
  }

  HIDWORD(v451[11]) = mainScreen82 ^ 1;
  BSSizeRoundForScale();
  if (v24 >= *(MEMORY[0x277D66E30] + 280))
  {
    memset(v451, 0, 92);
    v450 = 0;
    v448 = 0;
    v446 = 0;
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 90.0;
    goto LABEL_1483;
  }

LABEL_80:
  v25 = __sb__runningInSpringBoard();
  if (v25)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v451[10] + 4) = 0;
      goto LABEL_100;
    }
  }

  else
  {
    currentDevice62 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice62 userInterfaceIdiom] != 1)
    {
      HIDWORD(v451[10]) = 0;
      LODWORD(v451[11]) = 1;
      goto LABEL_100;
    }
  }

  LODWORD(v451[11]) = v25 ^ 1;
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen61 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen61 _referenceBounds];
  }

  HIDWORD(v451[10]) = mainScreen82 ^ 1;
  BSSizeRoundForScale();
  if (v35 >= *(MEMORY[0x277D66E30] + 264))
  {
    memset(v451, 0, 84);
    v450 = 0;
    v448 = 0;
    v446 = 0;
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 90.0;
    goto LABEL_1483;
  }

LABEL_100:
  v36 = __sb__runningInSpringBoard();
  if (v36)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      *(&v451[9] + 4) = 0;
      goto LABEL_563;
    }
  }

  else
  {
    currentDevice63 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice63 userInterfaceIdiom] != 1)
    {
      HIDWORD(v451[9]) = 0;
      LODWORD(v451[10]) = 1;
      goto LABEL_563;
    }
  }

  LODWORD(v451[10]) = v36 ^ 1;
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen62 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen62 _referenceBounds];
  }

  HIDWORD(v451[9]) = mainScreen82 ^ 1;
  BSSizeRoundForScale();
  if (v78 >= *(MEMORY[0x277D66E30] + 248))
  {
    memset(v451, 0, 76);
    v450 = 0;
    v448 = 0;
    v446 = 0;
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 90.0;
    goto LABEL_1483;
  }

LABEL_563:
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_565;
    }

LABEL_571:
    memset(v451, 0, 72);
    v450 = 0;
    v448 = 0;
    v446 = 0;
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 90.0;
    LODWORD(v451[9]) = mainScreen82 ^ 1;
    goto LABEL_1483;
  }

  currentDevice64 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice64 userInterfaceIdiom] == 1)
  {
    goto LABEL_571;
  }

LABEL_565:
  LODWORD(v451[9]) = mainScreen82 ^ 1;
  if (!_SBF_Private_IsD94Like())
  {
LABEL_569:
    v451[8] = 0;
    goto LABEL_634;
  }

  v79 = __sb__runningInSpringBoard();
  if (v79)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_569;
    }
  }

  else
  {
    currentDevice65 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice65 userInterfaceIdiom])
    {
      v451[8] = 0x100000000;
      goto LABEL_634;
    }
  }

  HIDWORD(v451[8]) = v79 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen63 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen63 _referenceBounds];
    }

    LODWORD(v451[8]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v91 >= *(MEMORY[0x277D66E30] + 200))
    {
      memset(v451, 0, 64);
      v450 = 0;
      v448 = 0;
      v446 = 0;
      v444 = 0;
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 59.0;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v451[8]) = 0;
  }

LABEL_634:
  mainScreen82 = __sb__runningInSpringBoard();
  currentDevice85 = qword_21EC96000;
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v451[7] = 0;
      goto LABEL_644;
    }
  }

  else
  {
    currentDevice66 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice66 userInterfaceIdiom])
    {
      v451[7] = 0x100000000;
      goto LABEL_644;
    }
  }

  HIDWORD(v451[7]) = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen64 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen64 _referenceBounds];
    }

    LODWORD(v451[7]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v87 >= *(MEMORY[0x277D66E30] + 200))
    {
      goto LABEL_648;
    }
  }

  else
  {
    LODWORD(v451[7]) = 0;
  }

LABEL_644:
  if (_SBF_Private_IsD94Like())
  {
    memset(v451, 0, 56);
    v450 = 0;
    v448 = 0;
    v446 = 0;
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 48.7;
    goto LABEL_1483;
  }

LABEL_648:
  if (!_SBF_Private_IsD64Like())
  {
LABEL_652:
    v451[6] = 0;
    goto LABEL_736;
  }

  v88 = __sb__runningInSpringBoard();
  if (v88)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_652;
    }
  }

  else
  {
    currentDevice67 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice67 userInterfaceIdiom])
    {
      v451[6] = 0x100000000;
      goto LABEL_736;
    }
  }

  HIDWORD(v451[6]) = v88 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen65 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen65 _referenceBounds];
    }

    LODWORD(v451[6]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v110 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v451, 0, 48);
      v450 = 0;
      v448 = 0;
      v446 = 0;
      v444 = 0;
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 59.0;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v451[6]) = 0;
  }

LABEL_736:
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v451[5] = 0;
      goto LABEL_746;
    }
  }

  else
  {
    currentDevice68 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice68 userInterfaceIdiom])
    {
      v451[5] = 0x100000000;
      goto LABEL_746;
    }
  }

  HIDWORD(v451[5]) = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen66 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen66 _referenceBounds];
    }

    LODWORD(v451[5]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v102 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_750;
    }
  }

  else
  {
    LODWORD(v451[5]) = 0;
  }

LABEL_746:
  if (_SBF_Private_IsD64Like())
  {
    memset(v451, 0, 40);
    v450 = 0;
    v448 = 0;
    v446 = 0;
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 48.7;
    goto LABEL_1483;
  }

LABEL_750:
  v103 = __sb__runningInSpringBoard();
  if (v103)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v451[4] = 0;
      goto LABEL_760;
    }
  }

  else
  {
    currentDevice69 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice69 userInterfaceIdiom])
    {
      v451[4] = 0x100000000;
      goto LABEL_760;
    }
  }

  HIDWORD(v451[4]) = v103 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen67 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen67 _referenceBounds];
    }

    LODWORD(v451[4]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v107 >= *(MEMORY[0x277D66E30] + 136))
    {
      memset(v451, 0, 32);
      v450 = 0;
      v448 = 0;
      v446 = 0;
      v444 = 0;
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 59.0;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v451[4]) = 0;
  }

LABEL_760:
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v451[3] = 0;
      goto LABEL_782;
    }
  }

  else
  {
    currentDevice70 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice70 userInterfaceIdiom])
    {
      v451[3] = 0x100000000;
      goto LABEL_782;
    }
  }

  HIDWORD(v451[3]) = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen68 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen68 _referenceBounds];
    }

    LODWORD(v451[3]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v115 >= *(MEMORY[0x277D66E30] + 136))
    {
      goto LABEL_820;
    }
  }

  else
  {
    LODWORD(v451[3]) = 0;
  }

LABEL_782:
  if (_SBF_Private_IsD54())
  {
    memset(v451, 0, 24);
    v450 = 0;
    v448 = 0;
    v446 = 0;
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 48.7;
    goto LABEL_1483;
  }

LABEL_820:
  v116 = __sb__runningInSpringBoard();
  if (v116)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v117 = 0;
      LODWORD(v451[2]) = 0;
      goto LABEL_850;
    }
  }

  else
  {
    currentDevice71 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice71 userInterfaceIdiom])
    {
      LODWORD(v451[2]) = 0;
      v117 = 1;
      goto LABEL_850;
    }
  }

  v117 = v116 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v120 = __sb__runningInSpringBoard();
    if (v120)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen69 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen69 _referenceBounds];
    }

    mainScreen82 = v120 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v451[2]) = mainScreen82;
    if (v124 >= *(MEMORY[0x277D66E30] + 120) && (_SBF_Private_IsN84OrSimilarDevice() & 1) != 0)
    {
      HIDWORD(v451[2]) = v117;
      v451[0] = 0;
      v451[1] = 0;
      v450 = 0;
      v448 = 0;
      v446 = 0;
      v444 = 0;
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 58.5;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v451[2]) = 0;
  }

LABEL_850:
  mainScreen82 = __sb__runningInSpringBoard();
  HIDWORD(v451[2]) = v117;
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      currentDevice85 = 0;
      LODWORD(v451[1]) = 0;
      goto LABEL_874;
    }
  }

  else
  {
    currentDevice72 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice72 userInterfaceIdiom])
    {
      LODWORD(v451[1]) = 0;
      currentDevice85 = 1;
      goto LABEL_874;
    }
  }

  currentDevice85 = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen70 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen70 _referenceBounds];
    }

    LODWORD(v451[1]) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v129 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_909;
    }
  }

  else
  {
    LODWORD(v451[1]) = 0;
  }

LABEL_874:
  if (_SBF_Private_IsD33OrSimilarDevice() && (_SBF_Private_IsN84ZoomedOrSimilarDevice() & 1) != 0)
  {
    HIDWORD(v451[1]) = currentDevice85;
    v451[0] = 0;
    v450 = 0;
    v448 = 0;
    v446 = 0;
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 50.7;
    goto LABEL_1483;
  }

LABEL_909:
  HIDWORD(v451[1]) = currentDevice85;
  if (!_SBF_Private_IsD93Like())
  {
LABEL_913:
    v451[0] = 0;
    goto LABEL_970;
  }

  v130 = __sb__runningInSpringBoard();
  if (v130)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_913;
    }
  }

  else
  {
    currentDevice73 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice73 userInterfaceIdiom])
    {
      v451[0] = 0x100000000;
      goto LABEL_970;
    }
  }

  HIDWORD(v451[0]) = v130 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v139 = __sb__runningInSpringBoard();
    if (v139)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen71 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen71 _referenceBounds];
    }

    mainScreen82 = v139 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v451[0]) = mainScreen82;
    if (v144 >= *(MEMORY[0x277D66E30] + 184))
    {
      v450 = 0;
      v448 = 0;
      v446 = 0;
      v444 = 0;
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 51.0;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v451[0]) = 0;
  }

LABEL_970:
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v450 = 0;
      goto LABEL_980;
    }
  }

  else
  {
    currentDevice74 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice74 userInterfaceIdiom])
    {
      v450 = 0x100000000;
      goto LABEL_980;
    }
  }

  HIDWORD(v450) = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen72 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen72 _referenceBounds];
    }

    LODWORD(v450) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v140 >= *(MEMORY[0x277D66E30] + 184))
    {
      goto LABEL_984;
    }
  }

  else
  {
    LODWORD(v450) = 0;
  }

LABEL_980:
  if (_SBF_Private_IsD93Like())
  {
    v448 = 0;
    v446 = 0;
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 37.5;
    goto LABEL_1483;
  }

LABEL_984:
  if (!_SBF_Private_IsD63Like())
  {
LABEL_988:
    v448 = 0;
    goto LABEL_1054;
  }

  v141 = __sb__runningInSpringBoard();
  if (v141)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_988;
    }
  }

  else
  {
    currentDevice75 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice75 userInterfaceIdiom])
    {
      v448 = 0x100000000;
      goto LABEL_1054;
    }
  }

  HIDWORD(v448) = v141 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v152 = __sb__runningInSpringBoard();
    if (v152)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen73 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen73 _referenceBounds];
    }

    mainScreen82 = v152 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v448) = mainScreen82;
    if (v157 >= *(MEMORY[0x277D66E30] + 104))
    {
      v446 = 0;
      v444 = 0;
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 51.0;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v448) = 0;
  }

LABEL_1054:
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v446 = 0;
      goto LABEL_1064;
    }
  }

  else
  {
    currentDevice76 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice76 userInterfaceIdiom])
    {
      v446 = 0x100000000;
      goto LABEL_1064;
    }
  }

  HIDWORD(v446) = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen74 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen74 _referenceBounds];
    }

    LODWORD(v446) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v153 >= *(MEMORY[0x277D66E30] + 104))
    {
      goto LABEL_1068;
    }
  }

  else
  {
    LODWORD(v446) = 0;
  }

LABEL_1064:
  if (_SBF_Private_IsD63Like())
  {
    v444 = 0;
    v442 = 0;
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 37.5;
    goto LABEL_1483;
  }

LABEL_1068:
  currentDevice85 = qword_21EC96000;
  if (!_SBF_Private_IsD23Like())
  {
LABEL_1072:
    v444 = 0;
    goto LABEL_1156;
  }

  v154 = __sb__runningInSpringBoard();
  if (v154)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      goto LABEL_1072;
    }
  }

  else
  {
    currentDevice77 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice77 userInterfaceIdiom])
    {
      v444 = 0x100000000;
      goto LABEL_1156;
    }
  }

  HIDWORD(v444) = v154 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen75 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen75 _referenceBounds];
    }

    LODWORD(v444) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v176 >= *(MEMORY[0x277D66E30] + 216))
    {
      v442 = 0;
      v440 = 0;
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 59.0;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v444) = 0;
  }

LABEL_1156:
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v442 = 0;
      goto LABEL_1166;
    }
  }

  else
  {
    currentDevice78 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice78 userInterfaceIdiom])
    {
      v442 = 0x100000000;
      goto LABEL_1166;
    }
  }

  HIDWORD(v442) = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen76 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen76 _referenceBounds];
    }

    LODWORD(v442) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v167 >= *(MEMORY[0x277D66E30] + 216))
    {
      goto LABEL_1170;
    }
  }

  else
  {
    LODWORD(v442) = 0;
  }

LABEL_1166:
  if (_SBF_Private_IsD23Like())
  {
    v440 = 0;
    v438 = 0;
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 59.0;
    goto LABEL_1483;
  }

LABEL_1170:
  v168 = __sb__runningInSpringBoard();
  if (v168)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v440 = 0;
      goto LABEL_1180;
    }
  }

  else
  {
    currentDevice79 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice79 userInterfaceIdiom])
    {
      v440 = 0x100000000;
      goto LABEL_1180;
    }
  }

  HIDWORD(v440) = v168 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    v169 = __sb__runningInSpringBoard();
    if (v169)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen77 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen77 _referenceBounds];
    }

    mainScreen82 = v169 ^ 1u;
    BSSizeRoundForScale();
    LODWORD(v440) = mainScreen82;
    if (v173 >= *(MEMORY[0x277D66E30] + 120))
    {
      v438 = 0;
      v436 = 0;
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 59.0;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v440) = 0;
  }

LABEL_1180:
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v438 = 0;
      goto LABEL_1202;
    }
  }

  else
  {
    currentDevice80 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice80 userInterfaceIdiom])
    {
      v438 = 0x100000000;
      goto LABEL_1202;
    }
  }

  HIDWORD(v438) = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen78 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen78 _referenceBounds];
    }

    LODWORD(v438) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v181 >= *(MEMORY[0x277D66E30] + 120))
    {
      goto LABEL_1240;
    }
  }

  else
  {
    LODWORD(v438) = 0;
  }

LABEL_1202:
  if (_SBF_Private_IsD33OrSimilarDevice())
  {
    v436 = 0;
    v434 = 0;
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 51.2;
    goto LABEL_1483;
  }

LABEL_1240:
  v182 = __sb__runningInSpringBoard();
  if (v182)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v436 = 0;
      goto LABEL_1270;
    }
  }

  else
  {
    currentDevice81 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice81 userInterfaceIdiom])
    {
      v436 = 0x100000000;
      goto LABEL_1270;
    }
  }

  HIDWORD(v436) = v182 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    mainScreen82 = __sb__runningInSpringBoard();
    if (mainScreen82)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen79 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen79 _referenceBounds];
    }

    LODWORD(v436) = mainScreen82 ^ 1;
    BSSizeRoundForScale();
    if (v188 >= *(MEMORY[0x277D66E30] + 104))
    {
      v434 = 0;
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 51.0;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v436) = 0;
  }

LABEL_1270:
  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v434 = 0;
      goto LABEL_1292;
    }
  }

  else
  {
    currentDevice82 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice82 userInterfaceIdiom])
    {
      v434 = 0x100000000;
      goto LABEL_1292;
    }
  }

  HIDWORD(v434) = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() != 2)
  {
    LODWORD(v434) = 0;
    goto LABEL_1292;
  }

  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen80 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen80 _referenceBounds];
  }

  LODWORD(v434) = mainScreen82 ^ 1;
  BSSizeRoundForScale();
  if (v191 < *(MEMORY[0x277D66E30] + 104))
  {
LABEL_1292:
    if (_SBF_Private_IsD53())
    {
      v432 = 0;
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 37.5;
      goto LABEL_1483;
    }
  }

  mainScreen82 = qword_21EC96000;
  if (_SBF_Private_IsD16() && (_SBF_Private_IsD52OrSimilarDevice() & 1) != 0)
  {
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 51.0;
    goto LABEL_1483;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice() && (_SBF_Private_IsD16() & 1) != 0)
  {
    goto LABEL_1337;
  }

  v31 = 51.0;
  if (_SBF_Private_IsD52OrSimilarDevice())
  {
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_1483;
  }

  if (_SBF_Private_IsD52ZoomedOrSimilarDevice())
  {
LABEL_1337:
    v432 = 0;
    HIDWORD(v453[2]) = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v192 = 0x4044000000000000;
LABEL_1338:
    v31 = *&v192;
    goto LABEL_1483;
  }

  mainScreen82 = __sb__runningInSpringBoard();
  if (mainScreen82)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v432 = 0;
      goto LABEL_1381;
    }
  }

  else
  {
    currentDevice83 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice83 userInterfaceIdiom])
    {
      v432 = 0x100000000;
      goto LABEL_1381;
    }
  }

  HIDWORD(v432) = mainScreen82 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice85 = __sb__runningInSpringBoard();
    if (currentDevice85)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen81 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen81 _referenceBounds];
    }

    LODWORD(v432) = currentDevice85 ^ 1;
    BSSizeRoundForScale();
    if (v208 >= *(MEMORY[0x277D66E30] + 88))
    {
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      goto LABEL_1483;
    }
  }

  else
  {
    LODWORD(v432) = 0;
  }

LABEL_1381:
  currentDevice85 = __sb__runningInSpringBoard();
  if (currentDevice85)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      HIDWORD(v453[2]) = 0;
      v27 = 0;
      goto LABEL_1411;
    }
  }

  else
  {
    currentDevice84 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice84 userInterfaceIdiom])
    {
      v27 = 0;
      HIDWORD(v453[2]) = 1;
      goto LABEL_1411;
    }
  }

  HIDWORD(v453[2]) = currentDevice85 ^ 1;
  if (SBFEffectiveHomeButtonType() == 2)
  {
    currentDevice85 = __sb__runningInSpringBoard();
    if (currentDevice85)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen82 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen82 _referenceBounds];
    }

    v27 = currentDevice85 ^ 1;
    BSSizeRoundForScale();
    if (v211 >= *(MEMORY[0x277D66E30] + 72))
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 40.0;
      goto LABEL_1483;
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_1411:
  currentDevice86 = __sb__runningInSpringBoard();
  if (!currentDevice86)
  {
    currentDevice85 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice85 userInterfaceIdiom])
    {
      v29 = 0;
      v28 = 1;
      goto LABEL_1443;
    }

LABEL_1439:
    v28 = currentDevice86 ^ 1;
    currentDevice86 = __sb__runningInSpringBoard();
    if (currentDevice86)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen83 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen83 _referenceBounds];
    }

    v29 = currentDevice86 ^ 1;
    BSSizeRoundForScale();
    if (v204 >= *(MEMORY[0x277D66E30] + 56))
    {
      goto LABEL_1446;
    }

    goto LABEL_1443;
  }

  if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_1439;
  }

  v28 = 0;
  v29 = 0;
LABEL_1443:
  mainScreen84 = __sb__runningInSpringBoard();
  if (mainScreen84)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
LABEL_1446:
      v30 = 0;
      v31 = 50.0;
      goto LABEL_1483;
    }
  }

  else
  {
    currentDevice86 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice86 userInterfaceIdiom])
    {
      v30 = 1;
      v192 = 0x4049000000000000;
      goto LABEL_1338;
    }
  }

  v30 = mainScreen84 ^ 1;
  v216 = __sb__runningInSpringBoard();
  if (v216)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen84 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen84 _referenceBounds];
  }

  BSSizeRoundForScale();
  v31 = 50.0;
  if (v216 != 1)
  {

    if (v30)
    {
      goto LABEL_1484;
    }

LABEL_426:
    if (!v29)
    {
      goto LABEL_1485;
    }

LABEL_427:

    if (v28)
    {
      goto LABEL_1486;
    }

LABEL_428:
    if (!v27)
    {
      goto LABEL_430;
    }

    goto LABEL_429;
  }

LABEL_1483:
  if (!v30)
  {
    goto LABEL_426;
  }

LABEL_1484:

  if (v29)
  {
    goto LABEL_427;
  }

LABEL_1485:
  if (!v28)
  {
    goto LABEL_428;
  }

LABEL_1486:

  if (v27)
  {
LABEL_429:
  }

LABEL_430:
  if (HIDWORD(v453[2]))
  {
  }

  if (v432)
  {
  }

  if (HIDWORD(v432))
  {
  }

  if (v434)
  {
  }

  if (HIDWORD(v434))
  {
  }

  if (v436)
  {
  }

  if (HIDWORD(v436))
  {
  }

  if (v438)
  {
  }

  if (HIDWORD(v438))
  {
  }

  if (v440)
  {
  }

  if (HIDWORD(v440))
  {
  }

  if (v442)
  {
  }

  if (HIDWORD(v442))
  {
  }

  if (v444)
  {
  }

  if (HIDWORD(v444))
  {
  }

  if (v446)
  {
  }

  if (HIDWORD(v446))
  {
  }

  if (v448)
  {
  }

  if (HIDWORD(v448))
  {
  }

  if (v450)
  {
  }

  if (HIDWORD(v450))
  {
  }

  if (LODWORD(v451[0]))
  {
  }

  if (HIDWORD(v451[0]))
  {
  }

  if (LODWORD(v451[1]))
  {
  }

  if (HIDWORD(v451[1]))
  {
  }

  if (LODWORD(v451[2]))
  {
  }

  if (HIDWORD(v451[2]))
  {
  }

  if (LODWORD(v451[3]))
  {
  }

  if (HIDWORD(v451[3]))
  {
  }

  if (LODWORD(v451[4]))
  {
  }

  if (HIDWORD(v451[4]))
  {
  }

  if (LODWORD(v451[5]))
  {
  }

  if (HIDWORD(v451[5]))
  {
  }

  if (LODWORD(v451[6]))
  {
  }

  if (HIDWORD(v451[6]))
  {
  }

  if (LODWORD(v451[7]))
  {
  }

  if (HIDWORD(v451[7]))
  {
  }

  if (LODWORD(v451[8]))
  {
  }

  if (HIDWORD(v451[8]))
  {
  }

  if (LODWORD(v451[9]))
  {
  }

  if (HIDWORD(v451[9]))
  {
  }

  if (LODWORD(v451[10]))
  {
  }

  if (HIDWORD(v451[10]))
  {
  }

  if (LODWORD(v451[11]))
  {
  }

  if (HIDWORD(v451[11]))
  {
  }

  if (LODWORD(v451[12]))
  {
  }

  if (HIDWORD(v451[12]))
  {
  }

  if (LODWORD(v453[0]))
  {
  }

  if (HIDWORD(v453[0]))
  {
  }

  if (LODWORD(v453[1]))
  {
  }

  if (HIDWORD(v453[1]))
  {
  }

  if (LODWORD(v453[2]))
  {
    goto LABEL_533;
  }

  return v31;
}

- (CSModalViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end