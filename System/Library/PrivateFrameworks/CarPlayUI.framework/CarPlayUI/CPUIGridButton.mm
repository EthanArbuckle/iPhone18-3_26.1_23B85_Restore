@interface CPUIGridButton
+ (id)buttonWithGridButton:(id)a3 layout:(id)a4 templateDelegate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGridButton:(id)a3;
- (CGSize)preferredSize;
- (CGSize)textSize;
- (CPTemplateDelegate)templateDelegate;
- (double)maxWidth;
- (double)preferredLabelWidth;
- (id)imageWithOverlay;
- (unint64_t)hash;
- (void)_updateLabelColor;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateImageSet:(id)a3;
- (void)updateTitleVariants:(id)a3;
- (void)updateUnread:(BOOL)a3;
@end

@implementation CPUIGridButton

+ (id)buttonWithGridButton:(id)a3 layout:(id)a4 templateDelegate:(id)a5
{
  v56[7] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v55.receiver = a1;
  v55.super_class = &OBJC_METACLASS___CPUIGridButton;
  v11 = objc_msgSendSuper2(&v55, sel_buttonWithType_, 0);
  v12 = v11;
  if (v11)
  {
    [v11 setGridButton:v8];
    [v12 setTemplateDelegate:v10];
    [v12 setEnabled:{objc_msgSend(v8, "isEnabled")}];
    [v8 identifier];
    v13 = v53 = v10;
    [v12 setIdentifier:v13];

    [v12 setLayout:v9];
    v14 = [v12 imageWithOverlay];
    [v12 setImage:v14 forState:0];

    v15 = [v12 imageView];
    v16 = [v15 layer];
    [v16 setAllowsEdgeAntialiasing:1];

    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [MEMORY[0x277D75348] _carSystemFocusColor];
    [v17 setBackgroundColor:v18];

    [v17 _setCornerRadius:4.0];
    [v17 setHidden:1];
    [v12 setFocusView:v17];
    [v12 addSubview:v17];
    v19 = objc_alloc_init(CPUIAbridgableLabel);
    [(CPUIAbridgableLabel *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [MEMORY[0x277D75348] labelColor];
    [(CPUIAbridgableLabel *)v19 setTextColor:v20];

    v21 = [v12 traitCollection];
    v22 = [v9 fontForTraitCollection:v21];
    [(CPUIAbridgableLabel *)v19 setFont:v22];

    [(CPUIAbridgableLabel *)v19 setTextAlignment:1];
    [(CPUIAbridgableLabel *)v19 setNumberOfLines:1];
    [(CPUIAbridgableLabel *)v19 sizeToFit];
    -[CPUIAbridgableLabel setEnabled:](v19, "setEnabled:", [v8 isEnabled]);
    LODWORD(v23) = 1148846080;
    [(CPUIAbridgableLabel *)v19 setContentCompressionResistancePriority:0 forAxis:v23];
    [v12 setCustomTitleLabel:v19];
    [v12 addSubview:v19];
    v51 = [(CPUIAbridgableLabel *)v19 topAnchor];
    v52 = [v12 imageView];
    v50 = [v52 bottomAnchor];
    v49 = [v51 constraintEqualToAnchor:v50 constant:2.0];
    v56[0] = v49;
    v48 = [(CPUIAbridgableLabel *)v19 centerXAnchor];
    v47 = [v12 centerXAnchor];
    v45 = [v48 constraintEqualToAnchor:v47];
    v56[1] = v45;
    v44 = [(CPUIAbridgableLabel *)v19 widthAnchor];
    v43 = [v12 widthAnchor];
    v42 = [v44 constraintLessThanOrEqualToAnchor:v43];
    v56[2] = v42;
    v41 = [v17 leftAnchor];
    v40 = [(CPUIAbridgableLabel *)v19 leftAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 constant:-4.0];
    v56[3] = v39;
    v38 = [v17 rightAnchor];
    v37 = [(CPUIAbridgableLabel *)v19 rightAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:4.0];
    v56[4] = v36;
    v24 = v17;
    v46 = v17;
    v25 = [v17 topAnchor];
    v26 = [(CPUIAbridgableLabel *)v19 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v56[5] = v27;
    [v24 bottomAnchor];
    v28 = v54 = v9;
    v29 = [(CPUIAbridgableLabel *)v19 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:1.0];
    v56[6] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:7];
    [v12 addConstraints:v31];

    v9 = v54;
    v32 = [v8 titleVariants];
    [(CPUIAbridgableLabel *)v19 setTextVariants:v32];

    v33 = [(CPUIAbridgableLabel *)v19 textVariants];
    [v12 setAccessibilityUserInputLabels:v33];

    v34 = [v8 messageConfiguration];
    [v12 updateUnread:{objc_msgSend(v34, "isUnread")}];

    v10 = v53;
  }

  return v12;
}

- (id)imageWithOverlay
{
  v3 = [(CPUIGridButton *)self gridButton];
  v4 = [v3 messageConfiguration];

  if (v4)
  {
    v5 = [CPUIGridImageRenderer alloc];
    v6 = [v3 image];
    v7 = [v3 messageConfiguration];
    v8 = [v7 isUnread];
    v9 = [(CPUIGridButton *)self traitCollection];
    [v9 displayScale];
    v11 = v10;

    v12 = 2.0;
    if (v11 >= 2.0)
    {
      v12 = v11;
    }

    v13 = [(CPUIGridImageRenderer *)v5 initWithImage:v6 unread:v8 scale:v12];

    v14 = [(CPUIGridImageRenderer *)v13 image];
  }

  else
  {
    v14 = [v3 image];
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CPUIGridButton *)self isEqualToGridButton:v4];

  return v5;
}

- (BOOL)isEqualToGridButton:(id)a3
{
  v4 = a3;
  v5 = [(CPUIGridButton *)self gridButton];
  v6 = [v4 gridButton];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(CPUIGridButton *)self gridButton];
  v3 = [v2 hash];

  return v3;
}

