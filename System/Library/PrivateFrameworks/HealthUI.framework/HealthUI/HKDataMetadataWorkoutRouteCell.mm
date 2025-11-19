@interface HKDataMetadataWorkoutRouteCell
- (HKDataMetadataWorkoutRouteCell)init;
- (HKDataMetadataWorkoutRouteCellDelegate)delegate;
- (void)_handleDidUpdateTraitCollection;
- (void)setRouteImage:(id)a3;
- (void)setupConstraints;
@end

@implementation HKDataMetadataWorkoutRouteCell

- (HKDataMetadataWorkoutRouteCell)init
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = HKDataMetadataWorkoutRouteCell;
  v2 = [(HKDataMetadataWorkoutRouteCell *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    routeImageView = v2->_routeImageView;
    v2->_routeImageView = v3;

    [(UIImageView *)v2->_routeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicator = v2->_activityIndicator;
    v2->_activityIndicator = v5;

    [(UIActivityIndicatorView *)v2->_activityIndicator startAnimating];
    [(UIActivityIndicatorView *)v2->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(HKDataMetadataWorkoutRouteCell *)v2 contentView];
    [v7 addSubview:v2->_routeImageView];

    v8 = [(HKDataMetadataWorkoutRouteCell *)v2 contentView];
    [v8 addSubview:v2->_activityIndicator];

    [(HKDataMetadataWorkoutRouteCell *)v2 setupConstraints];
    v13[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(HKDataMetadataWorkoutRouteCell *)v2 registerForTraitChanges:v9 withAction:sel__handleDidUpdateTraitCollection];
  }

  return v2;
}

- (void)setupConstraints
{
  v3 = [(UIImageView *)self->_routeImageView topAnchor];
  v4 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  [v6 setActive:1];

  v7 = [(UIImageView *)self->_routeImageView leftAnchor];
  v8 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  v9 = [v8 leftAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [(UIImageView *)self->_routeImageView bottomAnchor];
  v12 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(UIImageView *)self->_routeImageView rightAnchor];
  v16 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  v17 = [v16 rightAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
  v20 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  v21 = [v20 centerXAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  v23 = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
  v24 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  v25 = [v24 centerYAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  v28 = [v27 heightAnchor];
  v29 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  v30 = [v29 widthAnchor];
  v31 = [v28 constraintEqualToAnchor:v30 multiplier:0.66];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v31;

  v33 = self->_heightConstraint;

  [(NSLayoutConstraint *)v33 setActive:1];
}

- (void)setRouteImage:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HKDataMetadataWorkoutRouteCell *)self activityIndicator];
    [v5 stopAnimating];

    v6 = [(HKDataMetadataWorkoutRouteCell *)self routeImageView];
    [v6 setImage:v4];

    v7 = [(HKDataMetadataWorkoutRouteCell *)self routeImageView];
    [v7 setContentMode:2];
  }
}

- (void)_handleDidUpdateTraitCollection
{
  v4 = [(HKDataMetadataWorkoutRouteCell *)self delegate];
  v3 = [(HKDataMetadataWorkoutRouteCell *)self traitCollection];
  [v4 workoutRouteCell:self didUpdateTraitCollection:v3];
}

- (HKDataMetadataWorkoutRouteCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end