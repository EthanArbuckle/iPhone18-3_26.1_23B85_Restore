@interface LabelAndImageView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (void)layoutSubviews;
@end

@implementation LabelAndImageView

- (void)layoutSubviews
{
  v2 = self;
  sub_1B9FE85C4();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  sub_1B9FE8A58(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_1B9FE8CA4();

  v3 = sub_1BA4A6758();

  return v3;
}

@end