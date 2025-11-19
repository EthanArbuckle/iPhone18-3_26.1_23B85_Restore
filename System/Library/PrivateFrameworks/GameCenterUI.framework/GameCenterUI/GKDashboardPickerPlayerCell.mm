@interface GKDashboardPickerPlayerCell
+ (CGSize)defaultSize;
- (BOOL)lineVisible;
- (UILabel)subtitle;
- (UILabel)title;
- (UIView)backView;
- (UIView)bottomLine;
- (UIView)container;
- (UIView)monogramColorView;
- (UIView)ringView;
- (id)subtitleForPlayer:(id)a3 isCoreRecent:(BOOL)a4 matchedContactName:(id)a5 onlyShowContactName:(BOOL)a6;
- (void)awakeFromNib;
- (void)configureWithPlayer:(id)a3 isCoreRecent:(BOOL)a4 matchedContactName:(id)a5 onlyShowContactName:(BOOL)a6;
- (void)setAccessibilityPrefix:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLineVisible:(BOOL)a3;
- (void)setSelectable:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateCellBackground;
- (void)updateLayerMask:(id)a3;
@end

@implementation GKDashboardPickerPlayerCell

+ (CGSize)defaultSize
{
  v2 = 60.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)awakeFromNib
{
  v32.receiver = self;
  v32.super_class = GKDashboardPickerPlayerCell;
  [(GKFocusHighlightingCollectionViewCell *)&v32 awakeFromNib];
  v3 = [(GKDashboardPickerPlayerCell *)self playerView];
  [v3 setUseDarkerPlaceholder:1];

  v4 = [(GKDashboardPickerPlayerCell *)self playerView];
  [v4 setAvatarSize:0x10000];

  v5 = [(GKDashboardPickerPlayerCell *)self cellBackgroundColor];
  v6 = [(GKDashboardPickerPlayerCell *)self contentView];
  [v6 setBackgroundColor:v5];

  v7 = [(GKDashboardPickerPlayerCell *)self playerView];
  [v7 setUserInteractionEnabled:0];

  v8 = [MEMORY[0x277D75348] whiteColor];
  v9 = [v8 colorWithAlphaComponent:0.1];
  v10 = [(GKDashboardPickerPlayerCell *)self bottomLine];
  [v10 setBackgroundColor:v9];

  v11 = *MEMORY[0x277CDA5E8];
  v12 = [(GKDashboardPickerPlayerCell *)self subtitle];
  v13 = [v12 layer];
  [v13 setCompositingFilter:v11];

  v14 = objc_opt_new();
  v15 = MEMORY[0x277D75208];
  v16 = [(GKDashboardPickerPlayerCell *)self ringView];
  [v16 frame];
  v18 = v17;
  v19 = [(GKDashboardPickerPlayerCell *)self ringView];
  [v19 frame];
  v20 = [v15 bezierPathWithOvalInRect:{0.0, 0.0, v18}];
  [v14 setPath:{objc_msgSend(v20, "CGPath")}];

  v21 = [(GKDashboardPickerPlayerCell *)self ringView];
  v22 = [v21 layer];
  [v22 addSublayer:v14];

  v23 = [MEMORY[0x277D75348] whiteColor];
  v24 = [v23 colorWithAlphaComponent:0.6];
  [v14 setStrokeColor:{objc_msgSend(v24, "CGColor")}];

  v25 = [MEMORY[0x277D75348] clearColor];
  [v14 setFillColor:{objc_msgSend(v25, "CGColor")}];

  [v14 setLineWidth:2.0];
  v26 = [(GKDashboardPickerPlayerCell *)self ringView];
  v27 = [v26 layer];
  [v27 setCompositingFilter:v11];

  v28 = [(GKDashboardPickerPlayerCell *)self ringView];
  [v28 setHidden:1];

  v29 = GKGameCenterUIFrameworkBundle();
  v30 = GKGetLocalizedStringFromTableInBundle();
  v31 = [(GKDashboardPickerPlayerCell *)self ringView];
  [v31 setAccessibilityLabel:v30];
}

- (void)configureWithPlayer:(id)a3 isCoreRecent:(BOOL)a4 matchedContactName:(id)a5 onlyShowContactName:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [(GKDashboardPickerPlayerCell *)self monogramColorView];
  [v12 setHidden:0];

  v13 = [(GKDashboardPickerPlayerCell *)self playerView];
  [v13 setPlayer:v11];

  v22 = [v11 displayNameWithOptions:0];
  v14 = [(GKDashboardPickerPlayerCell *)self title];
  [v14 setText:v22];

  v15 = [(GKDashboardPickerPlayerCell *)self subtitleForPlayer:v11 isCoreRecent:v7 matchedContactName:v10 onlyShowContactName:v6];

  [(GKDashboardPickerPlayerCell *)self setOriginalSubtitle:v15];
  v16 = [(GKDashboardPickerPlayerCell *)self selectable];
  v17 = v16;
  if (v16)
  {
    [(GKDashboardPickerPlayerCell *)self originalSubtitle];
  }

  else
  {
    v7 = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
  }
  v18 = ;
  v19 = [(GKDashboardPickerPlayerCell *)self subtitle];
  [v19 setText:v18];

  if (!v17)
  {

    v18 = v7;
  }

  v20 = [v15 length] == 0;
  v21 = [(GKDashboardPickerPlayerCell *)self subtitle];
  [v21 setHidden:v20];
}

