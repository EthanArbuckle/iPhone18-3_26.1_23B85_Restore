@interface GKDashboardLeaderboardScoreCell
+ (CGSize)defaultSize;
+ (id)highRankNib;
+ (id)lowRankNib;
- (BOOL)linesVisible;
- (void)awakeFromNib;
- (void)setLinesVisible:(BOOL)visible;
- (void)setScore:(id)score;
- (void)setupForScore:(id)score;
@end

@implementation GKDashboardLeaderboardScoreCell

+ (CGSize)defaultSize
{
  v2 = 58.0;
  v3 = 0.0;
  result.height = v2;
  result.width = v3;
  return result;
}

+ (id)lowRankNib
{
  v2 = objc_opt_class();

  return [v2 _gkNibWithBaseName:@"GKDashboardLeaderboardScoreLowRankCell"];
}

+ (id)highRankNib
{
  v2 = objc_opt_class();

  return [v2 _gkNibWithBaseName:@"GKDashboardLeaderboardScoreHighRankCell"];
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = GKDashboardLeaderboardScoreCell;
  [(GKRectShadowCell *)&v3 awakeFromNib];
  [(GKDashboardPlayerPhotoView *)self->_playerView setUseDarkerPlaceholder:1];
  [(GKDashboardPlayerPhotoView *)self->_playerView setAvatarSize:0x10000];
}

- (void)setScore:(id)score
{
  scoreCopy = score;
  if (self->_score != scoreCopy)
  {
    v6 = scoreCopy;
    objc_storeStrong(&self->_score, score);
    [(GKDashboardLeaderboardScoreCell *)self setupForScore:v6];
    scoreCopy = v6;
  }
}

- (void)setupForScore:(id)score
{
  scoreCopy = score;
  player = [scoreCopy player];
  [(UIView *)self->_monogramColorView setHidden:0];
  [(GKDashboardPlayerPhotoView *)self->_playerView setPlayer:player];
  v5 = [player displayNameWithOptions:0];
  [(UILabel *)self->_nameLabel setText:v5];

  [scoreCopy rank];
  v6 = GKFormattedStringWithGroupingFromInteger();
  [(UILabel *)self->_rankLabel setText:v6];

  formattedValue = [scoreCopy formattedValue];

  [(UILabel *)self->_scoreLabel setText:formattedValue];
}

- (void)setLinesVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(UIView *)self->_topLine setHidden:!visible];
  bottomLine = self->_bottomLine;

  [(UIView *)bottomLine setHidden:!visibleCopy];
}

- (BOOL)linesVisible
{
  if ([(UIView *)self->_topLine isHidden])
  {
    return 0;
  }

  else
  {
    return ![(UIView *)self->_bottomLine isHidden];
  }
}

@end