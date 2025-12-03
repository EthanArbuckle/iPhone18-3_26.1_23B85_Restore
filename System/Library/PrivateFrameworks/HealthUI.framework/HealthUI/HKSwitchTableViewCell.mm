@interface HKSwitchTableViewCell
- (BOOL)adjustsFontSizeToFitWidth;
- (CGSize)iconSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HKSwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HKSwitchTableViewCellDelegate)delegate;
- (void)_contextSizeCategoryChanged;
- (void)_setupUI;
- (void)_updateFont;
- (void)layoutSubviews;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setCountText:(id)text;
- (void)setDisplayText:(id)text;
- (void)setEnabled:(BOOL)enabled;
- (void)setIconImage:(id)image;
- (void)switchValueChanged:(id)changed;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAutomationIdentifiersIfNeeded;
- (void)updateAutomationIdentifiersWithBaseIdentifier:(id)identifier;
@end

@implementation HKSwitchTableViewCell

- (HKSwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = HKSwitchTableViewCell;
  v4 = [(HKSwitchTableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_enabled = 1;
    [(HKSwitchTableViewCell *)v4 _setupUI];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__contextSizeCategoryChanged name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v5;
}

- (BOOL)adjustsFontSizeToFitWidth
{
  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  adjustsFontSizeToFitWidth = [textLabel adjustsFontSizeToFitWidth];

  return adjustsFontSizeToFitWidth;
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  widthCopy = width;
  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel setAdjustsFontSizeToFitWidth:widthCopy];
}

- (void)_setupUI
{
  [(HKSwitchTableViewCell *)self setSelectionStyle:0];
  _displayLabelFont = [(HKSwitchTableViewCell *)self _displayLabelFont];
  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel setFont:_displayLabelFont];

  textLabel2 = [(HKSwitchTableViewCell *)self textLabel];
  LODWORD(v6) = 1057803469;
  [textLabel2 _setHyphenationFactor:v6];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  textLabel3 = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel3 setTextColor:labelColor];

  textLabel4 = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel4 setNumberOfLines:0];

  textLabel5 = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel5 setLineBreakMode:0];

  v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  countLabel = self->_countLabel;
  self->_countLabel = v11;

  _displayLabelFont2 = [(HKSwitchTableViewCell *)self _displayLabelFont];
  [(UILabel *)self->_countLabel setFont:_displayLabelFont2];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_countLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_countLabel setTextAlignment:2];
  v15 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
  v16 = self->_switch;
  self->_switch = v15;

  [(UISwitch *)self->_switch addTarget:self action:sel_switchValueChanged_ forControlEvents:4096];
  [(UISwitch *)self->_switch setEnabled:self->_enabled];
  contentView = [(HKSwitchTableViewCell *)self contentView];
  [contentView addSubview:self->_countLabel];
  [contentView addSubview:self->_switch];
}

- (void)_updateFont
{
  _displayLabelFont = [(HKSwitchTableViewCell *)self _displayLabelFont];
  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel setFont:_displayLabelFont];

  _displayLabelFont2 = [(HKSwitchTableViewCell *)self _displayLabelFont];
  [(UILabel *)self->_countLabel setFont:_displayLabelFont2];
}

- (void)_contextSizeCategoryChanged
{
  _displayLabelFont = [(HKSwitchTableViewCell *)self _displayLabelFont];
  [(UILabel *)self->_countLabel setFont:_displayLabelFont];

  [(HKSwitchTableViewCell *)self setNeedsLayout];
}

- (void)setEnabled:(BOOL)enabled
{
  self->_enabled = enabled;
  [(UISwitch *)self->_switch setEnabled:?];
  if (self->_enabled)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v5 = ;
  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel setTextColor:v5];
}

- (CGSize)iconSize
{
  imageView = [(HKSwitchTableViewCell *)self imageView];
  image = [imageView image];

  if (image)
  {
    imageView2 = [(HKSwitchTableViewCell *)self imageView];
    image2 = [imageView2 image];
    [image2 size];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(HKSwitchTableViewCell *)self layoutMargins];
  v7 = v6;
  v9 = width - (v6 + v8);
  if (!self->_shouldHideSwitch)
  {
    [(UISwitch *)self->_switch sizeToFit];
    [(UISwitch *)self->_switch frame];
    v9 = v9 - (v10 + 5.0);
  }

  imageView = [(HKSwitchTableViewCell *)self imageView];
  image = [imageView image];

  if (image)
  {
    [(HKSwitchTableViewCell *)self iconSize];
    v9 = v9 - (v7 + v13);
  }

  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel sizeThatFits:{v9, 1.79769313e308}];
  v16 = v15;

  v17 = v16 + 30.0;
  if (HKUIApplicationIsUsingAccessibilityContentSizeCategory())
  {
    [(UISwitch *)self->_switch frame];
    v19 = v18;
    [(UILabel *)self->_countLabel sizeThatFits:width, height];
    if (v19 >= v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v17 = v17 + v21;
  }

  if (v17 >= 52.0)
  {
    v22 = v17;
  }

  else
  {
    v22 = 52.0;
  }

  v23 = width;
  result.height = v22;
  result.width = v23;
  return result;
}

