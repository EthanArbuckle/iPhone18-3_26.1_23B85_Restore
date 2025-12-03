@interface GridView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation GridView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GridView();
  v2 = v3.receiver;
  [(GridView *)&v3 layoutSubviews];
  GridView.updateLayout(animated:)(0);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = GridView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

@end