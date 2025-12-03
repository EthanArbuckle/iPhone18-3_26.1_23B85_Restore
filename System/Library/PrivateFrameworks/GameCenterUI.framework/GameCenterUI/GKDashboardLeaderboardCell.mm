@interface GKDashboardLeaderboardCell
- (void)awakeFromNib;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLeaderboard:(id)leaderboard;
- (void)setLeaderboardSet:(id)set;
- (void)setSelected:(BOOL)selected;
- (void)updateImage;
- (void)updateRank;
@end

@implementation GKDashboardLeaderboardCell

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = GKDashboardLeaderboardCell;
  [(GKDashboardLeaderboardCell *)&v4 awakeFromNib];
  [(GKDashboardLeaderboardCell *)self setClipsToBounds:0];
  [(UIImageView *)self->_iconView setContentMode:2];
  textColor = [(UILabel *)self->_titleLabel textColor];
  [(GKDashboardLeaderboardCell *)self setTitleLabelColor:textColor];
}

- (void)setLeaderboardSet:(id)set
{
  setCopy = set;
  if (self->_leaderboardSet != setCopy)
  {
    v13 = setCopy;
    objc_storeStrong(&self->_leaderboardSet, set);
    title = [(GKLeaderboardSet *)v13 title];
    [(UILabel *)self->_titleLabel setText:title];

    leaderboardIdentifiers = [(GKLeaderboardSet *)v13 leaderboardIdentifiers];
    [leaderboardIdentifiers count];
    v8 = MEMORY[0x277CCACA8];
    v9 = GKGameCenterUIFrameworkBundle();
    v10 = GKGetLocalizedStringFromTableInBundle();

    v11 = GKFormattedStringWithGroupingFromInteger();
    v12 = [v8 stringWithFormat:v10, v11];

    [(UILabel *)self->_countLabel setText:v12];
    [(GKDashboardLeaderboardCell *)self updateImage];
    setCopy = v13;
  }
}

- (void)setLeaderboard:(id)leaderboard
{
  leaderboardCopy = leaderboard;
  if (self->_leaderboard != leaderboardCopy)
  {
    v7 = leaderboardCopy;
    objc_storeStrong(&self->_leaderboard, leaderboard);
    title = [(GKLeaderboard *)v7 title];
    [(UILabel *)self->_titleLabel setText:title];

    [(GKDashboardLeaderboardCell *)self updateRank];
    [(GKDashboardLeaderboardCell *)self updateImage];
    leaderboardCopy = v7;
  }
}

- (void)updateRank
{
  if ([(GKLeaderboard *)self->_leaderboard overallRankCount]< 0 || [(GKLeaderboard *)self->_leaderboard overallRank]< 1)
  {
    v10 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();
    [(UILabel *)self->_countLabel setText:v4];
  }

  else
  {
    if ([(GKLeaderboard *)self->_leaderboard friendRank]< 1 || [(GKLeaderboard *)self->_leaderboard friendRankCount]< 2)
    {
      v8 = MEMORY[0x277CCACA8];
      v10 = GKGameCenterUIFrameworkBundle();
      v4 = GKGetLocalizedStringFromTableInBundle();
      [(GKLeaderboard *)self->_leaderboard overallRank];
      v5 = GKFormattedStringWithGroupingFromInteger();
      v9 = [v8 stringWithFormat:v4, v5];
      [(UILabel *)self->_countLabel setText:v9];
    }

    else
    {
      v3 = MEMORY[0x277CCACA8];
      v10 = GKGameCenterUIFrameworkBundle();
      v4 = GKGetLocalizedStringFromTableInBundle();
      [(GKLeaderboard *)self->_leaderboard friendRank];
      v5 = GKFormattedStringWithGroupingFromInteger();
      [(GKLeaderboard *)self->_leaderboard friendRankCount];
      v6 = GKFormattedStringWithGroupingFromInteger();
      v7 = [v3 stringWithFormat:v4, v5, v6, -[GKLeaderboard friendRankCount](self->_leaderboard, "friendRankCount")];
      [(UILabel *)self->_countLabel setText:v7];
    }
  }
}

- (void)updateImage
{
  [(UIImageView *)self->_iconView setImage:0];
  leaderboardSet = self->_leaderboardSet;
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  v5 = mEMORY[0x277D0C8C8];
  if (leaderboardSet)
  {
    [mEMORY[0x277D0C8C8] iconLeaderboardSetListSource];
  }

  else
  {
    [mEMORY[0x277D0C8C8] iconLeaderboardListSource];
  }
  v6 = ;

  image = [(UIImageView *)self->_iconView image];

  if (!image)
  {
    leaderboard = self->_leaderboardSet;
    if (!leaderboard)
    {
      leaderboard = self->_leaderboard;
    }

    identifier = [leaderboard identifier];
    v10 = [v6 cachedImageForIdentifier:identifier];
    [(UIImageView *)self->_iconView setImage:v10];
  }

  image2 = [(UIImageView *)self->_iconView image];

  if (image2)
  {
    [(GKDashboardLeaderboardCell *)self updateOverlay];
    [(GKDashboardLeaderboardCell *)self setNeedsDisplay];
  }

  else
  {
    v12 = self->_leaderboardSet;
    if (!v12)
    {
      v12 = self->_leaderboard;
    }

    imageURL = [v12 imageURL];
    v14 = self->_leaderboardSet;
    if (!v14)
    {
      v14 = self->_leaderboard;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__GKDashboardLeaderboardCell_updateImage__block_invoke;
    v15[3] = &unk_279669EA0;
    v15[4] = self;
    v16 = v6;
    [v16 loadImageForURLString:imageURL reference:v14 queue:MEMORY[0x277D85CD0] handler:v15];
  }
}

void __41__GKDashboardLeaderboardCell_updateImage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) leaderboardSet];
  if ([v6 isEqual:v5])
  {
  }

  else
  {
    v7 = [*(a1 + 32) leaderboard];
    v8 = [v7 isEqual:v5];

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v9 = v11;
  if (!v11)
  {
    v9 = [*(a1 + 40) defaultImage];
  }

  v11 = v9;
  v10 = [*(a1 + 32) iconView];
  [v10 setImage:v11];

  [*(a1 + 32) updateOverlay];
  [*(a1 + 32) setNeedsDisplay];
LABEL_7:
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = GKDashboardLeaderboardCell;
  [(GKDashboardLeaderboardCell *)&v7 setHighlighted:?];
  if (highlightedCopy)
  {
    _gkSelectedCellBackgroundColor = [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    _gkSelectedCellBackgroundColor = 0;
  }

  contentView = [(GKDashboardLeaderboardCell *)self contentView];
  [contentView setBackgroundColor:_gkSelectedCellBackgroundColor];

  if (highlightedCopy)
  {
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v8.receiver = self;
  v8.super_class = GKDashboardLeaderboardCell;
  [(GKDashboardLeaderboardCell *)&v8 setSelected:?];
  layer = [(GKDashboardLeaderboardCell *)self layer];
  [layer setBackgroundColor:0];

  if (selectedCopy)
  {
    _gkSelectedCellBackgroundColor = [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    _gkSelectedCellBackgroundColor = 0;
  }

  contentView = [(GKDashboardLeaderboardCell *)self contentView];
  [contentView setBackgroundColor:_gkSelectedCellBackgroundColor];

  if (selectedCopy)
  {
  }
}

@end