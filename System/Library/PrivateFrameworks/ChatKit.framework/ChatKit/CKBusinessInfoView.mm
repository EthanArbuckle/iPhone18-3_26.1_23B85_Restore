@interface CKBusinessInfoView
- (BOOL)hasValidGreeting;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKBusinessInfoView)initWithLayoutType:(int64_t)type;
- (CKBusinessInfoViewDelegate)delegate;
- (void)infoButtonTapped:(id)tapped;
- (void)layoutSubviews;
- (void)setDescriptionText:(id)text;
- (void)setGreetingText:(id)text;
- (void)setup;
@end

@implementation CKBusinessInfoView

- (CKBusinessInfoView)initWithLayoutType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = CKBusinessInfoView;
  v4 = [(CKBusinessInfoView *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_layoutType = type;
    [(CKBusinessInfoView *)v4 setup];
  }

  return v5;
}

- (void)setup
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  greetingTextLabel = self->_greetingTextLabel;
  self->_greetingTextLabel = v3;

  v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  descriptionTextLabel = self->_descriptionTextLabel;
  self->_descriptionTextLabel = v5;

  v7 = objc_alloc_init(CKStandardButton);
  infoButton = self->_infoButton;
  self->_infoButton = v7;

  [(CKBusinessInfoView *)self addSubview:self->_greetingTextLabel];
  [(CKBusinessInfoView *)self addSubview:self->_descriptionTextLabel];
  [(CKBusinessInfoView *)self addSubview:self->_infoButton];
  [(CKStandardButton *)self->_infoButton addTarget:self action:sel_infoButtonTapped_ forControlEvents:64];
  v9 = +[CKUIBehavior sharedBehaviors];
  theme = [v9 theme];
  businessInfoViewGreetingTextColor = [theme businessInfoViewGreetingTextColor];
  [(UILabel *)self->_greetingTextLabel setTextColor:businessInfoViewGreetingTextColor];

  v12 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v12 theme];
  businessInfoViewDescriptionTextColor = [theme2 businessInfoViewDescriptionTextColor];
  [(UILabel *)self->_descriptionTextLabel setTextColor:businessInfoViewDescriptionTextColor];

  v15 = self->_greetingTextLabel;
  v16 = +[CKUIBehavior sharedBehaviors];
  businessInfoViewGreetingTextFont = [v16 businessInfoViewGreetingTextFont];
  [(UILabel *)v15 setFont:businessInfoViewGreetingTextFont];

  v18 = self->_descriptionTextLabel;
  v19 = +[CKUIBehavior sharedBehaviors];
  businessInfoViewDescriptionTextFont = [v19 businessInfoViewDescriptionTextFont];
  [(UILabel *)v18 setFont:businessInfoViewDescriptionTextFont];

  titleLabel = [(CKStandardButton *)self->_infoButton titleLabel];
  v22 = +[CKUIBehavior sharedBehaviors];
  businessInfoViewTitleLabelFont = [v22 businessInfoViewTitleLabelFont];
  [titleLabel setFont:businessInfoViewTitleLabelFont];

  [(UILabel *)self->_greetingTextLabel setNumberOfLines:0];
  [(UILabel *)self->_descriptionTextLabel setNumberOfLines:0];
  v24 = MEMORY[0x1E69B7D48];
  v25 = [MEMORY[0x1E69B7D10] bundleWithIdentifier:@"com.apple.onboarding.businesschat"];
  v29 = [v24 flowWithBundle:v25];

  v26 = self->_infoButton;
  localizedButtonTitle = [v29 localizedButtonTitle];
  [(CKStandardButton *)v26 setTitle:localizedButtonTitle forState:0];

  [(CKStandardButton *)self->_infoButton setContentEdgeInsets:-1.0, 0.0, -1.0, 0.0];
  if ([(CKBusinessInfoView *)self layoutType])
  {
    if ([(CKBusinessInfoView *)self layoutType]!= 1)
    {
      goto LABEL_6;
    }

    v28 = 4;
  }

  else
  {
    v28 = 1;
    [(UILabel *)self->_greetingTextLabel setTextAlignment:1];
  }

  [(UILabel *)self->_descriptionTextLabel setTextAlignment:v28];
LABEL_6:
}