- (CGSize)preferredSize
{
  v3 = [(CPUIGridButton *)self layout];
  [v3 preferredSize];
  v5 = v4;
  v7 = v6;

  [(CPUIGridButton *)self textSize];
  v9 = v7 + fmax(v8 + -14.0, 0.0);
  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (double)maxWidth
{
  v2 = [(CPUIGridButton *)self layout];
  [v2 maxWidth];
  v4 = v3;

  return v4;
}

- (CGSize)textSize
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  v24 = objc_alloc_init(MEMORY[0x277D74240]);
  [v24 setLineBreakMode:{-[CPUIAbridgableLabel lineBreakMode](self->_customTitleLabel, "lineBreakMode")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self;
  v6 = [(CPUIGridButton *)self gridButton];
  v7 = [v6 titleVariants];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v11 = *MEMORY[0x277D740A8];
    v12 = *MEMORY[0x277D74118];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v29[0] = v11;
        v15 = [(CPUIAbridgableLabel *)v5->_customTitleLabel font];
        v29[1] = v12;
        v30[0] = v15;
        v30[1] = v24;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
        [v14 sizeWithAttributes:v16];
        v18 = v17;
        v20 = v19;

        if (v18 > v4)
        {
          v3 = v20;
          v4 = v18;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v9);
  }

  v21 = v4;
  v22 = v3;
  result.height = v22;
  result.width = v21;
  return result;
}

- (double)preferredLabelWidth
{
  [(CPUIGridButton *)self textSize];
  v4 = ceil(v3);
  [(CPUIGridButton *)self preferredSize];
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = CPUIGridButton;
  [(CPUIGridButton *)&v12 layoutSubviews];
  [(CPUIGridButton *)self bounds];
  Width = CGRectGetWidth(v13);
  v4 = [(CPUIGridButton *)self layout];
  [v4 imageSize];
  v6 = (Width - v5) * 0.5;

  [(CPUIGridButton *)self bounds];
  Height = CGRectGetHeight(v14);
  v8 = [(CPUIGridButton *)self layout];
  [v8 imageSize];
  v10 = Height - v9;

  [(CPUIGridButton *)self setImageEdgeInsets:0.0, v6, v10, v6];
  v11 = [(CPUIGridButton *)self imageView];
  [v11 setNeedsUpdateConstraints];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CPUIGridButton;
  [(CPUIButton *)&v6 setEnabled:?];
  v5 = [(CPUIGridButton *)self customTitleLabel];
  [v5 setEnabled:v3];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPUIGridButton;
  [(CPUIGridButton *)&v13 pressesBegan:v6 withEvent:a4];
  v7 = v6;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v14 + 1) + 8 * v12) type] == 4)
        {

          [(CPUIGridButton *)self setHighlighted:1];
          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPUIGridButton;
  [(CPUIGridButton *)&v13 pressesEnded:v6 withEvent:a4];
  v7 = v6;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v14 + 1) + 8 * v12) type] == 4)
        {

          [(CPUIGridButton *)self setHighlighted:0];
          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPUIGridButton;
  [(CPUIGridButton *)&v13 pressesCancelled:v6 withEvent:a4];
  v7 = v6;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v14 + 1) + 8 * v12) type] == 4)
        {

          [(CPUIGridButton *)self setHighlighted:0];
          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v10.receiver = self;
  v10.super_class = CPUIGridButton;
  v6 = a3;
  [(CPUIGridButton *)&v10 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];

  v8 = v7 != self;
  v9 = [(CPUIGridButton *)self focusView];
  [v9 setHidden:v8];

  [(CPUIGridButton *)self _updateLabelColor];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = CPUIGridButton;
  v4 = a3;
  [(CPUIButton *)&v9 traitCollectionDidChange:v4];
  v5 = [(CPUIGridButton *)self imageWithOverlay:v9.receiver];
  [(CPUIGridButton *)self setImage:v5 forState:0];

  v6 = [(CPUIGridButton *)self customTitleLabel];
  v7 = [(CPUIGridButton *)self layout];
  v8 = [v7 fontForTraitCollection:v4];

  [v6 setFont:v8];
  [(CPUIGridButton *)self _updateLabelColor];
}

