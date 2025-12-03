@interface NTKUpNextMatchupCell
- (NTKUpNextMatchupCell)initWithFrame:(CGRect)frame;
- (void)configureWithContent:(id)content;
- (void)prepareForReuse;
- (void)setFilterProvider:(id)provider;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextMatchupCell

- (NTKUpNextMatchupCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v90[16] = *MEMORY[0x277D85DE8];
  v89.receiver = self;
  v89.super_class = NTKUpNextMatchupCell;
  v7 = [(NTKUpNextBaseCell *)&v89 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    device = [(NTKUpNextBaseCell *)v7 device];
    ___LayoutConstants_block_invoke_62(device, &v85);

    v10 = v85;
    v11 = v86;
    v12 = v87;
    v13 = v88;
    v14 = objc_alloc_init(MEMORY[0x277D756D0]);
    scoreLayoutGuide = v8->_scoreLayoutGuide;
    v8->_scoreLayoutGuide = v14;

    [(UILayoutGuide *)v8->_scoreLayoutGuide setIdentifier:@"NTKUpNextMatchupCellScoreGuide"];
    contentView = [(NTKUpNextMatchupCell *)v8 contentView];
    [contentView addLayoutGuide:v8->_scoreLayoutGuide];

    height = [[NTKUpNextMatchupScoreView alloc] initWithFrame:x, y, width, height];
    scoreView = v8->_scoreView;
    v8->_scoreView = height;

    [(NTKUpNextMatchupScoreView *)v8->_scoreView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(NTKUpNextMatchupCell *)v8 contentView];
    [contentView2 addSubview:v8->_scoreView];

    v20 = objc_alloc_init(MEMORY[0x277D756D0]);
    upcomingLayoutGuide = v8->_upcomingLayoutGuide;
    v8->_upcomingLayoutGuide = v20;

    [(UILayoutGuide *)v8->_upcomingLayoutGuide setIdentifier:@"NTKUpNextMatchupCellUpcomingGuide"];
    contentView3 = [(NTKUpNextMatchupCell *)v8 contentView];
    [contentView3 addLayoutGuide:v8->_upcomingLayoutGuide];

    height2 = [[NTKUpNextMatchupUpcomingView alloc] initWithFrame:x, y, width, height];
    upcomingView = v8->_upcomingView;
    v8->_upcomingView = height2;

    [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView4 = [(NTKUpNextMatchupCell *)v8 contentView];
    [contentView4 addSubview:v8->_upcomingView];

    topAnchor = [(UILayoutGuide *)v8->_scoreLayoutGuide topAnchor];
    contentView5 = [(NTKUpNextMatchupCell *)v8 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v81 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:*&v10];
    v90[0] = v81;
    bottomAnchor = [(UILayoutGuide *)v8->_scoreLayoutGuide bottomAnchor];
    contentView6 = [(NTKUpNextMatchupCell *)v8 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v77 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-*&v11];
    v90[1] = v77;
    leadingAnchor = [(UILayoutGuide *)v8->_scoreLayoutGuide leadingAnchor];
    contentView7 = [(NTKUpNextMatchupCell *)v8 contentView];
    leadingAnchor2 = [contentView7 leadingAnchor];
    v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*(&v10 + 1)];
    v90[2] = v73;
    trailingAnchor = [(UILayoutGuide *)v8->_scoreLayoutGuide trailingAnchor];
    contentView8 = [(NTKUpNextMatchupCell *)v8 contentView];
    trailingAnchor2 = [contentView8 trailingAnchor];
    v68 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-*(&v11 + 1)];
    v90[3] = v68;
    topAnchor3 = [(NTKUpNextMatchupScoreView *)v8->_scoreView topAnchor];
    topAnchor4 = [(UILayoutGuide *)v8->_scoreLayoutGuide topAnchor];
    v64 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v90[4] = v64;
    bottomAnchor3 = [(NTKUpNextMatchupScoreView *)v8->_scoreView bottomAnchor];
    bottomAnchor4 = [(UILayoutGuide *)v8->_scoreLayoutGuide bottomAnchor];
    v60 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v90[5] = v60;
    leadingAnchor3 = [(NTKUpNextMatchupScoreView *)v8->_scoreView leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v8->_scoreLayoutGuide leadingAnchor];
    v56 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v90[6] = v56;
    trailingAnchor3 = [(NTKUpNextMatchupScoreView *)v8->_scoreView trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)v8->_scoreLayoutGuide trailingAnchor];
    v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v90[7] = v53;
    topAnchor5 = [(UILayoutGuide *)v8->_upcomingLayoutGuide topAnchor];
    contentView9 = [(NTKUpNextMatchupCell *)v8 contentView];
    topAnchor6 = [contentView9 topAnchor];
    v59 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:*&v12];
    v90[8] = v59;
    bottomAnchor5 = [(UILayoutGuide *)v8->_upcomingLayoutGuide bottomAnchor];
    contentView10 = [(NTKUpNextMatchupCell *)v8 contentView];
    bottomAnchor6 = [contentView10 bottomAnchor];
    v63 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-*&v13];
    v90[9] = v63;
    leadingAnchor5 = [(UILayoutGuide *)v8->_upcomingLayoutGuide leadingAnchor];
    contentView11 = [(NTKUpNextMatchupCell *)v8 contentView];
    leadingAnchor6 = [contentView11 leadingAnchor];
    v67 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:*(&v12 + 1)];
    v90[10] = v67;
    trailingAnchor5 = [(UILayoutGuide *)v8->_upcomingLayoutGuide trailingAnchor];
    contentView12 = [(NTKUpNextMatchupCell *)v8 contentView];
    trailingAnchor6 = [contentView12 trailingAnchor];
    v40 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-*(&v13 + 1)];
    v90[11] = v40;
    topAnchor7 = [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView topAnchor];
    topAnchor8 = [(UILayoutGuide *)v8->_upcomingLayoutGuide topAnchor];
    v37 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v90[12] = v37;
    bottomAnchor7 = [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView bottomAnchor];
    bottomAnchor8 = [(UILayoutGuide *)v8->_upcomingLayoutGuide bottomAnchor];
    v28 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v90[13] = v28;
    leadingAnchor7 = [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView leadingAnchor];
    leadingAnchor8 = [(UILayoutGuide *)v8->_upcomingLayoutGuide leadingAnchor];
    v31 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v90[14] = v31;
    trailingAnchor7 = [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView trailingAnchor];
    trailingAnchor8 = [(UILayoutGuide *)v8->_upcomingLayoutGuide trailingAnchor];
    v34 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v90[15] = v34;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:16];

    contentView13 = [(NTKUpNextMatchupCell *)v8 contentView];
    [contentView13 addConstraints:v69];
  }

  return v8;
}

