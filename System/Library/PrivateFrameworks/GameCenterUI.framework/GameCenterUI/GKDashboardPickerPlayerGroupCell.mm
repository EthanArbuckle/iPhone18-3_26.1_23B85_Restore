@interface GKDashboardPickerPlayerGroupCell
+ (CGSize)defaultSize;
- (BOOL)lineVisible;
- (GKDashboardPickerPlayerGroupCellDelegate)groupCellDelegate;
- (UIImageView)checkmark;
- (UIImageView)messageIcon;
- (UILabel)subtitle;
- (UILabel)title;
- (UIView)bottomLine;
- (UIView)container;
- (UIView)iconContainer;
- (UIView)ringView;
- (void)awakeFromNib;
- (void)configureWithPlayers:(id)players title:(id)title subtitle:(id)subtitle messagesGroupIdentifier:(id)identifier source:(int64_t)source playerSelectionProxy:(id)proxy;
- (void)dealloc;
- (void)handleLongPress:(id)press;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLineVisible:(BOOL)visible;
- (void)setSelected:(BOOL)selected;
- (void)updateCellBackground;
- (void)updateLayerMask:(id)mask;
- (void)updateTitleForSearchText;
@end

@implementation GKDashboardPickerPlayerGroupCell

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
  v38.receiver = self;
  v38.super_class = GKDashboardPickerPlayerGroupCell;
  [(GKDashboardPickerPlayerGroupCell *)&v38 awakeFromNib];
  cellBackgroundColor = [(GKDashboardPickerPlayerGroupCell *)self cellBackgroundColor];
  contentView = [(GKDashboardPickerPlayerGroupCell *)self contentView];
  [contentView setBackgroundColor:cellBackgroundColor];

  v5 = [MEMORY[0x277D755D0] configurationWithWeight:5];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward.circle" withConfiguration:v5];
  checkmark = [(GKDashboardPickerPlayerGroupCell *)self checkmark];
  [checkmark setImage:v6];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v9 = [whiteColor colorWithAlphaComponent:0.1];
  bottomLine = [(GKDashboardPickerPlayerGroupCell *)self bottomLine];
  [bottomLine setBackgroundColor:v9];

  v11 = *MEMORY[0x277CDA5E8];
  checkmark2 = [(GKDashboardPickerPlayerGroupCell *)self checkmark];
  layer = [checkmark2 layer];
  [layer setCompositingFilter:v11];

  subtitle = [(GKDashboardPickerPlayerGroupCell *)self subtitle];
  layer2 = [subtitle layer];
  [layer2 setCompositingFilter:v11];

  v16 = +[_TtC12GameCenterUI17GKPlayerGroupView create];
  if (v16)
  {
    iconContainer = [(GKDashboardPickerPlayerGroupCell *)self iconContainer];
    [iconContainer addSubview:v16];

    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = MEMORY[0x277CCAAD0];
    iconContainer2 = [(GKDashboardPickerPlayerGroupCell *)self iconContainer];
    [v18 _gkInstallEdgeConstraintsForView:v16 containedWithinParentView:iconContainer2];

    [(GKDashboardPickerPlayerGroupCell *)self setPlayerGroupView:v16];
  }

  v20 = objc_opt_new();
  v21 = MEMORY[0x277D75208];
  ringView = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [ringView frame];
  v24 = v23;
  ringView2 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [ringView2 frame];
  v26 = [v21 bezierPathWithOvalInRect:{0.0, 0.0, v24}];
  [v20 setPath:{objc_msgSend(v26, "CGPath")}];

  ringView3 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  layer3 = [ringView3 layer];
  [layer3 addSublayer:v20];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  v30 = [whiteColor2 colorWithAlphaComponent:0.6];
  [v20 setStrokeColor:{objc_msgSend(v30, "CGColor")}];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v20 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  [v20 setLineWidth:2.0];
  ringView4 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  layer4 = [ringView4 layer];
  [layer4 setCompositingFilter:v11];

  ringView5 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [ringView5 setHidden:1];

  v35 = GKGameCenterUIFrameworkBundle();
  v36 = GKGetLocalizedStringFromTableInBundle();
  ringView6 = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [ringView6 setAccessibilityLabel:v36];
}

- (void)dealloc
{
  longPressRecognizer = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];

  if (longPressRecognizer)
  {
    longPressRecognizer2 = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];
    [(GKDashboardPickerPlayerGroupCell *)self removeGestureRecognizer:longPressRecognizer2];
  }

  v5.receiver = self;
  v5.super_class = GKDashboardPickerPlayerGroupCell;
  [(GKDashboardPickerPlayerGroupCell *)&v5 dealloc];
}

