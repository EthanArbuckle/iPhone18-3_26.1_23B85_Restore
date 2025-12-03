@interface CPUIGridButton
+ (id)buttonWithGridButton:(id)button layout:(id)layout templateDelegate:(id)delegate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGridButton:(id)button;
- (CGSize)preferredSize;
- (CGSize)textSize;
- (CPTemplateDelegate)templateDelegate;
- (double)maxWidth;
- (double)preferredLabelWidth;
- (id)imageWithOverlay;
- (unint64_t)hash;
- (void)_updateLabelColor;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
- (void)updateImageSet:(id)set;
- (void)updateTitleVariants:(id)variants;
- (void)updateUnread:(BOOL)unread;
@end

@implementation CPUIGridButton

+ (id)buttonWithGridButton:(id)button layout:(id)layout templateDelegate:(id)delegate
{
  v56[7] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  layoutCopy = layout;
  delegateCopy = delegate;
  v55.receiver = self;
  v55.super_class = &OBJC_METACLASS___CPUIGridButton;
  v11 = objc_msgSendSuper2(&v55, sel_buttonWithType_, 0);
  v12 = v11;
  if (v11)
  {
    [v11 setGridButton:buttonCopy];
    [v12 setTemplateDelegate:delegateCopy];
    [v12 setEnabled:{objc_msgSend(buttonCopy, "isEnabled")}];
    [buttonCopy identifier];
    v13 = v53 = delegateCopy;
    [v12 setIdentifier:v13];

    [v12 setLayout:layoutCopy];
    imageWithOverlay = [v12 imageWithOverlay];
    [v12 setImage:imageWithOverlay forState:0];

    imageView = [v12 imageView];
    layer = [imageView layer];
    [layer setAllowsEdgeAntialiasing:1];

    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    [v17 setBackgroundColor:_carSystemFocusColor];

    [v17 _setCornerRadius:4.0];
    [v17 setHidden:1];
    [v12 setFocusView:v17];
    [v12 addSubview:v17];
    v19 = objc_alloc_init(CPUIAbridgableLabel);
    [(CPUIAbridgableLabel *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(CPUIAbridgableLabel *)v19 setTextColor:labelColor];

    traitCollection = [v12 traitCollection];
    v22 = [layoutCopy fontForTraitCollection:traitCollection];
    [(CPUIAbridgableLabel *)v19 setFont:v22];

    [(CPUIAbridgableLabel *)v19 setTextAlignment:1];
    [(CPUIAbridgableLabel *)v19 setNumberOfLines:1];
    [(CPUIAbridgableLabel *)v19 sizeToFit];
    -[CPUIAbridgableLabel setEnabled:](v19, "setEnabled:", [buttonCopy isEnabled]);
    LODWORD(v23) = 1148846080;
    [(CPUIAbridgableLabel *)v19 setContentCompressionResistancePriority:0 forAxis:v23];
    [v12 setCustomTitleLabel:v19];
    [v12 addSubview:v19];
    topAnchor = [(CPUIAbridgableLabel *)v19 topAnchor];
    imageView2 = [v12 imageView];
    bottomAnchor = [imageView2 bottomAnchor];
    v49 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:2.0];
    v56[0] = v49;
    centerXAnchor = [(CPUIAbridgableLabel *)v19 centerXAnchor];
    centerXAnchor2 = [v12 centerXAnchor];
    v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v56[1] = v45;
    widthAnchor = [(CPUIAbridgableLabel *)v19 widthAnchor];
    widthAnchor2 = [v12 widthAnchor];
    v42 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v56[2] = v42;
    leftAnchor = [v17 leftAnchor];
    leftAnchor2 = [(CPUIAbridgableLabel *)v19 leftAnchor];
    v39 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:-4.0];
    v56[3] = v39;
    rightAnchor = [v17 rightAnchor];
    rightAnchor2 = [(CPUIAbridgableLabel *)v19 rightAnchor];
    v36 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:4.0];
    v56[4] = v36;
    v24 = v17;
    v46 = v17;
    topAnchor2 = [v17 topAnchor];
    topAnchor3 = [(CPUIAbridgableLabel *)v19 topAnchor];
    v27 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v56[5] = v27;
    [v24 bottomAnchor];
    v28 = v54 = layoutCopy;
    bottomAnchor2 = [(CPUIAbridgableLabel *)v19 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:bottomAnchor2 constant:1.0];
    v56[6] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:7];
    [v12 addConstraints:v31];

    layoutCopy = v54;
    titleVariants = [buttonCopy titleVariants];
    [(CPUIAbridgableLabel *)v19 setTextVariants:titleVariants];

    textVariants = [(CPUIAbridgableLabel *)v19 textVariants];
    [v12 setAccessibilityUserInputLabels:textVariants];

    messageConfiguration = [buttonCopy messageConfiguration];
    [v12 updateUnread:{objc_msgSend(messageConfiguration, "isUnread")}];

    delegateCopy = v53;
  }

  return v12;
}