- (void)configureWithContent:(id)content
{
  v8.receiver = self;
  v8.super_class = NTKUpNextMatchupCell;
  contentCopy = content;
  [(NTKUpNextBaseCell *)&v8 configureWithContent:contentCopy];
  matchupAccessory = [contentCopy matchupAccessory];

  [(NTKUpNextMatchupScoreView *)self->_scoreView configureWithMatchup:matchupAccessory];
  [(NTKUpNextMatchupUpcomingView *)self->_upcomingView configureWithMatchup:matchupAccessory];
  status = [matchupAccessory status];
  v7 = (status < 8) & (0xECu >> status);
  [(NTKUpNextMatchupScoreView *)self->_scoreView setHidden:!((status < 8) & (0xECu >> status))];
  [(NTKUpNextMatchupUpcomingView *)self->_upcomingView setHidden:v7];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NTKUpNextMatchupCell;
  [(NTKUpNextBaseCell *)&v3 prepareForReuse];
  [(NTKUpNextMatchupScoreView *)self->_scoreView transitionToMonochromeWithFraction:0.0];
  [(NTKUpNextMatchupUpcomingView *)self->_upcomingView transitionToMonochromeWithFraction:0.0];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(NTKUpNextMatchupScoreView *)self->_scoreView transitionToMonochromeWithFraction:?];
  upcomingView = self->_upcomingView;

  [(NTKUpNextMatchupUpcomingView *)upcomingView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  [(NTKUpNextMatchupScoreView *)self->_scoreView updateMonochromeColor];
  upcomingView = self->_upcomingView;

  [(NTKUpNextMatchupUpcomingView *)upcomingView updateMonochromeColor];
}

- (void)setFilterProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = NTKUpNextMatchupCell;
  providerCopy = provider;
  [(NTKUpNextBaseCell *)&v5 setFilterProvider:providerCopy];
  [(NTKUpNextMatchupScoreView *)self->_scoreView setFilterProvider:providerCopy, v5.receiver, v5.super_class];
  [(NTKUpNextMatchupUpcomingView *)self->_upcomingView setFilterProvider:providerCopy];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKUpNextMatchupCell;
  [(NTKUpNextBaseCell *)&v5 setPaused:?];
  [(NTKUpNextMatchupScoreView *)self->_scoreView setPaused:pausedCopy];
  [(NTKUpNextMatchupUpcomingView *)self->_upcomingView setPaused:pausedCopy];
}

@end