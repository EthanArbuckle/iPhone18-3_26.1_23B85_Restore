@interface GKDashboardPlayerCell
+ (CGSize)defaultSize;
- (void)awakeFromNib;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setOnDarkBackground:(BOOL)background;
- (void)setPlayer:(id)player;
- (void)setSelected:(BOOL)selected;
- (void)setStatusWithLastPlayedDate:(id)date;
- (void)updateLabelColorForDashboard;
@end

@implementation GKDashboardPlayerCell

+ (CGSize)defaultSize
{
  v2 = 320.0;
  v3 = 58.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)awakeFromNib
{
  v5.receiver = self;
  v5.super_class = GKDashboardPlayerCell;
  [(GKFocusHighlightingCollectionViewCell *)&v5 awakeFromNib];
  textColor = [(UILabel *)self->_nameLabel textColor];
  [(GKDashboardPlayerCell *)self setNameColor:textColor];

  textColor2 = [(UILabel *)self->_statusLabel textColor];
  [(GKDashboardPlayerCell *)self setStatusColor:textColor2];

  [(NSLayoutConstraint *)self->_playerViewBottomToNameLabelTopConstraint constant];
  [(GKDashboardPlayerCell *)self setPlayerViewBottomToNameLabelTopConstant:?];
  [(GKDashboardPlayerCell *)self setClipsToBounds:0];
  [(GKDashboardPlayerCell *)self setDefaultContentBackgroundColor:0];
  [(UILabel *)self->_statusLabel setText:0];
}

- (void)setOnDarkBackground:(BOOL)background
{
  if (self->_onDarkBackground != background)
  {
    self->_onDarkBackground = background;
    if (background)
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)self->_nameLabel setTextColor:whiteColor];

      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)self->_statusLabel setTextColor:whiteColor2];
    }

    else
    {
      [(UILabel *)self->_nameLabel setTextColor:self->_nameColor];
      statusColor = self->_statusColor;
      statusLabel = self->_statusLabel;

      [(UILabel *)statusLabel setTextColor:statusColor];
    }
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  if (self->_player != playerCopy)
  {
    v7 = playerCopy;
    objc_storeStrong(&self->_player, player);
    [(GKDashboardPlayerShadowView *)self->_playerView setPlayer:v7];
    v6 = [(GKPlayer *)v7 displayNameWithOptions:0];
    [(GKDashboardPlayerCell *)self setNameText:v6];

    playerCopy = v7;
  }
}

- (void)setStatusWithLastPlayedDate:(id)date
{
  v4 = [date _gkFormattedWhenStringWithOptions:0];
  [(GKDashboardPlayerCell *)self setStatusText:v4];
}

- (void)updateLabelColorForDashboard
{
  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(GKDashboardPlayerCell *)self setNameColor:tertiaryLabelColor];

  if (self->_onDarkBackground || ([(GKDashboardPlayerCell *)self isFocused]& 1) != 0)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)self->_nameLabel setTextColor:whiteColor];
  }

  else
  {
    nameColor = self->_nameColor;
    nameLabel = self->_nameLabel;

    [(UILabel *)nameLabel setTextColor:nameColor];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = GKDashboardPlayerCell;
  [(GKDashboardPlayerCell *)&v7 setHighlighted:?];
  if (highlightedCopy)
  {
    [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    [(GKDashboardPlayerCell *)self defaultContentBackgroundColor];
  }
  v5 = ;
  contentView = [(GKDashboardPlayerCell *)self contentView];
  [contentView setBackgroundColor:v5];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = GKDashboardPlayerCell;
  [(GKDashboardPlayerCell *)&v8 setSelected:?];
  layer = [(GKDashboardPlayerCell *)self layer];
  [layer setBackgroundColor:0];

  if (selectedCopy)
  {
    [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    [(GKDashboardPlayerCell *)self defaultContentBackgroundColor];
  }
  v6 = ;
  contentView = [(GKDashboardPlayerCell *)self contentView];
  [contentView setBackgroundColor:v6];
}

@end