- (id)imageWithOverlay
{
  gridButton = [(CPUIGridButton *)self gridButton];
  messageConfiguration = [gridButton messageConfiguration];

  if (messageConfiguration)
  {
    v5 = [CPUIGridImageRenderer alloc];
    image = [gridButton image];
    messageConfiguration2 = [gridButton messageConfiguration];
    isUnread = [messageConfiguration2 isUnread];
    traitCollection = [(CPUIGridButton *)self traitCollection];
    [traitCollection displayScale];
    v11 = v10;

    v12 = 2.0;
    if (v11 >= 2.0)
    {
      v12 = v11;
    }

    v13 = [(CPUIGridImageRenderer *)v5 initWithImage:image unread:isUnread scale:v12];

    image2 = [(CPUIGridImageRenderer *)v13 image];
  }

  else
  {
    image2 = [gridButton image];
  }

  return image2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CPUIGridButton *)self isEqualToGridButton:equalCopy];

  return v5;
}

- (BOOL)isEqualToGridButton:(id)button
{
  buttonCopy = button;
  gridButton = [(CPUIGridButton *)self gridButton];
  gridButton2 = [buttonCopy gridButton];

  LOBYTE(buttonCopy) = [gridButton isEqual:gridButton2];
  return buttonCopy;
}

- (unint64_t)hash
{
  gridButton = [(CPUIGridButton *)self gridButton];
  v3 = [gridButton hash];

  return v3;
}

- (CGSize)preferredSize
{
  layout = [(CPUIGridButton *)self layout];
  [layout preferredSize];
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
  layout = [(CPUIGridButton *)self layout];
  [layout maxWidth];
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
  selfCopy = self;
  gridButton = [(CPUIGridButton *)self gridButton];
  titleVariants = [gridButton titleVariants];

  obj = titleVariants;
  v8 = [titleVariants countByEnumeratingWithState:&v25 objects:v31 count:16];
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
        font = [(CPUIAbridgableLabel *)selfCopy->_customTitleLabel font];
        v29[1] = v12;
        v30[0] = font;
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
  layout = [(CPUIGridButton *)self layout];
  [layout imageSize];
  v6 = (Width - v5) * 0.5;

  [(CPUIGridButton *)self bounds];
  Height = CGRectGetHeight(v14);
  layout2 = [(CPUIGridButton *)self layout];
  [layout2 imageSize];
  v10 = Height - v9;

  [(CPUIGridButton *)self setImageEdgeInsets:0.0, v6, v10, v6];
  imageView = [(CPUIGridButton *)self imageView];
  [imageView setNeedsUpdateConstraints];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = CPUIGridButton;
  [(CPUIButton *)&v6 setEnabled:?];
  customTitleLabel = [(CPUIGridButton *)self customTitleLabel];
  [customTitleLabel setEnabled:enabledCopy];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  beganCopy = began;
  v13.receiver = self;
  v13.super_class = CPUIGridButton;
  [(CPUIGridButton *)&v13 pressesBegan:beganCopy withEvent:event];
  v7 = beganCopy;
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

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v13.receiver = self;
  v13.super_class = CPUIGridButton;
  [(CPUIGridButton *)&v13 pressesEnded:endedCopy withEvent:event];
  v7 = endedCopy;
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

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v13.receiver = self;
  v13.super_class = CPUIGridButton;
  [(CPUIGridButton *)&v13 pressesCancelled:cancelledCopy withEvent:event];
  v7 = cancelledCopy;
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v10.receiver = self;
  v10.super_class = CPUIGridButton;
  contextCopy = context;
  [(CPUIGridButton *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  v8 = nextFocusedItem != self;
  focusView = [(CPUIGridButton *)self focusView];
  [focusView setHidden:v8];

  [(CPUIGridButton *)self _updateLabelColor];
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = CPUIGridButton;
  changeCopy = change;
  [(CPUIButton *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(CPUIGridButton *)self imageWithOverlay:v9.receiver];
  [(CPUIGridButton *)self setImage:v5 forState:0];

  customTitleLabel = [(CPUIGridButton *)self customTitleLabel];
  layout = [(CPUIGridButton *)self layout];
  v8 = [layout fontForTraitCollection:changeCopy];

  [customTitleLabel setFont:v8];
  [(CPUIGridButton *)self _updateLabelColor];
}

- (void)_updateLabelColor
{
  isFocused = [(CPUIGridButton *)self isFocused];
  customTitleLabel = [(CPUIGridButton *)self customTitleLabel];
  if (isFocused)
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v4 = ;
  [customTitleLabel setTextColor:v4];
}

- (void)updateImageSet:(id)set
{
  setCopy = set;
  gridButton = [(CPUIGridButton *)self gridButton];
  [gridButton setImageSet:setCopy];

  imageWithOverlay = [(CPUIGridButton *)self imageWithOverlay];
  [(CPUIGridButton *)self setImage:imageWithOverlay forState:0];
}

- (void)updateTitleVariants:(id)variants
{
  variantsCopy = variants;
  gridButton = [(CPUIGridButton *)self gridButton];
  [gridButton updateTitleVariants:variantsCopy];

  customTitleLabel = [(CPUIGridButton *)self customTitleLabel];
  [customTitleLabel setTextVariants:variantsCopy];

  gridButton2 = [(CPUIGridButton *)self gridButton];
  [gridButton2 setAccessibilityUserInputLabels:variantsCopy];
}

- (void)updateUnread:(BOOL)unread
{
  unreadCopy = unread;
  gridButton = [(CPUIGridButton *)self gridButton];
  messageConfiguration = [gridButton messageConfiguration];
  [messageConfiguration setUnread:unreadCopy];

  imageWithOverlay = [(CPUIGridButton *)self imageWithOverlay];
  [(CPUIGridButton *)self setImage:imageWithOverlay forState:0];
}

- (CPTemplateDelegate)templateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_templateDelegate);

  return WeakRetained;
}

@end