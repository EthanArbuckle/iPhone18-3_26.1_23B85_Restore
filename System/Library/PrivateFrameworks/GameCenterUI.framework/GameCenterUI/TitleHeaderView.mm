@interface TitleHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (_TtC12GameCenterUI11ArtworkView)iconArtworkView;
- (id)accessoryView;
- (id)titleLabel;
- (void)didTapWithAccessoryView:(id)view;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessoryView:(id)view;
- (void)setIconArtworkView:(id)view;
@end

@implementation TitleHeaderView

- (id)titleLabel
{
  v0 = sub_24E280728();

  return v0;
}

- (id)accessoryView
{
  v0 = sub_24E280738();

  return v0;
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24E27E748(view);
}

- (_TtC12GameCenterUI11ArtworkView)iconArtworkView
{
  v2 = sub_24E27E954();

  return v2;
}

- (void)setIconArtworkView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24E27E9E0(view);
}

- (void)didTapWithAccessoryView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24E27ED8C(viewCopy);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_24E27EE94(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E27F26C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24E280308();
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_24E280460();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24E347CB8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccessibilityLabel:(id)label
{
  if (label)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_24E2806B8(v4, v6);
}

@end