- (void)layoutSubviews
{
  v80.receiver = self;
  v80.super_class = CKBusinessInfoView;
  [(CKBusinessInfoView *)&v80 layoutSubviews];
  [(CKBusinessInfoView *)self bounds];
  v4 = v3;
  v6 = v5;
  if (![(CKBusinessInfoView *)self layoutType])
  {
    v7 = -60.0;
    goto LABEL_5;
  }

  v7 = -30.0;
  if ([(CKBusinessInfoView *)self layoutType]== 1)
  {
LABEL_5:
    [(CKBusinessInfoView *)self bounds];
    v9 = v8;
    [(CKBusinessInfoView *)self layoutMargins];
    v11 = v10;
    [(CKBusinessInfoView *)self layoutMargins];
    v4 = v9 - (v11 + v12) + v7;
    [(CKBusinessInfoView *)self bounds];
    v6 = v13;
  }

  greetingTextLabel = [(CKBusinessInfoView *)self greetingTextLabel];
  [greetingTextLabel sizeThatFits:{v4, v6}];
  v16 = v15;

  descriptionTextLabel = [(CKBusinessInfoView *)self descriptionTextLabel];
  [descriptionTextLabel sizeThatFits:{v4, v6}];
  v19 = v18;

  infoButton = [(CKBusinessInfoView *)self infoButton];
  [infoButton sizeThatFits:{v4, v6}];
  v22 = v21;

  layoutType = [(CKBusinessInfoView *)self layoutType];
  if (layoutType == 1)
  {
    [(CKBusinessInfoView *)self layoutMargins];
    v59 = v58 + 15.0;
    [(CKBusinessInfoView *)self frame];
    v61 = v60;
    [(CKBusinessInfoView *)self layoutMargins];
    v63 = v62;
    [(CKBusinessInfoView *)self layoutMargins];
    v65 = v61 - (v63 + v64) + -30.0;
    descriptionTextLabel2 = [(CKBusinessInfoView *)self descriptionTextLabel];
    [descriptionTextLabel2 setFrame:{v59, 10.0, v65, v19}];

    [(CKBusinessInfoView *)self frame];
    v68 = v67;
    [(CKBusinessInfoView *)self layoutMargins];
    v70 = v69;
    [(CKBusinessInfoView *)self layoutMargins];
    v51 = v68 - (v70 + v71) + -30.0;
    infoButton2 = [(CKBusinessInfoView *)self infoButton];
    [infoButton2 sizeThatFits:{v51, 1.79769313e308}];
    v74 = v73;

    if (v51 >= v74)
    {
      v51 = v74;
    }

    if ([(CKBusinessInfoView *)self _shouldReverseLayoutDirection])
    {
      [(CKBusinessInfoView *)self frame];
      v76 = v75 - v51 + -15.0;
      [(CKBusinessInfoView *)self layoutMargins];
      v56 = v76 - v77;
    }

    else
    {
      [(CKBusinessInfoView *)self layoutMargins];
      v56 = v78 + 15.0;
    }

    v57 = v19 + 10.0;
  }

  else
  {
    if (layoutType)
    {
      return;
    }

    v24 = *MEMORY[0x1E695F058];
    v25 = *(MEMORY[0x1E695F058] + 8);
    v26 = *(MEMORY[0x1E695F058] + 16);
    v27 = *(MEMORY[0x1E695F058] + 24);
    v28 = 15.0;
    if ([(CKBusinessInfoView *)self hasValidGreeting])
    {
      traitCollection = [(CKBusinessInfoView *)self traitCollection];
      verticalSizeClass = [traitCollection verticalSizeClass];

      if (verticalSizeClass != 1)
      {
        [(CKBusinessInfoView *)self layoutMargins];
        v24 = v31 + 30.0;
        [(CKBusinessInfoView *)self frame];
        v33 = v32;
        [(CKBusinessInfoView *)self layoutMargins];
        v35 = v34;
        [(CKBusinessInfoView *)self layoutMargins];
        v26 = v33 - (v35 + v36) + -60.0;
        v25 = 15.0;
        v28 = v16 + 30.0 + 15.0;
        v27 = v16;
      }
    }

    greetingTextLabel2 = [(CKBusinessInfoView *)self greetingTextLabel];
    [greetingTextLabel2 setFrame:{v24, v25, v26, v27}];

    [(CKBusinessInfoView *)self layoutMargins];
    v39 = v38 + 30.0;
    [(CKBusinessInfoView *)self frame];
    v41 = v40;
    [(CKBusinessInfoView *)self layoutMargins];
    v43 = v42;
    [(CKBusinessInfoView *)self layoutMargins];
    v45 = v41 - (v43 + v44) + -60.0;
    descriptionTextLabel3 = [(CKBusinessInfoView *)self descriptionTextLabel];
    [descriptionTextLabel3 setFrame:{v39, v28, v45, v19}];

    v47 = v19 + 0.0 + v28;
    infoButton3 = [(CKBusinessInfoView *)self infoButton];
    [(CKBusinessInfoView *)self frame];
    [infoButton3 sizeThatFits:{v49, 1.79769313e308}];
    v51 = v50;

    [(CKBusinessInfoView *)self bounds];
    v53 = (v52 - v51) * 0.5;
    traitCollection2 = [(CKBusinessInfoView *)self traitCollection];
    [traitCollection2 displayScale];
    v56 = round(v55 * v53) / v55;
    v57 = round(v47 * v55) / v55;
  }

  infoButton4 = [(CKBusinessInfoView *)self infoButton];
  [infoButton4 setFrame:{v56, v57, v51, v22}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (![(CKBusinessInfoView *)self layoutType:fits.width])
  {
    v6 = -60.0;
    goto LABEL_5;
  }

  v5 = 0.0;
  v6 = -30.0;
  if ([(CKBusinessInfoView *)self layoutType]== 1)
  {
LABEL_5:
    [(CKBusinessInfoView *)self layoutMargins];
    v8 = v7;
    [(CKBusinessInfoView *)self layoutMargins];
    v5 = width - (v8 + v9) + v6;
  }

  greetingTextLabel = [(CKBusinessInfoView *)self greetingTextLabel];
  [greetingTextLabel sizeThatFits:{v5, 1.79769313e308}];
  v12 = v11;
  v14 = v13;

  descriptionTextLabel = [(CKBusinessInfoView *)self descriptionTextLabel];
  [descriptionTextLabel sizeThatFits:{v5, 1.79769313e308}];
  v17 = v16;
  v19 = v18;

  infoButton = [(CKBusinessInfoView *)self infoButton];
  [infoButton sizeThatFits:{v5, 1.79769313e308}];
  v22 = v21;

  layoutType = [(CKBusinessInfoView *)self layoutType];
  if (layoutType == 1)
  {
    v25 = v19 + v22 + 10.0 + 10.0;
  }

  else if (layoutType)
  {
    v17 = *MEMORY[0x1E695F060];
    v25 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v24 = v19 + 15.0 + v22 + 15.0;
    if ([(CKBusinessInfoView *)self hasValidGreeting])
    {
      v25 = v14 + 30.0 + v24;
    }

    else
    {
      v25 = v24;
    }

    if (v12 >= v17)
    {
      v17 = v12;
    }
  }

  v26 = v17;
  result.height = v25;
  result.width = v26;
  return result;
}

- (void)setGreetingText:(id)text
{
  objc_storeStrong(&self->_greetingText, text);
  textCopy = text;
  greetingTextLabel = [(CKBusinessInfoView *)self greetingTextLabel];
  [greetingTextLabel setText:textCopy];

  [(CKBusinessInfoView *)self setNeedsLayout];
}

- (void)setDescriptionText:(id)text
{
  objc_storeStrong(&self->_descriptionText, text);
  textCopy = text;
  descriptionTextLabel = [(CKBusinessInfoView *)self descriptionTextLabel];
  [descriptionTextLabel setText:textCopy];

  [(CKBusinessInfoView *)self setNeedsLayout];
}

- (void)infoButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(CKBusinessInfoView *)self delegate];

  if (delegate)
  {
    delegate2 = [(CKBusinessInfoView *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate3 = [(CKBusinessInfoView *)self delegate];
      [delegate3 businessInfoView:self infoButtonTapped:tappedCopy];
    }
  }
}

- (BOOL)hasValidGreeting
{
  greetingText = [(CKBusinessInfoView *)self greetingText];
  if ([greetingText length])
  {
    greetingText2 = [(CKBusinessInfoView *)self greetingText];
    v5 = [greetingText2 isEqualToString:@"$EMPTY$"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (CKBusinessInfoViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end