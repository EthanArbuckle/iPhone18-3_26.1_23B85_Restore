@interface HKMapRouteTableViewCell
- (HKMapRouteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)setUpConstraints;
- (void)setupSubviews;
@end

@implementation HKMapRouteTableViewCell

- (HKMapRouteTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = HKMapRouteTableViewCell;
  v4 = [(HKMapRouteTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HKMapRouteTableViewCell *)v4 setupSubviews];
    [(HKMapRouteTableViewCell *)v5 setUpConstraints];
  }

  return v5;
}

- (void)setupSubviews
{
  v3 = objc_opt_new();
  [(HKMapRouteTableViewCell *)self setMapView:v3];

  mapView = [(HKMapRouteTableViewCell *)self mapView];
  [mapView setDelegate:self];

  mapView2 = [(HKMapRouteTableViewCell *)self mapView];
  [mapView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HKMapRouteTableViewCell *)self contentView];
  mapView3 = [(HKMapRouteTableViewCell *)self mapView];
  [contentView addSubview:mapView3];
}

- (void)setUpConstraints
{
  contentView = [(HKMapRouteTableViewCell *)self contentView];
  topAnchor = [contentView topAnchor];
  mapView = [(HKMapRouteTableViewCell *)self mapView];
  topAnchor2 = [mapView topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v7 setActive:1];

  contentView2 = [(HKMapRouteTableViewCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  mapView2 = [(HKMapRouteTableViewCell *)self mapView];
  bottomAnchor2 = [mapView2 bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v12 setActive:1];

  contentView3 = [(HKMapRouteTableViewCell *)self contentView];
  leftAnchor = [contentView3 leftAnchor];
  mapView3 = [(HKMapRouteTableViewCell *)self mapView];
  leftAnchor2 = [mapView3 leftAnchor];
  v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v17 setActive:1];

  contentView4 = [(HKMapRouteTableViewCell *)self contentView];
  rightAnchor = [contentView4 rightAnchor];
  mapView4 = [(HKMapRouteTableViewCell *)self mapView];
  rightAnchor2 = [mapView4 rightAnchor];
  v22 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v22 setActive:1];

  mapView5 = [(HKMapRouteTableViewCell *)self mapView];
  heightAnchor = [mapView5 heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:300.0];

  LODWORD(v25) = 1132068864;
  [v26 setPriority:v25];
  [v26 setActive:1];
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  v4 = MEMORY[0x1E696F2F0];
  annotationCopy = annotation;
  v6 = [[v4 alloc] initWithAnnotation:annotationCopy reuseIdentifier:0];

  greenColor = [MEMORY[0x1E69DC888] greenColor];
  [v6 setPinTintColor:greenColor];

  return v6;
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  v4 = MEMORY[0x1E696F370];
  overlayCopy = overlay;
  v6 = [[v4 alloc] initWithOverlay:overlayCopy];

  [v6 setLineWidth:5.0];
  greenPinColor = [MEMORY[0x1E696F2F0] greenPinColor];
  [v6 setStrokeColor:greenPinColor];

  return v6;
}

@end