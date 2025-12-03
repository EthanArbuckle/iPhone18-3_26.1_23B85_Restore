@interface HKDataMetadataWorkoutRouteCell
- (HKDataMetadataWorkoutRouteCell)init;
- (HKDataMetadataWorkoutRouteCellDelegate)delegate;
- (void)_handleDidUpdateTraitCollection;
- (void)setRouteImage:(id)image;
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
    contentView = [(HKDataMetadataWorkoutRouteCell *)v2 contentView];
    [contentView addSubview:v2->_routeImageView];

    contentView2 = [(HKDataMetadataWorkoutRouteCell *)v2 contentView];
    [contentView2 addSubview:v2->_activityIndicator];

    [(HKDataMetadataWorkoutRouteCell *)v2 setupConstraints];
    v13[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(HKDataMetadataWorkoutRouteCell *)v2 registerForTraitChanges:v9 withAction:sel__handleDidUpdateTraitCollection];
  }

  return v2;
}

- (void)setupConstraints
{
  topAnchor = [(UIImageView *)self->_routeImageView topAnchor];
  contentView = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v6 setActive:1];

  leftAnchor = [(UIImageView *)self->_routeImageView leftAnchor];
  contentView2 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  leftAnchor2 = [contentView2 leftAnchor];
  v10 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v10 setActive:1];

  bottomAnchor = [(UIImageView *)self->_routeImageView bottomAnchor];
  contentView3 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v14 setActive:1];

  rightAnchor = [(UIImageView *)self->_routeImageView rightAnchor];
  contentView4 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  rightAnchor2 = [contentView4 rightAnchor];
  v18 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v18 setActive:1];

  centerXAnchor = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
  contentView5 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  centerXAnchor2 = [contentView5 centerXAnchor];
  v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v22 setActive:1];

  centerYAnchor = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
  contentView6 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  centerYAnchor2 = [contentView6 centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v26 setActive:1];

  contentView7 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  heightAnchor = [contentView7 heightAnchor];
  contentView8 = [(HKDataMetadataWorkoutRouteCell *)self contentView];
  widthAnchor = [contentView8 widthAnchor];
  v31 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:0.66];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v31;

  v33 = self->_heightConstraint;

  [(NSLayoutConstraint *)v33 setActive:1];
}

- (void)setRouteImage:(id)image
{
  if (image)
  {
    imageCopy = image;
    activityIndicator = [(HKDataMetadataWorkoutRouteCell *)self activityIndicator];
    [activityIndicator stopAnimating];

    routeImageView = [(HKDataMetadataWorkoutRouteCell *)self routeImageView];
    [routeImageView setImage:imageCopy];

    routeImageView2 = [(HKDataMetadataWorkoutRouteCell *)self routeImageView];
    [routeImageView2 setContentMode:2];
  }
}

- (void)_handleDidUpdateTraitCollection
{
  delegate = [(HKDataMetadataWorkoutRouteCell *)self delegate];
  traitCollection = [(HKDataMetadataWorkoutRouteCell *)self traitCollection];
  [delegate workoutRouteCell:self didUpdateTraitCollection:traitCollection];
}

- (HKDataMetadataWorkoutRouteCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end