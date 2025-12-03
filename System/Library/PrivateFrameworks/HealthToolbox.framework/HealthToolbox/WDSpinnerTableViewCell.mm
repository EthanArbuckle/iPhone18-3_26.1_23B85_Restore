@interface WDSpinnerTableViewCell
- (NSString)waitingReason;
- (WDSpinnerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setWaitingReason:(id)reason;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation WDSpinnerTableViewCell

- (WDSpinnerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDSpinnerTableViewCell;
  v4 = [(WDSpinnerTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDSpinnerTableViewCell *)v4 setSelectionStyle:0];
    [(WDSpinnerTableViewCell *)v5 setupSubviews];
    [(WDSpinnerTableViewCell *)v5 setupConstraints];
  }

  return v5;
}

- (void)setupSubviews
{
  v3 = objc_opt_new();
  [(WDSpinnerTableViewCell *)self setContentContainerView:v3];

  contentView = [(WDSpinnerTableViewCell *)self contentView];
  contentContainerView = [(WDSpinnerTableViewCell *)self contentContainerView];
  [contentView addSubview:contentContainerView];

  v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [(WDSpinnerTableViewCell *)self setSpinner:v6];

  contentContainerView2 = [(WDSpinnerTableViewCell *)self contentContainerView];
  spinner = [(WDSpinnerTableViewCell *)self spinner];
  [contentContainerView2 addSubview:spinner];

  spinner2 = [(WDSpinnerTableViewCell *)self spinner];
  [spinner2 setHidesWhenStopped:0];

  spinner3 = [(WDSpinnerTableViewCell *)self spinner];
  [spinner3 startAnimating];
}

