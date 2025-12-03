@interface GKDashboardTurnCell
+ (CGSize)defaultSize;
- (void)awakeFromNib;
- (void)configureForMatch:(id)match;
- (void)configureForParticipant:(id)participant inMatch:(id)match;
- (void)setOnDarkBackground:(BOOL)background;
@end

@implementation GKDashboardTurnCell

- (void)awakeFromNib
{
  v10.receiver = self;
  v10.super_class = GKDashboardTurnCell;
  [(GKDashboardPlayerCell *)&v10 awakeFromNib];
  textColor = [(UILabel *)self->_dateLabel textColor];
  [(GKDashboardTurnCell *)self setDateColor:textColor];

  textColor2 = [(UILabel *)self->_turnLabel textColor];
  [(GKDashboardTurnCell *)self setTurnColor:textColor2];

  [(NSLayoutConstraint *)self->_dateToNameConstraint constant];
  [(GKDashboardTurnCell *)self setDateToNameConstant:?];
  [(NSLayoutConstraint *)self->_turnToNameConstraint constant];
  [(GKDashboardTurnCell *)self setTurnToNameConstant:?];
  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  statusDotImage = [mEMORY[0x277D0C8C8] statusDotImage];
  [(UIImageView *)self->_actionIndicatorView setImage:statusDotImage];

  [(UIImageView *)self->_actionIndicatorView setHidden:1];
  v7 = *MEMORY[0x277CDA5E8];
  turnLabel = [(GKDashboardTurnCell *)self turnLabel];
  layer = [turnLabel layer];
  [layer setCompositingFilter:v7];
}

