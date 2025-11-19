@interface MRUActivityRouteView
- (CGSize)intrinsicContentSize;
- (MRUActivityRouteView)initWithFrame:(CGRect)a3;
- (void)setSide:(double)a3;
- (void)setSideConstraintActive:(BOOL)a3;
- (void)setupConstraints;
@end

@implementation MRUActivityRouteView

- (MRUActivityRouteView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = MRUActivityRouteView;
  v3 = [(MRUActivityRouteView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    [(MRUActivityRouteView *)v3 setTintColor:v4];

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

- (void)setSide:(double)a3
{
  if (vabdd_f64(self->_side, a3) > 2.22044605e-16)
  {
    self->_side = a3;
    [(NSLayoutConstraint *)self->_deviceIconViewWidthConstraint setConstant:?];

    [(MRUActivityRouteView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setSideConstraintActive:(BOOL)a3
{
  if (self->_sideConstraintActive != a3)
  {
    v26 = v8;
    v27 = v7;
    v28 = v6;
    v29 = v5;
    v30 = v4;
    v31 = v3;
    v13 = a3;
    self->_sideConstraintActive = a3;
    if (a3 && !self->_deviceIconViewWidthConstraint)
    {
      v15 = [(MRUActivityRouteView *)self deviceIconView];
      v16 = [v15 widthAnchor];
      v17 = [v16 constraintEqualToConstant:self->_side];
      deviceIconViewWidthConstraint = self->_deviceIconViewWidthConstraint;
      self->_deviceIconViewWidthConstraint = v17;

      v19 = [(MRUActivityRouteView *)self deviceIconView];
      v20 = [v19 widthAnchor];
      v21 = [(MRUActivityRouteView *)self deviceIconView];
      v22 = [v21 heightAnchor];
      v23 = [v20 constraintEqualToAnchor:v22];
      deviceIconViewHeightConstraint = self->_deviceIconViewHeightConstraint;
      self->_deviceIconViewHeightConstraint = v23;
    }

    [(NSLayoutConstraint *)self->_deviceIconViewWidthConstraint setActive:v13, v10, v9, v26, v27, v28, v29, v30, v31, v11];
    v25 = self->_deviceIconViewHeightConstraint;

    [(NSLayoutConstraint *)v25 setActive:v13];
  }
}

- (void)setupConstraints
{
  v38[8] = *MEMORY[0x1E69E9840];
  v23 = MEMORY[0x1E696ACD8];
  v37 = [(MRUActivityRouteView *)self deviceIconView];
  v36 = [v37 leadingAnchor];
  v35 = [(MRUActivityRouteView *)self leadingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v38[0] = v34;
  v33 = [(MRUActivityRouteView *)self deviceIconView];
  v32 = [v33 trailingAnchor];
  v31 = [(MRUActivityRouteView *)self trailingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v38[1] = v30;
  v29 = [(MRUActivityRouteView *)self deviceIconView];
  v28 = [v29 topAnchor];
  v27 = [(MRUActivityRouteView *)self topAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v38[2] = v26;
  v25 = [(MRUActivityRouteView *)self deviceIconView];
  v24 = [v25 bottomAnchor];
  v22 = [(MRUActivityRouteView *)self bottomAnchor];
  v21 = [v24 constraintEqualToAnchor:v22];
  v38[3] = v21;
  v20 = [(MRUActivityRouteView *)self artworkView];
  v19 = [v20 trailingAnchor];
  v18 = [(MRUActivityRouteView *)self trailingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v38[4] = v17;
  v16 = [(MRUActivityRouteView *)self artworkView];
  v15 = [v16 bottomAnchor];
  v14 = [(MRUActivityRouteView *)self bottomAnchor];
  v13 = [v15 constraintEqualToAnchor:v14];
  v38[5] = v13;
  v3 = [(MRUActivityRouteView *)self artworkView];
  v4 = [v3 heightAnchor];
  v5 = [(MRUActivityRouteView *)self artworkView];
  v6 = [v5 widthAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v38[6] = v7;
  v8 = [(MRUActivityRouteView *)self artworkView];
  v9 = [v8 widthAnchor];
  v10 = [(MRUActivityRouteView *)self widthAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 multiplier:0.4];
  v38[7] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:8];
  [v23 activateConstraints:v12];
}

@end