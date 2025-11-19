@interface _NTKCompoundKeylineImageView
+ (id)keylineWithImage:(id)a3 secondaryKeylineView:(id)a4;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setOverrideColor:(id)a3;
- (void)setSecondaryKeylineView:(id)a3;
- (void)setUsesLegibility:(BOOL)a3;
@end

@implementation _NTKCompoundKeylineImageView

- (void)setSecondaryKeylineView:(id)a3
{
  v4 = a3;
  secondaryKeylineView = self->_secondaryKeylineView;
  if (secondaryKeylineView != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_secondaryKeylineView;
    self->_secondaryKeylineView = v6;
    v8 = secondaryKeylineView;

    [(NTKKeylineView *)v8 removeFromSuperview];
    [(_NTKCompoundKeylineImageView *)self addSubview:self->_secondaryKeylineView];

    v4 = v9;
  }
}

+ (id)keylineWithImage:(id)a3 secondaryKeylineView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(CLKUIColoringImageView *)[_NTKCompoundKeylineImageView alloc] initWithImage:v6];

  [(_NTKCompoundKeylineImageView *)v7 setSecondaryKeylineView:v5];

  return v7;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = _NTKCompoundKeylineImageView;
  [(_NTKCompoundKeylineImageView *)&v7 layoutSubviews];
  [(NTKKeylineView *)self->_secondaryKeylineView sizeToFit];
  secondaryKeylineView = self->_secondaryKeylineView;
  [(_NTKCompoundKeylineImageView *)self bounds];
  v5 = v4 * 0.5;
  [(_NTKCompoundKeylineImageView *)self bounds];
  [(NTKKeylineView *)secondaryKeylineView setCenter:v5, v6 * 0.5];
}

- (void)setColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = _NTKCompoundKeylineImageView;
  v4 = a3;
  [(_NTKKeylineImageView *)&v5 setColor:v4];
  [(NTKKeylineView *)self->_secondaryKeylineView setColor:v4, v5.receiver, v5.super_class];
}

- (void)setUsesLegibility:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _NTKCompoundKeylineImageView;
  [(CLKUIColoringImageView *)&v5 setUsesLegibility:?];
  [(NTKKeylineView *)self->_secondaryKeylineView setUsesLegibility:v3];
}

- (void)setOverrideColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = _NTKCompoundKeylineImageView;
  v4 = a3;
  [(CLKUIColoringImageView *)&v5 setOverrideColor:v4];
  [(NTKKeylineView *)self->_secondaryKeylineView setOverrideColor:v4, v5.receiver, v5.super_class];
}

@end