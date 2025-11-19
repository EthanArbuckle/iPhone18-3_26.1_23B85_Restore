@interface CKDetailsMapViewCell
- (CKDetailsMapViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setLocationStringView:(id)a3;
- (void)setMapView:(id)a3;
@end

@implementation CKDetailsMapViewCell

- (CKDetailsMapViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKDetailsMapViewCell;
  v4 = [(CKDetailsCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsMapViewCell *)v4 setSelectionStyle:0];
  }

  return v5;
}

- (void)setMapView:(id)a3
{
  v8 = a3;
  if (self->_mapView != v8)
  {
    objc_storeStrong(&self->_mapView, a3);
    v5 = [(CKDetailsMapViewCell *)self contentView];
    [v5 addSubview:self->_mapView];

    if (CKIsRunningInMacCatalyst())
    {
      v6 = [(UIView *)self->_mapView layer];
      [v6 setCornerRadius:4.0];

      v7 = [(UIView *)self->_mapView layer];
      [v7 setMasksToBounds:1];
    }
  }
}

- (void)setLocationStringView:(id)a3
{
  v5 = a3;
  if (self->_locationStringView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_locationStringView, a3);
    [(CKDetailsMapViewCell *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CKDetailsMapViewCell;
  [(CKDetailsCell *)&v26 layoutSubviews];
  v3 = [(CKDetailsCell *)self topSeperator];
  [v3 setHidden:1];

  v4 = [(CKDetailsCell *)self bottomSeperator];
  [v4 setHidden:1];

  v5 = [(CKDetailsMapViewCell *)self contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CKDetailsCell *)self bottomSeperator];
  [v14 setHidden:1];

  v15 = [(CKDetailsMapViewCell *)self mapView];
  [v15 setFrame:{v7, v9, v11, v13}];

  if (self->_shouldShowLocationString)
  {
    v16 = [(CKDetailsMapViewCell *)self locationStringView];
    [v16 frame];

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
    v24 = [(CKDetailsMapViewCell *)self contentView];
    [v24 addSubview:self->_locationStringView];

    v25 = [(CKDetailsMapViewCell *)self contentView];
    [v25 bringSubviewToFront:self->_locationStringView];
  }
}

@end