+ (CGSize)defaultSize
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___GKDashboardTurnCell;
  objc_msgSendSuper2(&v4, sel_defaultSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)configureForMatch:(id)match
{
  matchCopy = match;
  if ([matchCopy status] == 2)
  {
    firstWinnerOrTiedOrLastLoser = [matchCopy firstWinnerOrTiedOrLastLoser];
    player = [firstWinnerOrTiedOrLastLoser player];

    if ([player isLocalPlayer])
    {
      playingWithParticipantOrFirstKnownPlayer = [matchCopy playingWithParticipantOrFirstKnownPlayer];
      player2 = [playingWithParticipantOrFirstKnownPlayer player];

      player = player2;
    }
  }

  else
  {
    currentParticipant = [matchCopy currentParticipant];
    player = [currentParticipant player];

    if (!player)
    {
      player = [MEMORY[0x277D0C170] automatchPlayer];
    }
  }

  [(GKDashboardPlayerCell *)self setPlayer:player];
  lastTurnDate = [matchCopy lastTurnDate];
  if (!lastTurnDate)
  {
    lastTurnDate = [matchCopy creationDate];
  }

  v10 = [lastTurnDate _gkFormattedWhenStringWithOptions:0];
  state = [matchCopy state];
  message = 0;
  if (state > 3)
  {
    if (state != 4)
    {
      if (state == 5)
      {
        localPlayerParticipant = [matchCopy localPlayerParticipant];
        participants = [matchCopy participants];
        message = [localPlayerParticipant matchOutcomeStringForLocalPlayer:{objc_msgSend(participants, "count")}];

        if ([message length])
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

      if (state != 6)
      {
        goto LABEL_29;
      }
    }

    player3 = [(GKDashboardPlayerCell *)self player];

    if (!player3 || (-[GKDashboardPlayerCell player](self, "player"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 isAutomatchPlayer], v14, v15))
    {
LABEL_25:
      activeExchanges = GKGameCenterUIFrameworkBundle();
      message = GKGetLocalizedStringFromTableInBundle();
      goto LABEL_28;
    }

    v24 = MEMORY[0x277CCACA8];
    activeExchanges = GKGameCenterUIFrameworkBundle();
    lastObject = GKGetLocalizedStringFromTableInBundle();
    player4 = [(GKDashboardPlayerCell *)self player];
    v26 = [player4 displayNameWithOptions:1];
    message = [v24 stringWithFormat:lastObject, v26];

LABEL_27:
    goto LABEL_28;
  }

  if (state != 1)
  {
    if (state != 2)
    {
      if (state != 3)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    activeExchanges = [matchCopy activeExchanges];
    lastObject = [activeExchanges lastObject];
    message = [lastObject message];
    if (![message length])
    {
      v19 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();

      message = v20;
    }

    goto LABEL_27;
  }

  currentParticipant2 = [matchCopy currentParticipant];
  message = [currentParticipant2 inviteMessage];

  if ([message length])
  {
    goto LABEL_29;
  }

LABEL_24:
  activeExchanges = GKGameCenterUIFrameworkBundle();
  v23 = GKGetLocalizedStringFromTableInBundle();

  message = v23;
LABEL_28:

LABEL_29:
  [(UILabel *)self->_dateLabel setText:v10];
  [(UILabel *)self->_turnLabel setText:message];
  [(UIImageView *)self->_actionIndicatorView setHidden:[(GKDashboardTurnCell *)self wantsLocalPlayerAction:matchCopy]^ 1];
}

- (void)configureForParticipant:(id)participant inMatch:(id)match
{
  participantCopy = participant;
  matchCopy = match;
  player = [participantCopy player];
  if (!player)
  {
    player = [MEMORY[0x277D0C170] automatchPlayer];
    internal = [player internal];
    [internal setAutomatchPosition:{-[GKDashboardTurnCell displayIndex](self, "displayIndex")}];
  }

  [(GKDashboardPlayerCell *)self setPlayer:player];
  lastTurnDate = [participantCopy lastTurnDate];
  v10 = [lastTurnDate _gkFormattedWhenStringWithOptions:0];
  currentParticipant = [matchCopy currentParticipant];

  if (currentParticipant == participantCopy)
  {
    localPlayerParticipant = [matchCopy localPlayerParticipant];
    v14 = GKGameCenterUIFrameworkBundle();
    v12 = GKGetLocalizedStringFromTableInBundle();
  }

  else
  {
    v12 = &stru_28612D290;
  }

  if (![(__CFString *)v12 length])
  {
    if ([participantCopy status] == 5)
    {
      participants = [matchCopy participants];
      matchStatusString = [participantCopy matchOutcomeString:{-[__CFString count](participants, "count")}];

      v12 = participants;
    }

    else
    {
      matchStatusString = [participantCopy matchStatusString];
    }

    v12 = matchStatusString;
  }

  [(UILabel *)self->_dateLabel setText:v10];
  [(UILabel *)self->_turnLabel setText:v12];
  text = [(UILabel *)self->_dateLabel text];
  v18 = [text length];

  turnToNameConstant = 0.0;
  dateToNameConstant = 0.0;
  if (v18)
  {
    dateToNameConstant = self->_dateToNameConstant;
  }

  [(NSLayoutConstraint *)self->_dateToNameConstraint setConstant:dateToNameConstant];
  text2 = [(UILabel *)self->_turnLabel text];
  v22 = [text2 length];

  if (v22)
  {
    turnToNameConstant = self->_turnToNameConstant;
  }

  [(NSLayoutConstraint *)self->_turnToNameConstraint setConstant:turnToNameConstant];
}

- (void)setOnDarkBackground:(BOOL)background
{
  v7.receiver = self;
  v7.super_class = GKDashboardTurnCell;
  [(GKDashboardPlayerCell *)&v7 setOnDarkBackground:?];
  if (background)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)self->_dateLabel setTextColor:whiteColor];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)self->_turnLabel setTextColor:whiteColor2];
  }

  else
  {
    [(UILabel *)self->_dateLabel setTextColor:self->_dateColor];
    [(UILabel *)self->_turnLabel setTextColor:self->_turnColor];
  }
}

@end