- (void)setupConstraints
{
  contentView = [(WDSpinnerTableViewCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  v48 = [heightAnchor constraintGreaterThanOrEqualToConstant:*MEMORY[0x277D76F38]];

  LODWORD(v5) = 1132068864;
  [v48 setPriority:v5];
  [v48 setActive:1];
  contentContainerView = [(WDSpinnerTableViewCell *)self contentContainerView];
  [contentContainerView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentContainerView2 = [(WDSpinnerTableViewCell *)self contentContainerView];
  centerXAnchor = [contentContainerView2 centerXAnchor];
  contentView2 = [(WDSpinnerTableViewCell *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v11 setActive:1];

  contentContainerView3 = [(WDSpinnerTableViewCell *)self contentContainerView];
  centerYAnchor = [contentContainerView3 centerYAnchor];
  contentView3 = [(WDSpinnerTableViewCell *)self contentView];
  centerYAnchor2 = [contentView3 centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v16 setActive:1];

  contentContainerView4 = [(WDSpinnerTableViewCell *)self contentContainerView];
  leadingAnchor = [contentContainerView4 leadingAnchor];
  contentView4 = [(WDSpinnerTableViewCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v21 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  [v21 setActive:1];

  contentView5 = [(WDSpinnerTableViewCell *)self contentView];
  trailingAnchor = [contentView5 trailingAnchor];
  contentContainerView5 = [(WDSpinnerTableViewCell *)self contentContainerView];
  trailingAnchor2 = [contentContainerView5 trailingAnchor];
  v26 = [trailingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  [v26 setActive:1];

  contentContainerView6 = [(WDSpinnerTableViewCell *)self contentContainerView];
  topAnchor = [contentContainerView6 topAnchor];
  contentView6 = [(WDSpinnerTableViewCell *)self contentView];
  topAnchor2 = [contentView6 topAnchor];
  v31 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  [v31 setActive:1];

  contentView7 = [(WDSpinnerTableViewCell *)self contentView];
  bottomAnchor = [contentView7 bottomAnchor];
  contentContainerView7 = [(WDSpinnerTableViewCell *)self contentContainerView];
  bottomAnchor2 = [contentContainerView7 bottomAnchor];
  v36 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  [v36 setActive:1];

  spinner = [(WDSpinnerTableViewCell *)self spinner];
  [spinner setTranslatesAutoresizingMaskIntoConstraints:0];

  spinner2 = [(WDSpinnerTableViewCell *)self spinner];
  centerXAnchor3 = [spinner2 centerXAnchor];
  contentContainerView8 = [(WDSpinnerTableViewCell *)self contentContainerView];
  centerXAnchor4 = [contentContainerView8 centerXAnchor];
  v42 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v42 setActive:1];

  spinner3 = [(WDSpinnerTableViewCell *)self spinner];
  centerYAnchor3 = [spinner3 centerYAnchor];
  contentContainerView9 = [(WDSpinnerTableViewCell *)self contentContainerView];
  centerYAnchor4 = [contentContainerView9 centerYAnchor];
  v47 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v47 setActive:1];
}

- (void)setWaitingReason:(id)reason
{
  reasonCopy = reason;
  waitingReasonLabel = [(WDSpinnerTableViewCell *)self waitingReasonLabel];

  if (!waitingReasonLabel)
  {
    contentContainerView = [(WDSpinnerTableViewCell *)self contentContainerView];
    contentContainerView2 = [(WDSpinnerTableViewCell *)self contentContainerView];
    constraints = [contentContainerView2 constraints];
    [contentContainerView removeConstraints:constraints];

    v9 = objc_opt_new();
    [(WDSpinnerTableViewCell *)self setWaitingReasonLabel:v9];

    waitingReasonLabel2 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
    [waitingReasonLabel2 setNumberOfLines:0];

    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    waitingReasonLabel3 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
    [waitingReasonLabel3 setTextColor:lightGrayColor];

    waitingReasonLabel4 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
    [waitingReasonLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentContainerView3 = [(WDSpinnerTableViewCell *)self contentContainerView];
    waitingReasonLabel5 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
    [contentContainerView3 addSubview:waitingReasonLabel5];

    spinner = [(WDSpinnerTableViewCell *)self spinner];
    centerYAnchor = [spinner centerYAnchor];
    contentContainerView4 = [(WDSpinnerTableViewCell *)self contentContainerView];
    centerYAnchor2 = [contentContainerView4 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v20 setActive:1];

    waitingReasonLabel6 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
    centerYAnchor3 = [waitingReasonLabel6 centerYAnchor];
    contentContainerView5 = [(WDSpinnerTableViewCell *)self contentContainerView];
    centerYAnchor4 = [contentContainerView5 centerYAnchor];
    v25 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v25 setActive:1];

    contentContainerView6 = [(WDSpinnerTableViewCell *)self contentContainerView];
    topAnchor = [contentContainerView6 topAnchor];
    waitingReasonLabel7 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
    topAnchor2 = [waitingReasonLabel7 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v30 setActive:1];

    contentContainerView7 = [(WDSpinnerTableViewCell *)self contentContainerView];
    bottomAnchor = [contentContainerView7 bottomAnchor];
    waitingReasonLabel8 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
    bottomAnchor2 = [waitingReasonLabel8 bottomAnchor];
    v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v35 setActive:1];

    contentContainerView8 = [(WDSpinnerTableViewCell *)self contentContainerView];
    leadingAnchor = [contentContainerView8 leadingAnchor];
    waitingReasonLabel9 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
    leadingAnchor2 = [waitingReasonLabel9 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v40 setActive:1];

    spinner2 = [(WDSpinnerTableViewCell *)self spinner];
    leadingAnchor3 = [spinner2 leadingAnchor];
    waitingReasonLabel10 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
    trailingAnchor = [waitingReasonLabel10 trailingAnchor];
    v45 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
    [v45 setActive:1];

    spinner3 = [(WDSpinnerTableViewCell *)self spinner];
    trailingAnchor2 = [spinner3 trailingAnchor];
    contentContainerView9 = [(WDSpinnerTableViewCell *)self contentContainerView];
    trailingAnchor3 = [contentContainerView9 trailingAnchor];
    v50 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    [v50 setActive:1];
  }

  waitingReasonLabel11 = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
  [waitingReasonLabel11 setText:reasonCopy];
}

- (NSString)waitingReason
{
  waitingReasonLabel = [(WDSpinnerTableViewCell *)self waitingReasonLabel];
  text = [waitingReasonLabel text];

  return text;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WDSpinnerTableViewCell;
  [(WDSpinnerTableViewCell *)&v4 prepareForReuse];
  spinner = [(WDSpinnerTableViewCell *)self spinner];
  [spinner startAnimating];
}

@end