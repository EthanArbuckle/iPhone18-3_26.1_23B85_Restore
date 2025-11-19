@interface TitleHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (_TtC12GameCenterUI11ArtworkView)iconArtworkView;
- (id)accessoryView;
- (id)titleLabel;
- (void)didTapWithAccessoryView:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessoryView:(id)a3;
- (void)setIconArtworkView:(id)a3;
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

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E27E748(a3);
}

- (_TtC12GameCenterUI11ArtworkView)iconArtworkView
{
  v2 = sub_24E27E954();

  return v2;
}

- (void)setIconArtworkView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E27E9E0(a3);
}

- (void)didTapWithAccessoryView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E27ED8C(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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
  v2 = self;
  sub_24E27F26C();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_24E280308();
}

- (NSString)accessibilityLabel
{
  v2 = self;
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

- (void)setAccessibilityLabel:(id)a3
{
  if (a3)
  {
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_24E2806B8(v4, v6);
}

@end