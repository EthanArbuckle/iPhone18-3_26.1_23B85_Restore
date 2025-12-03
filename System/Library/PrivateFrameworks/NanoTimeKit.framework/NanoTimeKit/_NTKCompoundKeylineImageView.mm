@interface _NTKCompoundKeylineImageView
+ (id)keylineWithImage:(id)image secondaryKeylineView:(id)view;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setOverrideColor:(id)color;
- (void)setSecondaryKeylineView:(id)view;
- (void)setUsesLegibility:(BOOL)legibility;
@end

@implementation _NTKCompoundKeylineImageView

- (void)setSecondaryKeylineView:(id)view
{
  viewCopy = view;
  secondaryKeylineView = self->_secondaryKeylineView;
  if (secondaryKeylineView != viewCopy)
  {
    v9 = viewCopy;
    v6 = viewCopy;
    v7 = self->_secondaryKeylineView;
    self->_secondaryKeylineView = v6;
    v8 = secondaryKeylineView;

    [(NTKKeylineView *)v8 removeFromSuperview];
    [(_NTKCompoundKeylineImageView *)self addSubview:self->_secondaryKeylineView];

    viewCopy = v9;
  }
}

+ (id)keylineWithImage:(id)image secondaryKeylineView:(id)view
{
  viewCopy = view;
  imageCopy = image;
  v7 = [(CLKUIColoringImageView *)[_NTKCompoundKeylineImageView alloc] initWithImage:imageCopy];

  [(_NTKCompoundKeylineImageView *)v7 setSecondaryKeylineView:viewCopy];

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

- (void)setColor:(id)color
{
  v5.receiver = self;
  v5.super_class = _NTKCompoundKeylineImageView;
  colorCopy = color;
  [(_NTKKeylineImageView *)&v5 setColor:colorCopy];
  [(NTKKeylineView *)self->_secondaryKeylineView setColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)setUsesLegibility:(BOOL)legibility
{
  legibilityCopy = legibility;
  v5.receiver = self;
  v5.super_class = _NTKCompoundKeylineImageView;
  [(CLKUIColoringImageView *)&v5 setUsesLegibility:?];
  [(NTKKeylineView *)self->_secondaryKeylineView setUsesLegibility:legibilityCopy];
}

- (void)setOverrideColor:(id)color
{
  v5.receiver = self;
  v5.super_class = _NTKCompoundKeylineImageView;
  colorCopy = color;
  [(CLKUIColoringImageView *)&v5 setOverrideColor:colorCopy];
  [(NTKKeylineView *)self->_secondaryKeylineView setOverrideColor:colorCopy, v5.receiver, v5.super_class];
}

@end