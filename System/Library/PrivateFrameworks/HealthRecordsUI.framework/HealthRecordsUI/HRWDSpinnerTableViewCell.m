@interface HRWDSpinnerTableViewCell
- (HRWDSpinnerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)waitingReason;
- (void)prepareForReuse;
- (void)setWaitingReason:(id)a3;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation HRWDSpinnerTableViewCell

- (HRWDSpinnerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HRWDSpinnerTableViewCell;
  v4 = [(HRWDSpinnerTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HRWDSpinnerTableViewCell *)v4 setSelectionStyle:0];
    [(HRWDSpinnerTableViewCell *)v5 setupSubviews];
    [(HRWDSpinnerTableViewCell *)v5 setupConstraints];
  }

  return v5;
}

- (void)setupSubviews
{
  v3 = objc_opt_new();
  [(HRWDSpinnerTableViewCell *)self setContentContainerView:v3];

  v4 = [(HRWDSpinnerTableViewCell *)self contentView];
  v5 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  [v4 addSubview:v5];

  v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [(HRWDSpinnerTableViewCell *)self setSpinner:v6];

  v7 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  v8 = [(HRWDSpinnerTableViewCell *)self spinner];
  [v7 addSubview:v8];

  v9 = [(HRWDSpinnerTableViewCell *)self spinner];
  [v9 setHidesWhenStopped:0];

  v10 = [(HRWDSpinnerTableViewCell *)self spinner];
  [v10 startAnimating];
}

- (void)setupConstraints
{
  v3 = [(HRWDSpinnerTableViewCell *)self contentView];
  v4 = [v3 heightAnchor];
  v48 = [v4 constraintGreaterThanOrEqualToConstant:*MEMORY[0x1E69DE3D8]];

  LODWORD(v5) = 1132068864;
  [v48 setPriority:v5];
  [v48 setActive:1];
  v6 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  v8 = [v7 centerXAnchor];
  v9 = [(HRWDSpinnerTableViewCell *)self contentView];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  v13 = [v12 centerYAnchor];
  v14 = [(HRWDSpinnerTableViewCell *)self contentView];
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  v18 = [v17 leadingAnchor];
  v19 = [(HRWDSpinnerTableViewCell *)self contentView];
  v20 = [v19 leadingAnchor];
  v21 = [v18 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v20 multiplier:1.0];
  [v21 setActive:1];

  v22 = [(HRWDSpinnerTableViewCell *)self contentView];
  v23 = [v22 trailingAnchor];
  v24 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  v25 = [v24 trailingAnchor];
  v26 = [v23 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v25 multiplier:1.0];
  [v26 setActive:1];

  v27 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  v28 = [v27 topAnchor];
  v29 = [(HRWDSpinnerTableViewCell *)self contentView];
  v30 = [v29 topAnchor];
  v31 = [v28 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v30 multiplier:1.0];
  [v31 setActive:1];

  v32 = [(HRWDSpinnerTableViewCell *)self contentView];
  v33 = [v32 bottomAnchor];
  v34 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v35 multiplier:1.0];
  [v36 setActive:1];

  v37 = [(HRWDSpinnerTableViewCell *)self spinner];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

  v38 = [(HRWDSpinnerTableViewCell *)self spinner];
  v39 = [v38 centerXAnchor];
  v40 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  v41 = [v40 centerXAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [(HRWDSpinnerTableViewCell *)self spinner];
  v44 = [v43 centerYAnchor];
  v45 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
  v46 = [v45 centerYAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  [v47 setActive:1];
}

- (void)setWaitingReason:(id)a3
{
  v4 = a3;
  v5 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];

  if (!v5)
  {
    v6 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
    v7 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
    v8 = [v7 constraints];
    [v6 removeConstraints:v8];

    v9 = objc_opt_new();
    [(HRWDSpinnerTableViewCell *)self setWaitingReasonLabel:v9];

    v10 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
    [v10 setNumberOfLines:0];

    v11 = [MEMORY[0x1E69DC888] lightGrayColor];
    v12 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
    [v12 setTextColor:v11];

    v13 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
    v15 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
    [v14 addSubview:v15];

    v16 = [(HRWDSpinnerTableViewCell *)self spinner];
    v17 = [v16 centerYAnchor];
    v18 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
    v19 = [v18 centerYAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
    v22 = [v21 centerYAnchor];
    v23 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
    v24 = [v23 centerYAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
    v27 = [v26 topAnchor];
    v28 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
    v29 = [v28 topAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
    v32 = [v31 bottomAnchor];
    v33 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
    v34 = [v33 bottomAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    v36 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
    v37 = [v36 leadingAnchor];
    v38 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
    v39 = [v38 leadingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    [v40 setActive:1];

    v41 = [(HRWDSpinnerTableViewCell *)self spinner];
    v42 = [v41 leadingAnchor];
    v43 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
    v44 = [v43 trailingAnchor];
    v45 = [v42 constraintEqualToSystemSpacingAfterAnchor:v44 multiplier:1.0];
    [v45 setActive:1];

    v46 = [(HRWDSpinnerTableViewCell *)self spinner];
    v47 = [v46 trailingAnchor];
    v48 = [(HRWDSpinnerTableViewCell *)self contentContainerView];
    v49 = [v48 trailingAnchor];
    v50 = [v47 constraintEqualToAnchor:v49];
    [v50 setActive:1];
  }

  v51 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
  [v51 setText:v4];
}

- (NSString)waitingReason
{
  v2 = [(HRWDSpinnerTableViewCell *)self waitingReasonLabel];
  v3 = [v2 text];

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HRWDSpinnerTableViewCell;
  [(HRWDSpinnerTableViewCell *)&v4 prepareForReuse];
  v3 = [(HRWDSpinnerTableViewCell *)self spinner];
  [v3 startAnimating];
}

@end