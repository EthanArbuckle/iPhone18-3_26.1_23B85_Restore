@interface GKDashboardTurnCell
+ (CGSize)defaultSize;
- (void)awakeFromNib;
- (void)configureForMatch:(id)a3;
- (void)configureForParticipant:(id)a3 inMatch:(id)a4;
- (void)setOnDarkBackground:(BOOL)a3;
@end

@implementation GKDashboardTurnCell

- (void)awakeFromNib
{
  v10.receiver = self;
  v10.super_class = GKDashboardTurnCell;
  [(GKDashboardPlayerCell *)&v10 awakeFromNib];
  v3 = [(UILabel *)self->_dateLabel textColor];
  [(GKDashboardTurnCell *)self setDateColor:v3];

  v4 = [(UILabel *)self->_turnLabel textColor];
  [(GKDashboardTurnCell *)self setTurnColor:v4];

  [(NSLayoutConstraint *)self->_dateToNameConstraint constant];
  [(GKDashboardTurnCell *)self setDateToNameConstant:?];
  [(NSLayoutConstraint *)self->_turnToNameConstraint constant];
  [(GKDashboardTurnCell *)self setTurnToNameConstant:?];
  v5 = [MEMORY[0x277D0C8C8] sharedTheme];
  v6 = [v5 statusDotImage];
  [(UIImageView *)self->_actionIndicatorView setImage:v6];

  [(UIImageView *)self->_actionIndicatorView setHidden:1];
  v7 = *MEMORY[0x277CDA5E8];
  v8 = [(GKDashboardTurnCell *)self turnLabel];
  v9 = [v8 layer];
  [v9 setCompositingFilter:v7];
}

+ (CGSize)defaultSize
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___GKDashboardTurnCell;
  objc_msgSendSuper2(&v4, sel_defaultSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)configureForMatch:(id)a3
{
  v27 = a3;
  if ([v27 status] == 2)
  {
    v4 = [v27 firstWinnerOrTiedOrLastLoser];
    v5 = [v4 player];

    if ([v5 isLocalPlayer])
    {
      v6 = [v27 playingWithParticipantOrFirstKnownPlayer];
      v7 = [v6 player];

      v5 = v7;
    }
  }

  else
  {
    v8 = [v27 currentParticipant];
    v5 = [v8 player];

    if (!v5)
    {
      v5 = [MEMORY[0x277D0C170] automatchPlayer];
    }
  }

  [(GKDashboardPlayerCell *)self setPlayer:v5];
  v9 = [v27 lastTurnDate];
  if (!v9)
  {
    v9 = [v27 creationDate];
  }

  v10 = [v9 _gkFormattedWhenStringWithOptions:0];
  v11 = [v27 state];
  v12 = 0;
  if (v11 > 3)
  {
    if (v11 != 4)
    {
      if (v11 == 5)
      {
        v21 = [v27 localPlayerParticipant];
        v22 = [v27 participants];
        v12 = [v21 matchOutcomeStringForLocalPlayer:{objc_msgSend(v22, "count")}];

        if ([v12 length])
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

      if (v11 != 6)
      {
        goto LABEL_29;
      }
    }

    v13 = [(GKDashboardPlayerCell *)self player];

    if (!v13 || (-[GKDashboardPlayerCell player](self, "player"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isAutomatchPlayer], v14, v15))
    {
LABEL_25:
      v17 = GKGameCenterUIFrameworkBundle();
      v12 = GKGetLocalizedStringFromTableInBundle();
      goto LABEL_28;
    }

    v24 = MEMORY[0x277CCACA8];
    v17 = GKGameCenterUIFrameworkBundle();
    v18 = GKGetLocalizedStringFromTableInBundle();
    v25 = [(GKDashboardPlayerCell *)self player];
    v26 = [v25 displayNameWithOptions:1];
    v12 = [v24 stringWithFormat:v18, v26];

LABEL_27:
    goto LABEL_28;
  }

  if (v11 != 1)
  {
    if (v11 != 2)
    {
      if (v11 != 3)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    v17 = [v27 activeExchanges];
    v18 = [v17 lastObject];
    v12 = [v18 message];
    if (![v12 length])
    {
      v19 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();

      v12 = v20;
    }

    goto LABEL_27;
  }

  v16 = [v27 currentParticipant];
  v12 = [v16 inviteMessage];

  if ([v12 length])
  {
    goto LABEL_29;
  }

LABEL_24:
  v17 = GKGameCenterUIFrameworkBundle();
  v23 = GKGetLocalizedStringFromTableInBundle();

  v12 = v23;
LABEL_28:

LABEL_29:
  [(UILabel *)self->_dateLabel setText:v10];
  [(UILabel *)self->_turnLabel setText:v12];
  [(UIImageView *)self->_actionIndicatorView setHidden:[(GKDashboardTurnCell *)self wantsLocalPlayerAction:v27]^ 1];
}

- (void)configureForParticipant:(id)a3 inMatch:(id)a4
{
  v23 = a3;
  v6 = a4;
  v7 = [v23 player];
  if (!v7)
  {
    v7 = [MEMORY[0x277D0C170] automatchPlayer];
    v8 = [v7 internal];
    [v8 setAutomatchPosition:{-[GKDashboardTurnCell displayIndex](self, "displayIndex")}];
  }

  [(GKDashboardPlayerCell *)self setPlayer:v7];
  v9 = [v23 lastTurnDate];
  v10 = [v9 _gkFormattedWhenStringWithOptions:0];
  v11 = [v6 currentParticipant];

  if (v11 == v23)
  {
    v13 = [v6 localPlayerParticipant];
    v14 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
  }

  else
  {
    v12 = &stru_28612D290;
  }

  if (![(__CFString *)v12 length])
  {
    if ([v23 status] == 5)
    {
      v15 = [v6 participants];
      v16 = [v23 matchOutcomeString:{-[__CFString count](v15, "count")}];

      v12 = v15;
    }

    else
    {
      v16 = [v23 matchStatusString];
    }

    v12 = v16;
  }

  [(UILabel *)self->_dateLabel setText:v10];
  [(UILabel *)self->_turnLabel setText:v12];
  v17 = [(UILabel *)self->_dateLabel text];
  v18 = [v17 length];

  turnToNameConstant = 0.0;
  dateToNameConstant = 0.0;
  if (v18)
  {
    dateToNameConstant = self->_dateToNameConstant;
  }

  [(NSLayoutConstraint *)self->_dateToNameConstraint setConstant:dateToNameConstant];
  v21 = [(UILabel *)self->_turnLabel text];
  v22 = [v21 length];

  if (v22)
  {
    turnToNameConstant = self->_turnToNameConstant;
  }

  [(NSLayoutConstraint *)self->_turnToNameConstraint setConstant:turnToNameConstant];
}

- (void)setOnDarkBackground:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = GKDashboardTurnCell;
  [(GKDashboardPlayerCell *)&v7 setOnDarkBackground:?];
  if (a3)
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)self->_dateLabel setTextColor:v5];

    v6 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)self->_turnLabel setTextColor:v6];
  }

  else
  {
    [(UILabel *)self->_dateLabel setTextColor:self->_dateColor];
    [(UILabel *)self->_turnLabel setTextColor:self->_turnColor];
  }
}

@end