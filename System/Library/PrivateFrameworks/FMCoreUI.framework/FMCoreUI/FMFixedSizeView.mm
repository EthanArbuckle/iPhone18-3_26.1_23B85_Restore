@interface FMFixedSizeView
- (CGSize)fixedIntrinsicSize;
- (FMFixedSizeView)initWithFrame:(CGRect)a3;
@end

@implementation FMFixedSizeView

- (FMFixedSizeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = FMFixedSizeView;
  v5 = [(FMFixedSizeView *)&v8 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    [(FMFixedSizeView *)v5 setFixedIntrinsicSize:width, height];
  }

  return v6;
}

- (CGSize)fixedIntrinsicSize
{
  width = self->_fixedIntrinsicSize.width;
  height = self->_fixedIntrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end