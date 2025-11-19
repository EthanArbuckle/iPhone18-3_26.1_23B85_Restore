@interface GKDashboardLeaderboardScoreCell
+ (CGSize)defaultSize;
+ (id)highRankNib;
+ (id)lowRankNib;
- (BOOL)linesVisible;
- (void)awakeFromNib;
- (void)setLinesVisible:(BOOL)a3;
- (void)setScore:(id)a3;
- (void)setupForScore:(id)a3;
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

- (void)setScore:(id)a3
{
  v5 = a3;
  if (self->_score != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_score, a3);
    [(GKDashboardLeaderboardScoreCell *)self setupForScore:v6];
    v5 = v6;
  }
}

- (void)setupForScore:(id)a3
{
  v4 = a3;
  v8 = [v4 player];
  [(UIView *)self->_monogramColorView setHidden:0];
  [(GKDashboardPlayerPhotoView *)self->_playerView setPlayer:v8];
  v5 = [v8 displayNameWithOptions:0];
  [(UILabel *)self->_nameLabel setText:v5];

  [v4 rank];
  v6 = GKFormattedStringWithGroupingFromInteger();
  [(UILabel *)self->_rankLabel setText:v6];

  v7 = [v4 formattedValue];

  [(UILabel *)self->_scoreLabel setText:v7];
}

- (void)setLinesVisible:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_topLine setHidden:!a3];
  bottomLine = self->_bottomLine;

  [(UIView *)bottomLine setHidden:!v3];
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