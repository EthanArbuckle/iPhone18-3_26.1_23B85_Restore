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
- (id)subtitleForPlayer:(id)player isCoreRecent:(BOOL)recent matchedContactName:(id)name onlyShowContactName:(BOOL)contactName;
- (void)awakeFromNib;
- (void)configureWithPlayer:(id)player isCoreRecent:(BOOL)recent matchedContactName:(id)name onlyShowContactName:(BOOL)contactName;
- (void)setAccessibilityPrefix:(id)prefix;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLineVisible:(BOOL)visible;
- (void)setSelectable:(BOOL)selectable;
- (void)setSelected:(BOOL)selected;
- (void)updateCellBackground;
- (void)updateLayerMask:(id)mask;
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
  playerView = [(GKDashboardPickerPlayerCell *)self playerView];
  [playerView setUseDarkerPlaceholder:1];

  playerView2 = [(GKDashboardPickerPlayerCell *)self playerView];
  [playerView2 setAvatarSize:0x10000];

  cellBackgroundColor = [(GKDashboardPickerPlayerCell *)self cellBackgroundColor];
  contentView = [(GKDashboardPickerPlayerCell *)self contentView];
  [contentView setBackgroundColor:cellBackgroundColor];

  playerView3 = [(GKDashboardPickerPlayerCell *)self playerView];
  [playerView3 setUserInteractionEnabled:0];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v9 = [whiteColor colorWithAlphaComponent:0.1];
  bottomLine = [(GKDashboardPickerPlayerCell *)self bottomLine];
  [bottomLine setBackgroundColor:v9];

  v11 = *MEMORY[0x277CDA5E8];
  subtitle = [(GKDashboardPickerPlayerCell *)self subtitle];
  layer = [subtitle layer];
  [layer setCompositingFilter:v11];

  v14 = objc_opt_new();
  v15 = MEMORY[0x277D75208];
  ringView = [(GKDashboardPickerPlayerCell *)self ringView];
  [ringView frame];
  v18 = v17;
  ringView2 = [(GKDashboardPickerPlayerCell *)self ringView];
  [ringView2 frame];
  v20 = [v15 bezierPathWithOvalInRect:{0.0, 0.0, v18}];
  [v14 setPath:{objc_msgSend(v20, "CGPath")}];

  ringView3 = [(GKDashboardPickerPlayerCell *)self ringView];
  layer2 = [ringView3 layer];
  [layer2 addSublayer:v14];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  v24 = [whiteColor2 colorWithAlphaComponent:0.6];
  [v14 setStrokeColor:{objc_msgSend(v24, "CGColor")}];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v14 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  [v14 setLineWidth:2.0];
  ringView4 = [(GKDashboardPickerPlayerCell *)self ringView];
  layer3 = [ringView4 layer];
  [layer3 setCompositingFilter:v11];

  ringView5 = [(GKDashboardPickerPlayerCell *)self ringView];
  [ringView5 setHidden:1];

  v29 = GKGameCenterUIFrameworkBundle();
  v30 = GKGetLocalizedStringFromTableInBundle();
  ringView6 = [(GKDashboardPickerPlayerCell *)self ringView];
  [ringView6 setAccessibilityLabel:v30];
}

- (void)configureWithPlayer:(id)player isCoreRecent:(BOOL)recent matchedContactName:(id)name onlyShowContactName:(BOOL)contactName
{
  contactNameCopy = contactName;
  recentCopy = recent;
  nameCopy = name;
  playerCopy = player;
  monogramColorView = [(GKDashboardPickerPlayerCell *)self monogramColorView];
  [monogramColorView setHidden:0];

  playerView = [(GKDashboardPickerPlayerCell *)self playerView];
  [playerView setPlayer:playerCopy];

  v22 = [playerCopy displayNameWithOptions:0];
  title = [(GKDashboardPickerPlayerCell *)self title];
  [title setText:v22];

  v15 = [(GKDashboardPickerPlayerCell *)self subtitleForPlayer:playerCopy isCoreRecent:recentCopy matchedContactName:nameCopy onlyShowContactName:contactNameCopy];

  [(GKDashboardPickerPlayerCell *)self setOriginalSubtitle:v15];
  selectable = [(GKDashboardPickerPlayerCell *)self selectable];
  v17 = selectable;
  if (selectable)
  {
    [(GKDashboardPickerPlayerCell *)self originalSubtitle];
  }

  else
  {
    recentCopy = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
  }
  v18 = ;
  subtitle = [(GKDashboardPickerPlayerCell *)self subtitle];
  [subtitle setText:v18];

  if (!v17)
  {

    v18 = recentCopy;
  }

  v20 = [v15 length] == 0;
  subtitle2 = [(GKDashboardPickerPlayerCell *)self subtitle];
  [subtitle2 setHidden:v20];
}

