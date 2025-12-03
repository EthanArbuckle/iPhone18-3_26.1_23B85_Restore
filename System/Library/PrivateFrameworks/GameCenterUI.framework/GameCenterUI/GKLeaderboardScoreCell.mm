@interface GKLeaderboardScoreCell
+ (CGSize)defaultSize;
+ (id)highRankNib;
+ (id)lowRankNib;
- (GKLeaderboardScoreActionDelegate)delegate;
- (id)cellBackgroundColor:(BOOL)color;
- (void)awakeFromNib;
- (void)prepareForReuse;
- (void)setEntry:(id)entry;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLineVisible:(BOOL)visible;
- (void)setSelected:(BOOL)selected;
- (void)setupForLeaderboardEntry:(id)entry;
- (void)updateLayerMask:(id)mask;
@end

@implementation GKLeaderboardScoreCell

+ (CGSize)defaultSize
{
  v2 = 60.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

+ (id)lowRankNib
{
  v2 = objc_opt_class();

  return [v2 _gkNibWithBaseName:@"GKLeaderboardScoreLowRankCell"];
}

+ (id)highRankNib
{
  v2 = objc_opt_class();

  return [v2 _gkNibWithBaseName:@"GKLeaderboardScoreHighRankCell"];
}

- (void)awakeFromNib
{
  v17.receiver = self;
  v17.super_class = GKLeaderboardScoreCell;
  [(GKFocusHighlightingCollectionViewCell *)&v17 awakeFromNib];
  playerView = [(GKLeaderboardScoreCell *)self playerView];
  [playerView setUseDarkerPlaceholder:1];

  playerView2 = [(GKLeaderboardScoreCell *)self playerView];
  [playerView2 setAvatarSize:0x10000];

  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  secondaryLabelCompositingFilter = [mEMORY[0x277D0C8C8] secondaryLabelCompositingFilter];
  scoreLabel = [(GKLeaderboardScoreCell *)self scoreLabel];
  layer = [scoreLabel layer];
  [layer setCompositingFilter:secondaryLabelCompositingFilter];

  mEMORY[0x277D0C8C8]2 = [MEMORY[0x277D0C8C8] sharedTheme];
  secondaryLabelCompositingFilter2 = [mEMORY[0x277D0C8C8]2 secondaryLabelCompositingFilter];
  rankLabel = [(GKLeaderboardScoreCell *)self rankLabel];
  layer2 = [rankLabel layer];
  [layer2 setCompositingFilter:secondaryLabelCompositingFilter2];

  mEMORY[0x277D0C8C8]3 = [MEMORY[0x277D0C8C8] sharedTheme];
  secondaryLabelCompositingFilter3 = [mEMORY[0x277D0C8C8]3 secondaryLabelCompositingFilter];
  subtitleLabel = [(GKLeaderboardScoreCell *)self subtitleLabel];
  layer3 = [subtitleLabel layer];
  [layer3 setCompositingFilter:secondaryLabelCompositingFilter3];
}

- (void)setEntry:(id)entry
{
  entryCopy = entry;
  if (self->_entry != entryCopy)
  {
    objc_storeStrong(&self->_entry, entry);
LABEL_3:
    [(GKLeaderboardScoreCell *)self setupForLeaderboardEntry:entryCopy];
    v5 = entryCopy;
    goto LABEL_5;
  }

  player = [(GKDashboardPlayerPhotoView *)self->_playerView player];

  v5 = entryCopy;
  if (!player)
  {
    goto LABEL_3;
  }

LABEL_5:
}

- (id)cellBackgroundColor:(BOOL)color
{
  if (*MEMORY[0x277D0C258] == 1)
  {
    if (color)
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v4 = [whiteColor colorWithAlphaComponent:0.05];

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!color)
  {
LABEL_6:
    clearColor = [MEMORY[0x277D75348] clearColor];
    goto LABEL_7;
  }

  clearColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
LABEL_7:
  v4 = clearColor;
LABEL_8:

  return v4;
}

- (void)setupForLeaderboardEntry:(id)entry
{
  entryCopy = entry;
  player = [entryCopy player];
  -[GKLeaderboardScoreCell setIsLocalPlayerScore:](self, "setIsLocalPlayerScore:", [player isLocalPlayer]);
  v6 = [(GKLeaderboardScoreCell *)self cellBackgroundColor:[(GKLeaderboardScoreCell *)self isLocalPlayerScore]];
  cGColor = [v6 CGColor];
  layer = [(GKLeaderboardScoreCell *)self layer];
  [layer setBackgroundColor:cGColor];

  monogramColorView = [(GKLeaderboardScoreCell *)self monogramColorView];
  [monogramColorView setHidden:0];

  playerView = [(GKLeaderboardScoreCell *)self playerView];
  [playerView setPlayer:player];

  playerView2 = [(GKLeaderboardScoreCell *)self playerView];
  [playerView2 setUserInteractionEnabled:0];

  v12 = [player displayNameWithOptions:0];
  nameLabel = [(GKLeaderboardScoreCell *)self nameLabel];
  [nameLabel setText:v12];

  formattedScore = [entryCopy formattedScore];
  scoreLabel = [(GKLeaderboardScoreCell *)self scoreLabel];
  [scoreLabel setText:formattedScore];

  rank = [entryCopy rank];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v18 = labelColor;
  if (rank < 100)
  {
    rankLabel = [(GKLeaderboardScoreCell *)self rankLabel];
    [rankLabel setTextColor:v18];

    [entryCopy rank];
    v22 = GKFormattedStringWithGroupingFromInteger();
    rankLabel2 = [(GKLeaderboardScoreCell *)self rankLabel];
    [rankLabel2 setText:v22];
  }

  else
  {
    v19 = [labelColor colorWithAlphaComponent:0.5];
    rankLabel3 = [(GKLeaderboardScoreCell *)self rankLabel];
    [rankLabel3 setTextColor:v19];

    v21 = MEMORY[0x277CCACA8];
    v22 = GKGameCenterUIFrameworkBundle();
    rankLabel2 = GKGetLocalizedStringFromTableInBundle();
    [entryCopy rank];
    contact = GKFormattedStringWithGroupingFromInteger();
    v24 = [v21 stringWithFormat:rankLabel2, contact];
    rankLabel4 = [(GKLeaderboardScoreCell *)self rankLabel];
    [rankLabel4 setText:v24];
  }

  isLocalPlayerScore = [(GKLeaderboardScoreCell *)self isLocalPlayerScore];
  v28 = isLocalPlayerScore;
  if (isLocalPlayerScore)
  {
    internal = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
  }

  else
  {
    internal = [player internal];
    contact = [internal contact];
    [contact _gkCompositeName];
  }
  v30 = ;
  subtitleLabel = [(GKLeaderboardScoreCell *)self subtitleLabel];
  [subtitleLabel setText:v30];

  if (!v28)
  {

    v30 = contact;
  }

  subtitleLabel2 = [(GKLeaderboardScoreCell *)self subtitleLabel];
  text = [subtitleLabel2 text];
  v34 = [text length] == 0;
  subtitleLabel3 = [(GKLeaderboardScoreCell *)self subtitleLabel];
  [subtitleLabel3 setHidden:v34];
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
  topLine = [(GKLeaderboardScoreCell *)self topLine];
  [topLine setHidden:!visibleCopy];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = GKLeaderboardScoreCell;
  [(GKLeaderboardScoreCell *)&v6 prepareForReuse];
  playerView = [(GKLeaderboardScoreCell *)self playerView];
  [playerView setPlayer:0];

  v4 = [(GKLeaderboardScoreCell *)self cellBackgroundColor:0];
  contentView = [(GKLeaderboardScoreCell *)self contentView];
  [contentView setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v7.receiver = self;
  v7.super_class = GKLeaderboardScoreCell;
  [(GKLeaderboardScoreCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__GKLeaderboardScoreCell_setHighlighted___block_invoke;
  v5[3] = &unk_27966A890;
  v5[4] = self;
  highlightedCopy = highlighted;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0 completion:0.05];
}

void __41__GKLeaderboardScoreCell_setHighlighted___block_invoke(uint64_t a1)
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
  v8.receiver = self;
  v8.super_class = GKLeaderboardScoreCell;
  [(GKLeaderboardScoreCell *)&v8 setSelected:?];
  layer = [(GKLeaderboardScoreCell *)self layer];
  [layer setBackgroundColor:0];

  if (selectedCopy)
  {
    [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    [(GKLeaderboardScoreCell *)self cellBackgroundColor:[(GKLeaderboardScoreCell *)self isLocalPlayerScore]];
  }
  v6 = ;
  contentView = [(GKLeaderboardScoreCell *)self contentView];
  [contentView setBackgroundColor:v6];
}

- (GKLeaderboardScoreActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end