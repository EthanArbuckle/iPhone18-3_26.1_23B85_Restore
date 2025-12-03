@interface ICDocCamFilterButton
+ (id)filterButtonWithType:(signed __int16)type;
- (CGRect)accessibilityFrame;
- (NSLayoutConstraint)iconSizeConstraint;
- (NSLayoutConstraint)labelVerticalSpacingConstraint;
- (UIColor)activeBackgroundViewColor;
- (UIImageView)filterIconView;
- (UILabel)filterNameLabel;
- (UIView)backgroundView;
- (double)iconSize;
- (id)accessibilityLabel;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)imageForFilterType:(signed __int16)type;
- (unint64_t)accessibilityTraits;
- (void)awakeFromNib;
- (void)dealloc;
- (void)setFilterType:(signed __int16)type;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIconSize:(double)size;
- (void)setSelected:(BOOL)selected;
- (void)updateForAccessibilityDarkerSystemColors:(id)colors;
@end

@implementation ICDocCamFilterButton

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDocCamFilterButton;
  [(ICDocCamFilterButton *)&v4 dealloc];
}

- (void)awakeFromNib
{
  v9.receiver = self;
  v9.super_class = ICDocCamFilterButton;
  [(ICDocCamFilterButton *)&v9 awakeFromNib];
  inactiveBackgroundViewColor = [(ICDocCamFilterButton *)self inactiveBackgroundViewColor];
  backgroundView = [(ICDocCamFilterButton *)self backgroundView];
  [backgroundView setBackgroundColor:inactiveBackgroundViewColor];

  inactiveTextColor = [(ICDocCamFilterButton *)self inactiveTextColor];
  filterNameLabel = [(ICDocCamFilterButton *)self filterNameLabel];
  [filterNameLabel setTextColor:inactiveTextColor];

  filterIconView = [(ICDocCamFilterButton *)self filterIconView];
  [filterIconView setAccessibilityIgnoresInvertColors:1];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_updateForAccessibilityDarkerSystemColors_ name:*MEMORY[0x277D76460] object:0];
}

- (void)setFilterType:(signed __int16)type
{
  typeCopy = type;
  self->_filterType = type;
  v5 = [(ICDocCamFilterButton *)self imageForFilterType:?];
  filterIconView = [(ICDocCamFilterButton *)self filterIconView];
  [filterIconView setImage:v5];

  v8 = [ICDocCamImageFilters localizedImageFilterNameForType:typeCopy];
  filterNameLabel = [(ICDocCamFilterButton *)self filterNameLabel];
  [filterNameLabel setText:v8];
}

- (void)setIconSize:(double)size
{
  iconSizeConstraint = [(ICDocCamFilterButton *)self iconSizeConstraint];
  [iconSizeConstraint setConstant:size];
}

- (double)iconSize
{
  iconSizeConstraint = [(ICDocCamFilterButton *)self iconSizeConstraint];
  [iconSizeConstraint constant];
  v4 = v3;

  return v4;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(ICDocCamFilterButton *)self isSelected]!= selected)
  {
    if (selectedCopy)
    {
      [(ICDocCamFilterButton *)self activeBackgroundViewColor];
    }

    else
    {
      [(ICDocCamFilterButton *)self inactiveBackgroundViewColor];
    }
    v5 = ;
    backgroundView = [(ICDocCamFilterButton *)self backgroundView];
    [backgroundView setBackgroundColor:v5];

    if (selectedCopy)
    {
      [(ICDocCamFilterButton *)self activeBackgroundViewColor];
    }

    else
    {
      [(ICDocCamFilterButton *)self inactiveTextColor];
    }
    v7 = ;
    filterNameLabel = [(ICDocCamFilterButton *)self filterNameLabel];
    [filterNameLabel setTextColor:v7];
  }

  v9.receiver = self;
  v9.super_class = ICDocCamFilterButton;
  [(ICDocCamFilterButton *)&v9 setSelected:selectedCopy];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = ICDocCamFilterButton;
  v5 = [(ICDocCamFilterButton *)&v9 hitTest:event withEvent:test.x, test.y];
  if (v5)
  {
    v6 = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(ICDocCamFilterButton *)self isHighlighted]!= highlighted)
  {
    if (highlightedCopy)
    {
      v5 = 0.5;
    }

    else
    {
      v5 = 1.0;
    }

    filterIconView = [(ICDocCamFilterButton *)self filterIconView];
    [filterIconView setAlpha:v5];
  }

  v7.receiver = self;
  v7.super_class = ICDocCamFilterButton;
  [(ICDocCamFilterButton *)&v7 setHighlighted:highlightedCopy];
}

- (UIColor)activeBackgroundViewColor
{
  tintColor = [(ICDocCamFilterButton *)self tintColor];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v3 = [MEMORY[0x277D75348] dc_darkerAccessibilityColorForColor:tintColor];

    tintColor = v3;
  }

  return tintColor;
}

- (id)imageForFilterType:(signed __int16)type
{
  if (type > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_278F93878[type];
  }

  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:v3 inBundle:v5 compatibleWithTraitCollection:0];

  if (!v6)
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamFilterButton imageForFilterType:v7];
    }
  }

  return v6;
}

+ (id)filterButtonWithType:(signed __int16)type
{
  typeCopy = type;
  v22 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = NSStringFromClass(self);
  v7 = [v5 loadNibNamed:v6 owner:self options:0];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v17 + 1) + 8 * v12);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v13;

    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v15 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [ICDocCamFilterButton filterButtonWithType:v15];
  }

  v14 = 0;
LABEL_14:
  [v14 setFilterType:{typeCopy, v17}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v14 setNeedsLayout];
  [v14 layoutIfNeeded];

  return v14;
}

- (id)accessibilityLabel
{
  filterNameLabel = [(ICDocCamFilterButton *)self filterNameLabel];
  text = [filterNameLabel text];

  return text;
}

- (CGRect)accessibilityFrame
{
  filterIconView = [(ICDocCamFilterButton *)self filterIconView];
  [filterIconView accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = ICDocCamFilterButton;
  accessibilityTraits = [(ICDocCamFilterButton *)&v7 accessibilityTraits];
  isSelected = [(ICDocCamFilterButton *)self isSelected];
  v5 = *MEMORY[0x277D76598];
  if (!isSelected)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (void)updateForAccessibilityDarkerSystemColors:(id)colors
{
  if ([(ICDocCamFilterButton *)self isSelected])
  {
    activeBackgroundViewColor = [(ICDocCamFilterButton *)self activeBackgroundViewColor];
    backgroundView = [(ICDocCamFilterButton *)self backgroundView];
    [backgroundView setBackgroundColor:activeBackgroundViewColor];
  }
}

- (NSLayoutConstraint)labelVerticalSpacingConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_labelVerticalSpacingConstraint);

  return WeakRetained;
}

- (UILabel)filterNameLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_filterNameLabel);

  return WeakRetained;
}

- (UIImageView)filterIconView
{
  WeakRetained = objc_loadWeakRetained(&self->_filterIconView);

  return WeakRetained;
}

- (UIView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (NSLayoutConstraint)iconSizeConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_iconSizeConstraint);

  return WeakRetained;
}

- (void)imageForFilterType:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "result";
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "invalid nil value for '%s'", &v1, 0xCu);
}

@end