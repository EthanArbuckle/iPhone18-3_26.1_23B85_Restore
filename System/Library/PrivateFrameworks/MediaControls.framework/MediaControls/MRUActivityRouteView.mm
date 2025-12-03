@interface MRUActivityRouteView
- (CGSize)intrinsicContentSize;
- (MRUActivityRouteView)initWithFrame:(CGRect)frame;
- (void)setSide:(double)side;
- (void)setSideConstraintActive:(BOOL)active;
- (void)setupConstraints;
@end

@implementation MRUActivityRouteView

- (MRUActivityRouteView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = MRUActivityRouteView;
  v3 = [(MRUActivityRouteView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(MRUActivityRouteView *)v3 setTintColor:whiteColor];

    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(UIImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v5 setContentMode:1];
    [(MRUActivityRouteView *)v3 addSubview:v5];
    deviceIconView = v3->_deviceIconView;
    v3->_deviceIconView = v5;
    v7 = v5;

    v8 = objc_alloc_init(MRUActivityArtworkView);
    [(MRUActivityArtworkView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MRUArtworkView *)v8 setStyle:7];
    [(MRUActivityRouteView *)v3 addSubview:v8];
    artworkView = v3->_artworkView;
    v3->_artworkView = v8;

    [(MRUActivityRouteView *)v3 setupConstraints];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  side = self->_side;
  if (fabs(side) <= 2.22044605e-16)
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = MRUActivityRouteView;
    [(MRUActivityRouteView *)&v6 intrinsicContentSize];
  }

  else
  {
    v5 = self->_side;
  }

  result.height = v5;
  result.width = side;
  return result;
}

- (void)setSide:(double)side
{
  if (vabdd_f64(self->_side, side) > 2.22044605e-16)
  {
    self->_side = side;
    [(NSLayoutConstraint *)self->_deviceIconViewWidthConstraint setConstant:?];

    [(MRUActivityRouteView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setSideConstraintActive:(BOOL)active
{
  if (self->_sideConstraintActive != active)
  {
    v26 = v8;
    v27 = v7;
    v28 = v6;
    v29 = v5;
    v30 = v4;
    v31 = v3;
    activeCopy = active;
    self->_sideConstraintActive = active;
    if (active && !self->_deviceIconViewWidthConstraint)
    {
      deviceIconView = [(MRUActivityRouteView *)self deviceIconView];
      widthAnchor = [deviceIconView widthAnchor];
      v17 = [widthAnchor constraintEqualToConstant:self->_side];
      deviceIconViewWidthConstraint = self->_deviceIconViewWidthConstraint;
      self->_deviceIconViewWidthConstraint = v17;

      deviceIconView2 = [(MRUActivityRouteView *)self deviceIconView];
      widthAnchor2 = [deviceIconView2 widthAnchor];
      deviceIconView3 = [(MRUActivityRouteView *)self deviceIconView];
      heightAnchor = [deviceIconView3 heightAnchor];
      v23 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
      deviceIconViewHeightConstraint = self->_deviceIconViewHeightConstraint;
      self->_deviceIconViewHeightConstraint = v23;
    }

    [(NSLayoutConstraint *)self->_deviceIconViewWidthConstraint setActive:activeCopy, v10, v9, v26, v27, v28, v29, v30, v31, v11];
    v25 = self->_deviceIconViewHeightConstraint;

    [(NSLayoutConstraint *)v25 setActive:activeCopy];
  }
}

- (void)setupConstraints
{
  v38[8] = *MEMORY[0x1E69E9840];
  v23 = MEMORY[0x1E696ACD8];
  deviceIconView = [(MRUActivityRouteView *)self deviceIconView];
  leadingAnchor = [deviceIconView leadingAnchor];
  leadingAnchor2 = [(MRUActivityRouteView *)self leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v34;
  deviceIconView2 = [(MRUActivityRouteView *)self deviceIconView];
  trailingAnchor = [deviceIconView2 trailingAnchor];
  trailingAnchor2 = [(MRUActivityRouteView *)self trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[1] = v30;
  deviceIconView3 = [(MRUActivityRouteView *)self deviceIconView];
  topAnchor = [deviceIconView3 topAnchor];
  topAnchor2 = [(MRUActivityRouteView *)self topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[2] = v26;
  deviceIconView4 = [(MRUActivityRouteView *)self deviceIconView];
  bottomAnchor = [deviceIconView4 bottomAnchor];
  bottomAnchor2 = [(MRUActivityRouteView *)self bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v21;
  artworkView = [(MRUActivityRouteView *)self artworkView];
  trailingAnchor3 = [artworkView trailingAnchor];
  trailingAnchor4 = [(MRUActivityRouteView *)self trailingAnchor];
  v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v38[4] = v17;
  artworkView2 = [(MRUActivityRouteView *)self artworkView];
  bottomAnchor3 = [artworkView2 bottomAnchor];
  bottomAnchor4 = [(MRUActivityRouteView *)self bottomAnchor];
  v13 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v38[5] = v13;
  artworkView3 = [(MRUActivityRouteView *)self artworkView];
  heightAnchor = [artworkView3 heightAnchor];
  artworkView4 = [(MRUActivityRouteView *)self artworkView];
  widthAnchor = [artworkView4 widthAnchor];
  v7 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  v38[6] = v7;
  artworkView5 = [(MRUActivityRouteView *)self artworkView];
  widthAnchor2 = [artworkView5 widthAnchor];
  widthAnchor3 = [(MRUActivityRouteView *)self widthAnchor];
  v11 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:0.4];
  v38[7] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:8];
  [v23 activateConstraints:v12];
}

@end