@interface MUAspectRatioLayout
- (MUAspectRatioLayout)initWithItem:(id)item aspectRatio:(double)ratio;
@end

@implementation MUAspectRatioLayout

- (MUAspectRatioLayout)initWithItem:(id)item aspectRatio:(double)ratio
{
  itemCopy = item;
  v7 = [[MUAspectRatioLayoutInternal alloc] initWithItem:itemCopy aspectRatio:ratio];

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