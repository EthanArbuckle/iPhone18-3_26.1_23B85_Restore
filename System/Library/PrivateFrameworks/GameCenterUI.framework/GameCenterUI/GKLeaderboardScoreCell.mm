@interface GKLeaderboardScoreCell
+ (CGSize)defaultSize;
+ (id)highRankNib;
+ (id)lowRankNib;
- (GKLeaderboardScoreActionDelegate)delegate;
- (id)cellBackgroundColor:(BOOL)a3;
- (void)awakeFromNib;
- (void)prepareForReuse;
- (void)setEntry:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLineVisible:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setupForLeaderboardEntry:(id)a3;
- (void)updateLayerMask:(id)a3;
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
  v3 = [(GKLeaderboardScoreCell *)self playerView];
  [v3 setUseDarkerPlaceholder:1];

  v4 = [(GKLeaderboardScoreCell *)self playerView];
  [v4 setAvatarSize:0x10000];

  v5 = [MEMORY[0x277D0C8C8] sharedTheme];
  v6 = [v5 secondaryLabelCompositingFilter];
  v7 = [(GKLeaderboardScoreCell *)self scoreLabel];
  v8 = [v7 layer];
  [v8 setCompositingFilter:v6];

  v9 = [MEMORY[0x277D0C8C8] sharedTheme];
  v10 = [v9 secondaryLabelCompositingFilter];
  v11 = [(GKLeaderboardScoreCell *)self rankLabel];
  v12 = [v11 layer];
  [v12 setCompositingFilter:v10];

  v13 = [MEMORY[0x277D0C8C8] sharedTheme];
  v14 = [v13 secondaryLabelCompositingFilter];
  v15 = [(GKLeaderboardScoreCell *)self subtitleLabel];
  v16 = [v15 layer];
  [v16 setCompositingFilter:v14];
}

- (void)setEntry:(id)a3
{
  v7 = a3;
  if (self->_entry != v7)
  {
    objc_storeStrong(&self->_entry, a3);
LABEL_3:
    [(GKLeaderboardScoreCell *)self setupForLeaderboardEntry:v7];
    v5 = v7;
    goto LABEL_5;
  }

  v6 = [(GKDashboardPlayerPhotoView *)self->_playerView player];

  v5 = v7;
  if (!v6)
  {
    goto LABEL_3;
  }

LABEL_5:
}

- (id)cellBackgroundColor:(BOOL)a3
{
  if (*MEMORY[0x277D0C258] == 1)
  {
    if (a3)
    {
      v3 = [MEMORY[0x277D75348] whiteColor];
      v4 = [v3 colorWithAlphaComponent:0.05];

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!a3)
  {
LABEL_6:
    v5 = [MEMORY[0x277D75348] clearColor];
    goto LABEL_7;
  }

  v5 = [MEMORY[0x277D75348] tertiarySystemFillColor];
LABEL_7:
  v4 = v5;
LABEL_8:

  return v4;
}

- (void)setupForLeaderboardEntry:(id)a3
{
  v36 = a3;
  v5 = [v36 player];
  -[GKLeaderboardScoreCell setIsLocalPlayerScore:](self, "setIsLocalPlayerScore:", [v5 isLocalPlayer]);
  v6 = [(GKLeaderboardScoreCell *)self cellBackgroundColor:[(GKLeaderboardScoreCell *)self isLocalPlayerScore]];
  v7 = [v6 CGColor];
  v8 = [(GKLeaderboardScoreCell *)self layer];
  [v8 setBackgroundColor:v7];

  v9 = [(GKLeaderboardScoreCell *)self monogramColorView];
  [v9 setHidden:0];

  v10 = [(GKLeaderboardScoreCell *)self playerView];
  [v10 setPlayer:v5];

  v11 = [(GKLeaderboardScoreCell *)self playerView];
  [v11 setUserInteractionEnabled:0];

  v12 = [v5 displayNameWithOptions:0];
  v13 = [(GKLeaderboardScoreCell *)self nameLabel];
  [v13 setText:v12];

  v14 = [v36 formattedScore];
  v15 = [(GKLeaderboardScoreCell *)self scoreLabel];
  [v15 setText:v14];

  v16 = [v36 rank];
  v17 = [MEMORY[0x277D75348] labelColor];
  v18 = v17;
  if (v16 < 100)
  {
    v26 = [(GKLeaderboardScoreCell *)self rankLabel];
    [v26 setTextColor:v18];

    [v36 rank];
    v22 = GKFormattedStringWithGroupingFromInteger();
    v23 = [(GKLeaderboardScoreCell *)self rankLabel];
    [v23 setText:v22];
  }

  else
  {
    v19 = [v17 colorWithAlphaComponent:0.5];
    v20 = [(GKLeaderboardScoreCell *)self rankLabel];
    [v20 setTextColor:v19];

    v21 = MEMORY[0x277CCACA8];
    v22 = GKGameCenterUIFrameworkBundle();
    v23 = GKGetLocalizedStringFromTableInBundle();
    [v36 rank];
    v3 = GKFormattedStringWithGroupingFromInteger();
    v24 = [v21 stringWithFormat:v23, v3];
    v25 = [(GKLeaderboardScoreCell *)self rankLabel];
    [v25 setText:v24];
  }

  v27 = [(GKLeaderboardScoreCell *)self isLocalPlayerScore];
  v28 = v27;
  if (v27)
  {
    v29 = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
  }

  else
  {
    v29 = [v5 internal];
    v3 = [v29 contact];
    [v3 _gkCompositeName];
  }
  v30 = ;
  v31 = [(GKLeaderboardScoreCell *)self subtitleLabel];
  [v31 setText:v30];

  if (!v28)
  {

    v30 = v3;
  }

  v32 = [(GKLeaderboardScoreCell *)self subtitleLabel];
  v33 = [v32 text];
  v34 = [v33 length] == 0;
  v35 = [(GKLeaderboardScoreCell *)self subtitleLabel];
  [v35 setHidden:v34];
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
  v4 = [(GKLeaderboardScoreCell *)self topLine];
  [v4 setHidden:!v3];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = GKLeaderboardScoreCell;
  [(GKLeaderboardScoreCell *)&v6 prepareForReuse];
  v3 = [(GKLeaderboardScoreCell *)self playerView];
  [v3 setPlayer:0];

  v4 = [(GKLeaderboardScoreCell *)self cellBackgroundColor:0];
  v5 = [(GKLeaderboardScoreCell *)self contentView];
  [v5 setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GKLeaderboardScoreCell;
  [(GKLeaderboardScoreCell *)&v7 setHighlighted:?];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__GKLeaderboardScoreCell_setHighlighted___block_invoke;
  v5[3] = &unk_27966A890;
  v5[4] = self;
  v6 = a3;
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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = GKLeaderboardScoreCell;
  [(GKLeaderboardScoreCell *)&v8 setSelected:?];
  v5 = [(GKLeaderboardScoreCell *)self layer];
  [v5 setBackgroundColor:0];

  if (v3)
  {
    [MEMORY[0x277D75348] _gkSelectedCellBackgroundColor];
  }

  else
  {
    [(GKLeaderboardScoreCell *)self cellBackgroundColor:[(GKLeaderboardScoreCell *)self isLocalPlayerScore]];
  }
  v6 = ;
  v7 = [(GKLeaderboardScoreCell *)self contentView];
  [v7 setBackgroundColor:v6];
}

- (GKLeaderboardScoreActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end