- (void)_updateLabelColor
{
  v3 = [(CPUIGridButton *)self isFocused];
  v5 = [(CPUIGridButton *)self customTitleLabel];
  if (v3)
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v4 = ;
  [v5 setTextColor:v4];
}

- (void)updateImageSet:(id)a3
{
  v4 = a3;
  v5 = [(CPUIGridButton *)self gridButton];
  [v5 setImageSet:v4];

  v6 = [(CPUIGridButton *)self imageWithOverlay];
  [(CPUIGridButton *)self setImage:v6 forState:0];
}

- (void)updateTitleVariants:(id)a3
{
  v4 = a3;
  v5 = [(CPUIGridButton *)self gridButton];
  [v5 updateTitleVariants:v4];

  v6 = [(CPUIGridButton *)self customTitleLabel];
  [v6 setTextVariants:v4];

  v7 = [(CPUIGridButton *)self gridButton];
  [v7 setAccessibilityUserInputLabels:v4];
}

- (void)updateUnread:(BOOL)a3
{
  v3 = a3;
  v5 = [(CPUIGridButton *)self gridButton];
  v6 = [v5 messageConfiguration];
  [v6 setUnread:v3];

  v7 = [(CPUIGridButton *)self imageWithOverlay];
  [(CPUIGridButton *)self setImage:v7 forState:0];
}

- (CPTemplateDelegate)templateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_templateDelegate);

  return WeakRetained;
}

@end