- (void)setAccessibilityPrefix:(id)prefix
{
  prefixCopy = prefix;
  title = [(GKDashboardPickerPlayerCell *)self title];
  text = [title text];

  if (text)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.title-%@", prefixCopy, text];
    title2 = [(GKDashboardPickerPlayerCell *)self title];
    [title2 setAccessibilityIdentifier:v6];

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.subtitle-%@", prefixCopy, text];
    subtitle = [(GKDashboardPickerPlayerCell *)self subtitle];
    [subtitle setAccessibilityIdentifier:v8];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.ring-%@", prefixCopy, text];
    ringView = [(GKDashboardPickerPlayerCell *)self ringView];
    [ringView setAccessibilityIdentifier:v10];
  }
}

- (id)subtitleForPlayer:(id)player isCoreRecent:(BOOL)recent matchedContactName:(id)name onlyShowContactName:(BOOL)contactName
{
  contactNameCopy = contactName;
  recentCopy = recent;
  playerCopy = player;
  nameCopy = name;
  if (!contactNameCopy)
  {
    if (recentCopy)
    {
LABEL_6:
      v13 = GKGameCenterUIFrameworkBundle();
      contact = GKGetLocalizedStringFromTableInBundle();
LABEL_13:

      goto LABEL_14;
    }

    lastPlayedGame = [playerCopy lastPlayedGame];
    if (lastPlayedGame && (v15 = lastPlayedGame, [playerCopy lastPlayedGame], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "name"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v16, v15, v18))
    {
      v19 = MEMORY[0x277CCACA8];
      v13 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();
      lastPlayedGame2 = [playerCopy lastPlayedGame];
      name = [lastPlayedGame2 name];
    }

    else
    {
      lastPlayedDate = [playerCopy lastPlayedDate];

      if (!lastPlayedDate)
      {
        contact = [playerCopy contact];

        if (!contact)
        {
          goto LABEL_14;
        }

        goto LABEL_6;
      }

      v19 = MEMORY[0x277CCACA8];
      v13 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();
      lastPlayedGame2 = [playerCopy lastPlayedDate];
      name = [lastPlayedGame2 _gkFormattedWhenStringWithOptions:0];
    }

    v24 = name;
    contact = [v19 stringWithFormat:v20, name];

    goto LABEL_13;
  }

  contact2 = [playerCopy contact];

  contact = 0;
  if (nameCopy && !contact2)
  {
    contact = nameCopy;
  }

LABEL_14:

  return contact;
}

- (void)updateLayerMask:(id)mask
{
  v3 = MEMORY[0x277D75208];
  maskCopy = mask;
  [maskCopy bounds];
  v8 = [v3 bezierPathWithRoundedRect:12 byRoundingCorners:? cornerRadii:?];
  layer = [MEMORY[0x277CD9F90] layer];
  [maskCopy bounds];
  [layer setFrame:?];
  v6 = v8;
  [layer setPath:{objc_msgSend(v8, "CGPath")}];
  layer2 = [maskCopy layer];

  [layer2 setMask:layer];
}

- (void)setLineVisible:(BOOL)visible
{
  visibleCopy = visible;
  bottomLine = [(GKDashboardPickerPlayerCell *)self bottomLine];
  [bottomLine setHidden:!visibleCopy];
}

- (BOOL)lineVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomLine);
  isHidden = [WeakRetained isHidden];

  return isHidden ^ 1;
}

- (void)setSelectable:(BOOL)selectable
{
  self->_selectable = selectable;
  v5 = !selectable;
  playerView = [(GKDashboardPickerPlayerCell *)self playerView];
  [playerView setDimmed:v5];

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
  subtitle = [(GKDashboardPickerPlayerCell *)self subtitle];
  [subtitle setText:v8];

  if (!selectable)
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
  contentView = [(GKDashboardPickerPlayerCell *)self contentView];
  [contentView setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = GKDashboardPickerPlayerCell;
  [(GKDashboardPickerPlayerCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__GKDashboardPickerPlayerCell_setHighlighted___block_invoke;
  v5[3] = &unk_27966A890;
  v5[4] = self;
  highlightedCopy = highlighted;
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

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = GKDashboardPickerPlayerCell;
  [(GKDashboardPickerPlayerCell *)&v7 setSelected:?];
  layer = [(GKDashboardPickerPlayerCell *)self layer];
  [layer setBackgroundColor:0];

  ringView = [(GKDashboardPickerPlayerCell *)self ringView];
  [ringView setHidden:!selectedCopy];
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