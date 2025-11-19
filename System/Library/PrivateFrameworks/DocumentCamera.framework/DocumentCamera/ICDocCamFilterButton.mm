@interface ICDocCamFilterButton
+ (id)filterButtonWithType:(signed __int16)a3;
- (CGRect)accessibilityFrame;
- (NSLayoutConstraint)iconSizeConstraint;
- (NSLayoutConstraint)labelVerticalSpacingConstraint;
- (UIColor)activeBackgroundViewColor;
- (UIImageView)filterIconView;
- (UILabel)filterNameLabel;
- (UIView)backgroundView;
- (double)iconSize;
- (id)accessibilityLabel;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)imageForFilterType:(signed __int16)a3;
- (unint64_t)accessibilityTraits;
- (void)awakeFromNib;
- (void)dealloc;
- (void)setFilterType:(signed __int16)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIconSize:(double)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateForAccessibilityDarkerSystemColors:(id)a3;
@end

@implementation ICDocCamFilterButton

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDocCamFilterButton;
  [(ICDocCamFilterButton *)&v4 dealloc];
}

- (void)awakeFromNib
{
  v9.receiver = self;
  v9.super_class = ICDocCamFilterButton;
  [(ICDocCamFilterButton *)&v9 awakeFromNib];
  v3 = [(ICDocCamFilterButton *)self inactiveBackgroundViewColor];
  v4 = [(ICDocCamFilterButton *)self backgroundView];
  [v4 setBackgroundColor:v3];

  v5 = [(ICDocCamFilterButton *)self inactiveTextColor];
  v6 = [(ICDocCamFilterButton *)self filterNameLabel];
  [v6 setTextColor:v5];

  v7 = [(ICDocCamFilterButton *)self filterIconView];
  [v7 setAccessibilityIgnoresInvertColors:1];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel_updateForAccessibilityDarkerSystemColors_ name:*MEMORY[0x277D76460] object:0];
}

- (void)setFilterType:(signed __int16)a3
{
  v3 = a3;
  self->_filterType = a3;
  v5 = [(ICDocCamFilterButton *)self imageForFilterType:?];
  v6 = [(ICDocCamFilterButton *)self filterIconView];
  [v6 setImage:v5];

  v8 = [ICDocCamImageFilters localizedImageFilterNameForType:v3];
  v7 = [(ICDocCamFilterButton *)self filterNameLabel];
  [v7 setText:v8];
}

- (void)setIconSize:(double)a3
{
  v4 = [(ICDocCamFilterButton *)self iconSizeConstraint];
  [v4 setConstant:a3];
}

- (double)iconSize
{
  v2 = [(ICDocCamFilterButton *)self iconSizeConstraint];
  [v2 constant];
  v4 = v3;

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(ICDocCamFilterButton *)self isSelected]!= a3)
  {
    if (v3)
    {
      [(ICDocCamFilterButton *)self activeBackgroundViewColor];
    }

    else
    {
      [(ICDocCamFilterButton *)self inactiveBackgroundViewColor];
    }
    v5 = ;
    v6 = [(ICDocCamFilterButton *)self backgroundView];
    [v6 setBackgroundColor:v5];

    if (v3)
    {
      [(ICDocCamFilterButton *)self activeBackgroundViewColor];
    }

    else
    {
      [(ICDocCamFilterButton *)self inactiveTextColor];
    }
    v7 = ;
    v8 = [(ICDocCamFilterButton *)self filterNameLabel];
    [v8 setTextColor:v7];
  }

  v9.receiver = self;
  v9.super_class = ICDocCamFilterButton;
  [(ICDocCamFilterButton *)&v9 setSelected:v3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = ICDocCamFilterButton;
  v5 = [(ICDocCamFilterButton *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5)
  {
    v6 = v5;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(ICDocCamFilterButton *)self isHighlighted]!= a3)
  {
    if (v3)
    {
      v5 = 0.5;
    }

    else
    {
      v5 = 1.0;
    }

    v6 = [(ICDocCamFilterButton *)self filterIconView];
    [v6 setAlpha:v5];
  }

  v7.receiver = self;
  v7.super_class = ICDocCamFilterButton;
  [(ICDocCamFilterButton *)&v7 setHighlighted:v3];
}

- (UIColor)activeBackgroundViewColor
{
  v2 = [(ICDocCamFilterButton *)self tintColor];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v3 = [MEMORY[0x277D75348] dc_darkerAccessibilityColorForColor:v2];

    v2 = v3;
  }

  return v2;
}

- (id)imageForFilterType:(signed __int16)a3
{
  if (a3 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_278F93878[a3];
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

+ (id)filterButtonWithType:(signed __int16)a3
{
  v3 = a3;
  v22 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = NSStringFromClass(a1);
  v7 = [v5 loadNibNamed:v6 owner:a1 options:0];

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
  [v14 setFilterType:{v3, v17}];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v14 setNeedsLayout];
  [v14 layoutIfNeeded];

  return v14;
}

- (id)accessibilityLabel
{
  v2 = [(ICDocCamFilterButton *)self filterNameLabel];
  v3 = [v2 text];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v2 = [(ICDocCamFilterButton *)self filterIconView];
  [v2 accessibilityFrame];
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
  v3 = [(ICDocCamFilterButton *)&v7 accessibilityTraits];
  v4 = [(ICDocCamFilterButton *)self isSelected];
  v5 = *MEMORY[0x277D76598];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (void)updateForAccessibilityDarkerSystemColors:(id)a3
{
  if ([(ICDocCamFilterButton *)self isSelected])
  {
    v5 = [(ICDocCamFilterButton *)self activeBackgroundViewColor];
    v4 = [(ICDocCamFilterButton *)self backgroundView];
    [v4 setBackgroundColor:v5];
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