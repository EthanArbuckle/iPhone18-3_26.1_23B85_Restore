@interface FMFixedSizeView
- (CGSize)fixedIntrinsicSize;
- (FMFixedSizeView)initWithFrame:(CGRect)frame;
@end

@implementation FMFixedSizeView

- (FMFixedSizeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v8.receiver = self;
  v8.super_class = FMFixedSizeView;
  v5 = [(FMFixedSizeView *)&v8 initWithFrame:frame.origin.x, frame.origin.y];
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