@interface HUGridServicePlaceholderCell
- (id)_textConfiguration;
- (void)_setupServiceCell;
- (void)_updateSecondaryContentDisplayStyle;
- (void)displayStyleDidChange;
- (void)layoutSubviews;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUGridServicePlaceholderCell

- (void)displayStyleDidChange
{
  v3.receiver = self;
  v3.super_class = HUGridServicePlaceholderCell;
  [(HUGridServiceCell *)&v3 displayStyleDidChange];
  [(HUGridServicePlaceholderCell *)self _updateSecondaryContentDisplayStyle];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = HUGridServicePlaceholderCell;
  [(HUGridServiceCell *)&v5 updateUIWithAnimation:?];
  [(HUGridServiceCell *)self _updateIconAnimated:v3];
  [(HUGridServiceCell *)self _updateText];
  [(HUGridServiceCell *)self _updateAccessoryView];
  [(HUGridServicePlaceholderCell *)self setNeedsLayout];
  [(HUGridServiceCell *)self setHasUpdatedUISinceLastReuse:1];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = HUGridServicePlaceholderCell;
  [(HUGridServiceCell *)&v22 layoutSubviews];
  v3 = [(HUGridCell *)self layoutOptions];
  [v3 cellInnerMargin];
  v5 = v4;

  v6 = [(HUGridServicePlaceholderCell *)self effectiveUserInterfaceLayoutDirection];
  v7 = [(HUGridServicePlaceholderCell *)self iconView];
  v8 = [(HUGridCell *)self layoutOptions];
  [v8 iconSize];
  v10 = v9;
  v11 = [(HUGridCell *)self layoutOptions];
  [v11 iconSize];
  [v7 sizeThatFits:{v10, v12}];
  v14 = v13;
  v16 = v15;

  [(HUGridServicePlaceholderCell *)self contentView];
  if (v6 == 1)
    v17 = {;
    [v17 bounds];
    v18 = CGRectGetMaxX(v23) - v5 - v14;
  }

  else
    v17 = {;
    [v17 bounds];
    v18 = v5 + CGRectGetMinX(v24);
  }

  v19 = [(HUGridServicePlaceholderCell *)self contentView];
  [v19 bounds];
  v20 = v5 + CGRectGetMinY(v25);
  v21 = [(HUGridServicePlaceholderCell *)self iconView];
  [v21 setFrame:{v18, v20, v14, v16}];
}

- (void)_setupServiceCell
{
  v5.receiver = self;
  v5.super_class = HUGridServicePlaceholderCell;
  [(HUGridServiceCell *)&v5 _setupServiceCell];
  v3 = [MEMORY[0x277D75210] effectWithStyle:6];
  v4 = [(HUGridCell *)self gridBackgroundView];
  [v4 setOverrideBackgroundEffect:v3];
}

- (id)_textConfiguration
{
  v2 = objc_alloc_init(HUGridServiceCellTextConfiguration);
  v3 = objc_alloc(MEMORY[0x277D14AE0]);
  v4 = +[HUAddAccessoryUtilities addAccessoryString];
  v5 = [v3 initWithRawServiceName:v4 rawRoomName:0];
  [(HUGridServiceCellTextConfiguration *)v2 setNameComponents:v5];

  return v2;
}

- (void)_updateSecondaryContentDisplayStyle
{
  v3 = [(HUGridServicePlaceholderCell *)self iconDisplayStyle]== 2;
  v4 = [(HUGridServicePlaceholderCell *)self serviceTextView];
  [v4 setTextColorFollowsTintColor:v3];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v6 = v5;
  v7 = [(HUGridServicePlaceholderCell *)self serviceTextView];
  [v7 setDescriptionTextColorDimmingFactor:v6];

  [(HUGridCell *)self secondaryContentDimmingFactor];
  v9 = v8;
  v10 = [(HUGridServiceCell *)self exclamationView];
  v11 = [v10 innerContentView];
  [v11 setAlpha:v9];

  v13 = [(HUGridCell *)self secondaryContentEffect];
  v12 = [(HUGridServiceCell *)self exclamationView];
  [v12 setEffect:v13];
}

@end