- (void)setAccessibilityPrefix:(id)a3
{
  v12 = a3;
  v4 = [(GKDashboardPickerPlayerCell *)self title];
  v5 = [v4 text];

  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.title-%@", v12, v5];
    v7 = [(GKDashboardPickerPlayerCell *)self title];
    [v7 setAccessibilityIdentifier:v6];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.subtitle-%@", v12, v5];
    v9 = [(GKDashboardPickerPlayerCell *)self subtitle];
    [v9 setAccessibilityIdentifier:v8];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.ring-%@", v12, v5];
    v11 = [(GKDashboardPickerPlayerCell *)self ringView];
    [v11 setAccessibilityIdentifier:v10];
  }
}

- (id)subtitleForPlayer:(id)a3 isCoreRecent:(BOOL)a4 matchedContactName:(id)a5 onlyShowContactName:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v10 = a5;
  if (!v6)
  {
    if (v8)
    {
LABEL_6:
      v13 = GKGameCenterUIFrameworkBundle();
      v12 = GKGetLocalizedStringFromTableInBundle();
LABEL_13:

      goto LABEL_14;
    }

    v14 = [v9 lastPlayedGame];
    if (v14 && (v15 = v14, [v9 lastPlayedGame], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "name"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v16, v15, v18))
    {
      v19 = MEMORY[0x277CCACA8];
      v13 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();
      v21 = [v9 lastPlayedGame];
      v22 = [v21 name];
    }

    else
    {
      v23 = [v9 lastPlayedDate];

      if (!v23)
      {
        v12 = [v9 contact];

        if (!v12)
        {
          goto LABEL_14;
        }

        goto LABEL_6;
      }

      v19 = MEMORY[0x277CCACA8];
      v13 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();
      v21 = [v9 lastPlayedDate];
      v22 = [v21 _gkFormattedWhenStringWithOptions:0];
    }

    v24 = v22;
    v12 = [v19 stringWithFormat:v20, v22];

    goto LABEL_13;
  }

  v11 = [v9 contact];

  v12 = 0;
  if (v10 && !v11)
  {
    v12 = v10;
  }

LABEL_14:

  return v12;
}

- (void)updateLayerMask:(id)a3
{
  v3 = MEMORY[0x277D75208];
  v4 = a3;
  [v4 bounds];
  v8 = [v3 bezierPathWithRoundedRect:12 byRoundingCorners:? cornerRadii:?];
  v5 = [MEMORY[0x277CD9F90] layer];
  [v4 bounds];
  [v5 setFrame:?];
  v6 = v8;
  [v5 setPath:{objc_msgSend(v8, "CGPath")}];
  v7 = [v4 layer];

  [v7 setMask:v5];
}

- (void)setLineVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(GKDashboardPickerPlayerCell *)self bottomLine];
  [v4 setHidden:!v3];
}

- (BOOL)lineVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomLine);
  v3 = [WeakRetained isHidden];

  return v3 ^ 1;
}

- (void)setSelectable:(BOOL)a3
{
  self->_selectable = a3;
  v5 = !a3;
  v6 = [(GKDashboardPickerPlayerCell *)self playerView];
  [v6 setDimmed:v5];

  if (v5)
  {
    v5 = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
  }

  else
  {
    [(GKDashboardPickerPlayerCell *)self originalSubtitle];
  }
  v8 = ;
  v7 = [(GKDashboardPickerPlayerCell *)self subtitle];
  [v7 setText:v8];

  if (!a3)
  {

    v8 = v5;
  }
}

- (void)updateCellBackground
{
  if (self->_usesClearBackground)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [(GKDashboardPickerPlayerCell *)self cellBackgroundColor];
  }
  v4 = ;
  v3 = [(GKDashboardPickerPlayerCell *)self contentView];
  [v3 setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GKDashboardPickerPlayerCell;
  [(GKDashboardPickerPlayerCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__GKDashboardPickerPlayerCell_setHighlighted___block_invoke;
  v5[3] = &unk_27966A890;
  v5[4] = self;
  v6 = a3;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0 completion:0.05];
}

void __46__GKDashboardPickerPlayerCell_setHighlighted___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.5;
  }

  else
  {
    v1 = 1.0;
  }

  v3 = [*(a1 + 32) layer];
  *&v2 = v1;
  [v3 setOpacity:v2];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = GKDashboardPickerPlayerCell;
  [(GKDashboardPickerPlayerCell *)&v7 setSelected:?];
  v5 = [(GKDashboardPickerPlayerCell *)self layer];
  [v5 setBackgroundColor:0];

  v6 = [(GKDashboardPickerPlayerCell *)self ringView];
  [v6 setHidden:!v3];
}

- (UIView)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (UILabel)subtitle
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitle);

  return WeakRetained;
}

- (UILabel)title
{
  WeakRetained = objc_loadWeakRetained(&self->_title);

  return WeakRetained;
}

- (UIView)bottomLine
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomLine);

  return WeakRetained;
}

- (UIView)monogramColorView
{
  WeakRetained = objc_loadWeakRetained(&self->_monogramColorView);

  return WeakRetained;
}

- (UIView)backView
{
  WeakRetained = objc_loadWeakRetained(&self->_backView);

  return WeakRetained;
}

- (UIView)ringView
{
  WeakRetained = objc_loadWeakRetained(&self->_ringView);

  return WeakRetained;
}

@end