- (void)configureWithPlayers:(id)players title:(id)title subtitle:(id)subtitle messagesGroupIdentifier:(id)identifier source:(int64_t)source playerSelectionProxy:(id)proxy
{
  playersCopy = players;
  subtitleCopy = subtitle;
  proxyCopy = proxy;
  identifierCopy = identifier;
  titleCopy = title;
  title = [(GKDashboardPickerPlayerGroupCell *)self title];
  [title setText:titleCopy];

  subtitle = [(GKDashboardPickerPlayerGroupCell *)self subtitle];
  [subtitle setText:subtitleCopy];

  if ([subtitleCopy length] || objc_msgSend(playersCopy, "count") != 1)
  {
    goto LABEL_16;
  }

  v21 = [playersCopy objectAtIndexedSubscript:0];
  lastPlayedGame = [v21 lastPlayedGame];
  if (lastPlayedGame)
  {
    v23 = lastPlayedGame;
    lastPlayedGame2 = [v21 lastPlayedGame];
    name = [lastPlayedGame2 name];
    v25 = [name length];

    if (v25)
    {
      v26 = MEMORY[0x277CCACA8];
      v56 = GKGameCenterUIFrameworkBundle();
      v27 = GKGetLocalizedStringFromTableInBundle();
      lastPlayedGame3 = [v21 lastPlayedGame];
      name2 = [lastPlayedGame3 name];
      lastPlayedGame2 = [v26 stringWithFormat:v27, name2];

      v30 = v56;
LABEL_8:
      subtitleCopy = v27;
LABEL_9:

      subtitleCopy = lastPlayedGame2;
      goto LABEL_10;
    }
  }

  lastPlayedDate = [v21 lastPlayedDate];

  if (lastPlayedDate)
  {
    v32 = MEMORY[0x277CCACA8];
    v33 = GKGameCenterUIFrameworkBundle();
    v27 = GKGetLocalizedStringFromTableInBundle();
    [v21 lastPlayedDate];
    v34 = v57 = v21;
    v35 = [v34 _gkFormattedWhenStringWithOptions:0];
    lastPlayedGame2 = [v32 stringWithFormat:v27, v35];

    v30 = v33;
    v21 = v57;
    goto LABEL_8;
  }

  if (source == 1 || ([v21 contact], v55 = objc_claimAutoreleasedReturnValue(), v55, v55))
  {
    v30 = GKGameCenterUIFrameworkBundle();
    lastPlayedGame2 = GKGetLocalizedStringFromTableInBundle();
    goto LABEL_9;
  }

LABEL_10:
  [(GKDashboardPickerPlayerGroupCell *)self setOriginalSubtitle:subtitleCopy];
  v36 = [proxyCopy playerIsSelectable:v21];
  v37 = v36;
  if (v36)
  {
    [(GKDashboardPickerPlayerGroupCell *)self originalSubtitle];
  }

  else
  {
    lastPlayedGame2 = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
  }
  v38 = ;
  subtitle2 = [(GKDashboardPickerPlayerGroupCell *)self subtitle];
  [subtitle2 setText:v38];

  if ((v37 & 1) == 0)
  {

    v38 = lastPlayedGame2;
  }

LABEL_16:
  messageIcon = [(GKDashboardPickerPlayerGroupCell *)self messageIcon];
  [messageIcon setHidden:source != 1];

  -[GKDashboardPickerPlayerGroupCell setCanExpand:](self, "setCanExpand:", [playersCopy count] > 1);
  canExpand = [(GKDashboardPickerPlayerGroupCell *)self canExpand];
  checkmark = [(GKDashboardPickerPlayerGroupCell *)self checkmark];
  [checkmark setHidden:!canExpand];

  playerGroupView = [(GKDashboardPickerPlayerGroupCell *)self playerGroupView];
  [playerGroupView configureWithPlayers:playersCopy messagesGroupIdentifier:identifierCopy playerSelectionProxy:proxyCopy];

  if ([playersCopy count] == 1)
  {
    v44 = [playersCopy objectAtIndexedSubscript:0];
    v45 = [proxyCopy playerIsSelectable:v44];

    if ((v45 & 1) == 0)
    {
      v46 = GKGameCenterUIFrameworkBundle();
      v47 = GKGetLocalizedStringFromTableInBundle();
      subtitle3 = [(GKDashboardPickerPlayerGroupCell *)self subtitle];
      [subtitle3 setText:v47];
    }
  }

  v49 = [playersCopy count];
  longPressRecognizer = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];
  v51 = longPressRecognizer;
  if (v49 < 2)
  {

    if (v51)
    {
      longPressRecognizer2 = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];
      [(GKDashboardPickerPlayerGroupCell *)self removeGestureRecognizer:longPressRecognizer2];
    }

    [(GKDashboardPickerPlayerGroupCell *)self setLongPressRecognizer:0];
  }

  else
  {

    if (!v51)
    {
      v52 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
      [(GKDashboardPickerPlayerGroupCell *)self setLongPressRecognizer:v52];

      longPressRecognizer3 = [(GKDashboardPickerPlayerGroupCell *)self longPressRecognizer];
      [(GKDashboardPickerPlayerGroupCell *)self addGestureRecognizer:longPressRecognizer3];
    }
  }

  [(GKDashboardPickerPlayerGroupCell *)self updateTitleForSearchText];
}