- (void)layoutSubviews
{
  *&v110.origin.y = self;
  *&v110.size.width = HKSwitchTableViewCell;
  [(CGFloat *)&v110.origin.y layoutSubviews];
  [(HKSwitchTableViewCell *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v110.origin.x = v7;
  v9 = v8;
  [(HKSwitchTableViewCell *)self separatorInset];
  v93 = v10;
  contentView = [(HKSwitchTableViewCell *)self contentView];
  [contentView frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v6 + v13;
  rect = v4 + v15;
  v21 = v17 - (v6 + v9);
  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  [(UISwitch *)self->_switch sizeToFit];
  [(UISwitch *)self->_switch frame];
  v102 = v17;
  UIRectCenteredYInRect();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  _shouldReverseLayoutDirection = [(HKSwitchTableViewCell *)self _shouldReverseLayoutDirection];
  v104 = v26;
  v105 = v30;
  v106 = v28;
  v95 = v21;
  v96 = v19 - (v4 + v110.origin.x);
  v97 = v20;
  v32 = v20;
  v33 = rect;
  v34 = v21;
  v35 = v96;
  if (IsUsingAccessibilityContentSizeCategory == _shouldReverseLayoutDirection)
  {
    MaxX = CGRectGetMaxX(*&v32);
    v111.origin.x = v24;
    v111.origin.y = v26;
    v111.size.width = v28;
    v111.size.height = v30;
    MinX = MaxX - CGRectGetWidth(v111);
  }

  else
  {
    MinX = CGRectGetMinX(*&v32);
  }

  [(UILabel *)self->_countLabel sizeToFit];
  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel frame];
  UIRectCenteredYInRect();
  v110.origin.x = v39;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [(UILabel *)self->_countLabel frame];
  UIRectCenteredYInRect();
  v94 = v46;
  v100 = v48;
  v101 = v47;
  v107 = v45;
  if (([(HKSwitchTableViewCell *)self _shouldReverseLayoutDirection]& 1) != 0)
  {
    x = MinX;
    v50 = rect;
    v51 = v43;
    if ((IsUsingAccessibilityContentSizeCategory & 1) == 0)
    {
      v112.origin.x = MinX;
      v112.origin.y = v104;
      v112.size.height = v105;
      v112.size.width = v106;
      v110.origin.x = CGRectGetMaxX(v112) + 5.0;
      v51 = v102 - v110.origin.x - v93;
      x = v93;
    }
  }

  else
  {
    v52 = v104;
    v50 = rect;
    if (IsUsingAccessibilityContentSizeCategory)
    {
      x = v110.origin.x;
      v51 = v43;
    }

    else
    {
      v53 = MinX;
      v55 = v30;
      v54 = v106;
      v56 = CGRectGetMinX(*(&v52 - 1));
      v113.origin.x = v110.origin.x;
      v113.origin.y = v41;
      v113.size.width = v43;
      v113.size.height = v107;
      v51 = v56 - CGRectGetMinX(v113) + -5.0;
      v114.size.height = v96;
      v114.origin.x = v20;
      v114.origin.y = rect;
      v114.size.width = v95;
      x = CGRectGetMaxX(v114) + 5.0;
    }
  }

  v99 = x;
  v103 = MinX;
  imageView = [(HKSwitchTableViewCell *)self imageView];
  [imageView frame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  recta = v64;

  imageView2 = [(HKSwitchTableViewCell *)self imageView];
  image = [imageView2 image];

  if (image)
  {
    if (([(HKSwitchTableViewCell *)self _shouldReverseLayoutDirection]& 1) != 0)
    {
      v68 = v96;
      v67 = v97;
      if (self->_centersIcon)
      {
        v115.origin.x = v110.origin.x;
        v69 = v41;
        v115.origin.y = v41;
        v115.size.width = v51;
        v115.size.height = v107;
        v70 = CGRectGetMaxX(v115);
        v116.origin.x = v59;
        v116.origin.y = v61;
        v116.size.width = v63;
        v116.size.height = recta;
        v71 = v70 + CGRectGetWidth(v116) * 0.5;
      }

      else
      {
        v69 = v41;
        v75 = v50;
        v76 = v95;
        v77 = CGRectGetMaxX(*&v67);
        v119.origin.x = v59;
        v119.origin.y = v61;
        v119.size.width = v63;
        v119.size.height = recta;
        v71 = v77 - CGRectGetWidth(v119);
      }
    }

    else
    {
      v73 = v96;
      v72 = v97;
      if (self->_centersIcon)
      {
        v117.origin.x = v110.origin.x;
        v69 = v41;
        v117.origin.y = v41;
        v117.size.width = v51;
        v117.size.height = v107;
        v74 = CGRectGetMinX(v117);
        v118.origin.x = v59;
        v118.origin.y = v61;
        v118.size.width = v63;
        v118.size.height = recta;
        v71 = (v74 - CGRectGetWidth(v118)) * 0.5 + 0.0;
      }

      else
      {
        v69 = v41;
        v78 = v50;
        v79 = v95;
        v71 = CGRectGetMinX(*&v72);
      }
    }

    v98 = v71;
  }

  else
  {
    v98 = v59;
    v69 = v41;
  }

  v80 = v63;
  if (IsUsingAccessibilityContentSizeCategory)
  {
    [(UISwitch *)self->_switch frame];
    v82 = v81;
    [(UILabel *)self->_countLabel frame];
    if (v82 >= v83)
    {
      v84 = v82;
    }

    else
    {
      v84 = v83;
    }

    v85 = (v84 + 5.0) * 0.5;
    v61 = v61 - v85;
    v69 = v69 - v85;
    v86 = v110.origin.x;
    v120.origin.x = v110.origin.x;
    v120.origin.y = v69;
    v120.size.width = v51;
    v87 = v51;
    v88 = v107;
    v120.size.height = v107;
    v89 = CGRectGetMaxY(v120) + 5.0;
    v90 = v89;
  }

  else
  {
    v89 = v94;
    v90 = v104;
    v86 = v110.origin.x;
    v87 = v51;
    v88 = v107;
  }

  imageView3 = [(HKSwitchTableViewCell *)self imageView];
  [imageView3 setFrame:{v98, v61, v80, recta}];

  textLabel2 = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel2 setFrame:{v86, v69, v87, v88}];

  [(UISwitch *)self->_switch setFrame:v103, v90, v106, v105];
  [(UILabel *)self->_countLabel setFrame:v99, v89, v101, v100];
}

- (void)setDisplayText:(id)text
{
  textCopy = text;
  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel setText:textCopy];

  [(HKSwitchTableViewCell *)self setNeedsLayout];

  [(HKSwitchTableViewCell *)self updateAutomationIdentifiersIfNeeded];
}

- (void)setCountText:(id)text
{
  [(UILabel *)self->_countLabel setText:text];

  [(HKSwitchTableViewCell *)self setNeedsLayout];
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  imageView = [(HKSwitchTableViewCell *)self imageView];
  [imageView setImage:imageCopy];

  [(HKSwitchTableViewCell *)self setNeedsLayout];
}

- (void)updateAutomationIdentifiersIfNeeded
{
  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  accessibilityIdentifier = [textLabel accessibilityIdentifier];
  if (accessibilityIdentifier)
  {
    v4 = accessibilityIdentifier;
  }

  else
  {
    textLabel2 = [(HKSwitchTableViewCell *)self textLabel];
    text = [textLabel2 text];

    if (!text)
    {
      return;
    }

    textLabel3 = [(HKSwitchTableViewCell *)self textLabel];
    text2 = [textLabel3 text];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    textLabel = [text2 hk_stringByRemovingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v4 = [@"UIA.Health" stringByAppendingFormat:@".%@.SwitchCell", textLabel];
    [(HKSwitchTableViewCell *)self updateAutomationIdentifiersWithBaseIdentifier:v4];
  }
}

- (void)updateAutomationIdentifiersWithBaseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(HKSwitchTableViewCell *)self setAccessibilityIdentifier:identifierCopy];
  v5 = [identifierCopy stringByAppendingString:@".TitleText"];
  textLabel = [(HKSwitchTableViewCell *)self textLabel];
  [textLabel setAccessibilityIdentifier:v5];

  v7 = [identifierCopy stringByAppendingString:@".CountText"];
  [(UILabel *)self->_countLabel setAccessibilityIdentifier:v7];

  v8 = [identifierCopy stringByAppendingString:@".Switch"];

  [(UISwitch *)self->_switch setAccessibilityIdentifier:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = HKSwitchTableViewCell;
  [(HKSwitchTableViewCell *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKSwitchTableViewCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(HKSwitchTableViewCell *)self _updateFont];
      [(HKSwitchTableViewCell *)self setNeedsLayout];
    }
  }
}

- (void)switchValueChanged:(id)changed
{
  delegate = [(HKSwitchTableViewCell *)self delegate];
  [delegate switchCellValueChanged:self value:{-[UISwitch isOn](self->_switch, "isOn")}];
}

- (HKSwitchTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end