@interface GKDashboardPlayerCell
+ (CGSize)defaultSize;
- (void)awakeFromNib;
- (void)setHighlighted:(BOOL)a3;
- (void)setOnDarkBackground:(BOOL)a3;
- (void)setPlayer:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setStatusWithLastPlayedDate:(id)a3;
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
  v3 = [(UILabel *)self->_nameLabel textColor];
  [(GKDashboardPlayerCell *)self setNameColor:v3];

  v4 = [(UILabel *)self->_statusLabel textColor];
  [(GKDashboardPlayerCell *)self setStatusColor:v4];

  [(NSLayoutConstraint *)self->_playerViewBottomToNameLabelTopConstraint constant];
  [(GKDashboardPlayerCell *)self setPlayerViewBottomToNameLabelTopConstant:?];
  [(GKDashboardPlayerCell *)self setClipsToBounds:0];
  [(GKDashboardPlayerCell *)self setDefaultContentBackgroundColor:0];
  [(UILabel *)self->_statusLabel setText:0];
}

- (void)setOnDarkBackground:(BOOL)a3
{
  if (self->_onDarkBackground != a3)
  {
    self->_onDarkBackground = a3;
    if (a3)
    {
      v4 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)self->_nameLabel setTextColor:v4];

      v7 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)self->_statusLabel setTextColor:v7];
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

- (void)setPlayer:(id)a3
{
  v5 = a3;
  if (self->_player != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_player, a3);
    [(GKDashboardPlayerShadowView *)self->_playerView setPlayer:v7];
    v6 = [(GKPlayer *)v7 displayNameWithOptions:0];
    [(GKDashboardPlayerCell *)self setNameText:v6];

    v5 = v7;
  }
}

- (void)setStatusWithLastPlayedDate:(id)a3
{
  v4 = [a3 _gkFormattedWhenStringWithOptions:0];
  [(GKDashboardPlayerCell *)self setStatusText:v4];
}

- (void)updateLabelColorForDashboard
{
  v3 = [MEMORY[0x277D75348] tertiaryLabelColor];
  [(GKDashboardPlayerCell *)self setNameColor:v3];

  if (self->_onDarkBackground || ([(GKDashboardPlayerCell *)self isFocused]& 1) != 0)
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)self->_nameLabel setTextColor:v6];
  }

  else
  {
    nameColor = self->_nameColor;
    nameLabel = self->_nameLabel;

    [(UILabel *)nameLabel setTextColor:nameColor];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = GKDashboardPlayerCell;
  [(GKDashboardPlayerCell *)&v7 setHighlighted:?];
  if (v3)
  {
    [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    [(GKDashboardPlayerCell *)self defaultContentBackgroundColor];
  }
  v5 = ;
  v6 = [(GKDashboardPlayerCell *)self contentView];
  [v6 setBackgroundColor:v5];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = GKDashboardPlayerCell;
  [(GKDashboardPlayerCell *)&v8 setSelected:?];
  v5 = [(GKDashboardPlayerCell *)self layer];
  [v5 setBackgroundColor:0];

  if (v3)
  {
    [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    [(GKDashboardPlayerCell *)self defaultContentBackgroundColor];
  }
  v6 = ;
  v7 = [(GKDashboardPlayerCell *)self contentView];
  [v7 setBackgroundColor:v6];
}

@end