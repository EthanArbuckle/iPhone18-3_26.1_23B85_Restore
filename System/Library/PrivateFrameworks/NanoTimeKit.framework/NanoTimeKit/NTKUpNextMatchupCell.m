@interface NTKUpNextMatchupCell
- (NTKUpNextMatchupCell)initWithFrame:(CGRect)a3;
- (void)configureWithContent:(id)a3;
- (void)prepareForReuse;
- (void)setFilterProvider:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextMatchupCell

- (NTKUpNextMatchupCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v9 = [(NTKUpNextBaseCell *)v7 device];
    ___LayoutConstants_block_invoke_62(v9, &v85);

    v10 = v85;
    v11 = v86;
    v12 = v87;
    v13 = v88;
    v14 = objc_alloc_init(MEMORY[0x277D756D0]);
    scoreLayoutGuide = v8->_scoreLayoutGuide;
    v8->_scoreLayoutGuide = v14;

    [(UILayoutGuide *)v8->_scoreLayoutGuide setIdentifier:@"NTKUpNextMatchupCellScoreGuide"];
    v16 = [(NTKUpNextMatchupCell *)v8 contentView];
    [v16 addLayoutGuide:v8->_scoreLayoutGuide];

    v17 = [[NTKUpNextMatchupScoreView alloc] initWithFrame:x, y, width, height];
    scoreView = v8->_scoreView;
    v8->_scoreView = v17;

    [(NTKUpNextMatchupScoreView *)v8->_scoreView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(NTKUpNextMatchupCell *)v8 contentView];
    [v19 addSubview:v8->_scoreView];

    v20 = objc_alloc_init(MEMORY[0x277D756D0]);
    upcomingLayoutGuide = v8->_upcomingLayoutGuide;
    v8->_upcomingLayoutGuide = v20;

    [(UILayoutGuide *)v8->_upcomingLayoutGuide setIdentifier:@"NTKUpNextMatchupCellUpcomingGuide"];
    v22 = [(NTKUpNextMatchupCell *)v8 contentView];
    [v22 addLayoutGuide:v8->_upcomingLayoutGuide];

    v23 = [[NTKUpNextMatchupUpcomingView alloc] initWithFrame:x, y, width, height];
    upcomingView = v8->_upcomingView;
    v8->_upcomingView = v23;

    [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [(NTKUpNextMatchupCell *)v8 contentView];
    [v25 addSubview:v8->_upcomingView];

    v83 = [(UILayoutGuide *)v8->_scoreLayoutGuide topAnchor];
    v84 = [(NTKUpNextMatchupCell *)v8 contentView];
    v82 = [v84 topAnchor];
    v81 = [v83 constraintEqualToAnchor:v82 constant:*&v10];
    v90[0] = v81;
    v79 = [(UILayoutGuide *)v8->_scoreLayoutGuide bottomAnchor];
    v80 = [(NTKUpNextMatchupCell *)v8 contentView];
    v78 = [v80 bottomAnchor];
    v77 = [v79 constraintEqualToAnchor:v78 constant:-*&v11];
    v90[1] = v77;
    v75 = [(UILayoutGuide *)v8->_scoreLayoutGuide leadingAnchor];
    v76 = [(NTKUpNextMatchupCell *)v8 contentView];
    v74 = [v76 leadingAnchor];
    v73 = [v75 constraintEqualToAnchor:v74 constant:*(&v10 + 1)];
    v90[2] = v73;
    v71 = [(UILayoutGuide *)v8->_scoreLayoutGuide trailingAnchor];
    v72 = [(NTKUpNextMatchupCell *)v8 contentView];
    v70 = [v72 trailingAnchor];
    v68 = [v71 constraintEqualToAnchor:v70 constant:-*(&v11 + 1)];
    v90[3] = v68;
    v66 = [(NTKUpNextMatchupScoreView *)v8->_scoreView topAnchor];
    v65 = [(UILayoutGuide *)v8->_scoreLayoutGuide topAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v90[4] = v64;
    v62 = [(NTKUpNextMatchupScoreView *)v8->_scoreView bottomAnchor];
    v61 = [(UILayoutGuide *)v8->_scoreLayoutGuide bottomAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v90[5] = v60;
    v58 = [(NTKUpNextMatchupScoreView *)v8->_scoreView leadingAnchor];
    v57 = [(UILayoutGuide *)v8->_scoreLayoutGuide leadingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v90[6] = v56;
    v55 = [(NTKUpNextMatchupScoreView *)v8->_scoreView trailingAnchor];
    v54 = [(UILayoutGuide *)v8->_scoreLayoutGuide trailingAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v90[7] = v53;
    v51 = [(UILayoutGuide *)v8->_upcomingLayoutGuide topAnchor];
    v52 = [(NTKUpNextMatchupCell *)v8 contentView];
    v50 = [v52 topAnchor];
    v59 = [v51 constraintEqualToAnchor:v50 constant:*&v12];
    v90[8] = v59;
    v48 = [(UILayoutGuide *)v8->_upcomingLayoutGuide bottomAnchor];
    v49 = [(NTKUpNextMatchupCell *)v8 contentView];
    v47 = [v49 bottomAnchor];
    v63 = [v48 constraintEqualToAnchor:v47 constant:-*&v13];
    v90[9] = v63;
    v45 = [(UILayoutGuide *)v8->_upcomingLayoutGuide leadingAnchor];
    v46 = [(NTKUpNextMatchupCell *)v8 contentView];
    v44 = [v46 leadingAnchor];
    v67 = [v45 constraintEqualToAnchor:v44 constant:*(&v12 + 1)];
    v90[10] = v67;
    v42 = [(UILayoutGuide *)v8->_upcomingLayoutGuide trailingAnchor];
    v43 = [(NTKUpNextMatchupCell *)v8 contentView];
    v41 = [v43 trailingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41 constant:-*(&v13 + 1)];
    v90[11] = v40;
    v39 = [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView topAnchor];
    v38 = [(UILayoutGuide *)v8->_upcomingLayoutGuide topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v90[12] = v37;
    v26 = [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView bottomAnchor];
    v27 = [(UILayoutGuide *)v8->_upcomingLayoutGuide bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v90[13] = v28;
    v29 = [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView leadingAnchor];
    v30 = [(UILayoutGuide *)v8->_upcomingLayoutGuide leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v90[14] = v31;
    v32 = [(NTKUpNextMatchupUpcomingView *)v8->_upcomingView trailingAnchor];
    v33 = [(UILayoutGuide *)v8->_upcomingLayoutGuide trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v90[15] = v34;
    v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:16];

    v35 = [(NTKUpNextMatchupCell *)v8 contentView];
    [v35 addConstraints:v69];
  }

  return v8;
}

- (void)configureWithContent:(id)a3
{
  v8.receiver = self;
  v8.super_class = NTKUpNextMatchupCell;
  v4 = a3;
  [(NTKUpNextBaseCell *)&v8 configureWithContent:v4];
  v5 = [v4 matchupAccessory];

  [(NTKUpNextMatchupScoreView *)self->_scoreView configureWithMatchup:v5];
  [(NTKUpNextMatchupUpcomingView *)self->_upcomingView configureWithMatchup:v5];
  v6 = [v5 status];
  v7 = (v6 < 8) & (0xECu >> v6);
  [(NTKUpNextMatchupScoreView *)self->_scoreView setHidden:!((v6 < 8) & (0xECu >> v6))];
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

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(NTKUpNextMatchupScoreView *)self->_scoreView transitionToMonochromeWithFraction:?];
  upcomingView = self->_upcomingView;

  [(NTKUpNextMatchupUpcomingView *)upcomingView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  [(NTKUpNextMatchupScoreView *)self->_scoreView updateMonochromeColor];
  upcomingView = self->_upcomingView;

  [(NTKUpNextMatchupUpcomingView *)upcomingView updateMonochromeColor];
}

- (void)setFilterProvider:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKUpNextMatchupCell;
  v4 = a3;
  [(NTKUpNextBaseCell *)&v5 setFilterProvider:v4];
  [(NTKUpNextMatchupScoreView *)self->_scoreView setFilterProvider:v4, v5.receiver, v5.super_class];
  [(NTKUpNextMatchupUpcomingView *)self->_upcomingView setFilterProvider:v4];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKUpNextMatchupCell;
  [(NTKUpNextBaseCell *)&v5 setPaused:?];
  [(NTKUpNextMatchupScoreView *)self->_scoreView setPaused:v3];
  [(NTKUpNextMatchupUpcomingView *)self->_upcomingView setPaused:v3];
}

@end