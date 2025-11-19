@interface MUAspectRatioLayout
- (MUAspectRatioLayout)initWithItem:(id)a3 aspectRatio:(double)a4;
@end

@implementation MUAspectRatioLayout

- (MUAspectRatioLayout)initWithItem:(id)a3 aspectRatio:(double)a4
{
  v6 = a3;
  v7 = [[MUAspectRatioLayoutInternal alloc] initWithItem:v6 aspectRatio:a4];

  v11.receiver = self;
  v11.super_class = MUAspectRatioLayout;
  v8 = [(MUConstraintLayout *)&v11 initWithInternal:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, v7);
  }

  return v9;
}

@end