- (void)updateTitleForSearchText
{
  title = [(GKDashboardPickerPlayerGroupCell *)self title];
  text = [title text];

  searchText = [(GKDashboardPickerPlayerGroupCell *)self searchText];
  v5 = [text localizedStandardRangeOfString:searchText];
  v7 = v6;

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:text];
    v9 = *MEMORY[0x277D740C0];
    if (v5)
    {
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [v8 addAttribute:v9 value:secondaryLabelColor range:{0, v5}];
    }

    if (v5 + v7 < [text length])
    {
      secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
      [v8 addAttribute:v9 value:secondaryLabelColor2 range:{v5 + v7, objc_msgSend(text, "length") - (v5 + v7)}];
    }

    labelColor = [MEMORY[0x277D75348] labelColor];
    [v8 addAttribute:v9 value:labelColor range:{v5, v7}];

    title2 = [(GKDashboardPickerPlayerGroupCell *)self title];
    [title2 setAttributedText:v8];
  }
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
  bottomLine = [(GKDashboardPickerPlayerGroupCell *)self bottomLine];
  [bottomLine setHidden:!visibleCopy];
}

- (BOOL)lineVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomLine);
  isHidden = [WeakRetained isHidden];

  return isHidden ^ 1;
}

- (void)updateCellBackground
{
  if (self->_usesClearBackground)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [(GKDashboardPickerPlayerGroupCell *)self cellBackgroundColor];
  }
  v4 = ;
  contentView = [(GKDashboardPickerPlayerGroupCell *)self contentView];
  [contentView setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = GKDashboardPickerPlayerGroupCell;
  [(GKDashboardPickerPlayerGroupCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__GKDashboardPickerPlayerGroupCell_setHighlighted___block_invoke;
  v5[3] = &unk_27966A890;
  v5[4] = self;
  highlightedCopy = highlighted;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0 completion:0.05];
}

void __51__GKDashboardPickerPlayerGroupCell_setHighlighted___block_invoke(uint64_t a1)
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
  v7.super_class = GKDashboardPickerPlayerGroupCell;
  [(GKDashboardPickerPlayerGroupCell *)&v7 setSelected:?];
  layer = [(GKDashboardPickerPlayerGroupCell *)self layer];
  [layer setBackgroundColor:0];

  ringView = [(GKDashboardPickerPlayerGroupCell *)self ringView];
  [ringView setHidden:!selectedCopy];
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  if ([pressCopy state] == 3)
  {
    groupCellDelegate = [(GKDashboardPickerPlayerGroupCell *)self groupCellDelegate];

    if (groupCellDelegate)
    {
      groupCellDelegate2 = [(GKDashboardPickerPlayerGroupCell *)self groupCellDelegate];
      [groupCellDelegate2 handleLongPressGesture:pressCopy];
    }
  }
}

- (GKDashboardPickerPlayerGroupCellDelegate)groupCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_groupCellDelegate);

  return WeakRetained;
}

- (UIView)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (UIView)iconContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_iconContainer);

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

- (UIImageView)checkmark
{
  WeakRetained = objc_loadWeakRetained(&self->_checkmark);

  return WeakRetained;
}

- (UIImageView)messageIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_messageIcon);

  return WeakRetained;
}

- (UIView)ringView
{
  WeakRetained = objc_loadWeakRetained(&self->_ringView);

  return WeakRetained;
}

@end