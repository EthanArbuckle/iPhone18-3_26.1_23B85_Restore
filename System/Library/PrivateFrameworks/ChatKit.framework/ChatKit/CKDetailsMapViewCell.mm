@interface CKDetailsMapViewCell
- (CKDetailsMapViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setLocationStringView:(id)view;
- (void)setMapView:(id)view;
@end

@implementation CKDetailsMapViewCell

- (CKDetailsMapViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CKDetailsMapViewCell;
  v4 = [(CKDetailsCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsMapViewCell *)v4 setSelectionStyle:0];
  }

  return v5;
}

- (void)setMapView:(id)view
{
  viewCopy = view;
  if (self->_mapView != viewCopy)
  {
    objc_storeStrong(&self->_mapView, view);
    contentView = [(CKDetailsMapViewCell *)self contentView];
    [contentView addSubview:self->_mapView];

    if (CKIsRunningInMacCatalyst())
    {
      layer = [(UIView *)self->_mapView layer];
      [layer setCornerRadius:4.0];

      layer2 = [(UIView *)self->_mapView layer];
      [layer2 setMasksToBounds:1];
    }
  }
}

- (void)setLocationStringView:(id)view
{
  viewCopy = view;
  if (self->_locationStringView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_locationStringView, view);
    [(CKDetailsMapViewCell *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CKDetailsMapViewCell;
  [(CKDetailsCell *)&v26 layoutSubviews];
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];

  contentView = [(CKDetailsMapViewCell *)self contentView];
  [contentView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  bottomSeperator2 = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator2 setHidden:1];

  mapView = [(CKDetailsMapViewCell *)self mapView];
  [mapView setFrame:{v7, v9, v11, v13}];

  if (self->_shouldShowLocationString)
  {
    locationStringView = [(CKDetailsMapViewCell *)self locationStringView];
    [locationStringView frame];

    [(CKDetailsMapViewCell *)self bounds];
    v18 = v17;
    [(CKDetailsMapViewCell *)self bounds];
    v20 = v19 + -44.0;
    if (CKMainScreenScale_once_27 != -1)
    {
      [CKDetailsMapViewCell layoutSubviews];
    }

    v21 = *&CKMainScreenScale_sMainScreenScale_27;
    if (*&CKMainScreenScale_sMainScreenScale_27 == 0.0)
    {
      v21 = 1.0;
    }

    v22 = floor(v18 * v21) / v21;
    v23 = floor(v20 * v21) / v21;
    [(CKDetailsMapViewCell *)self bounds];
    [(CKDetailsLocationStringCell *)self->_locationStringView setFrame:v22, v23];
    contentView2 = [(CKDetailsMapViewCell *)self contentView];
    [contentView2 addSubview:self->_locationStringView];

    contentView3 = [(CKDetailsMapViewCell *)self contentView];
    [contentView3 bringSubviewToFront:self->_locationStringView];
  }
}

@end