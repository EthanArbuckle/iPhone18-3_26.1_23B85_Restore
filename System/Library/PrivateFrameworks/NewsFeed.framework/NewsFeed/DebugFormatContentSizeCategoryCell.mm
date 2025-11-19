@interface DebugFormatContentSizeCategoryCell
- (_TtC8NewsFeed34DebugFormatContentSizeCategoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)onValueChangeWithSlider:(id)a3;
- (void)prepareForReuse;
@end

@implementation DebugFormatContentSizeCategoryCell

- (_TtC8NewsFeed34DebugFormatContentSizeCategoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D6E96D3C(a3, a4, v6);
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(DebugFormatContentSizeCategoryCell *)&v5 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_onChangeBlock];
  v4 = *&v2[OBJC_IVAR____TtC8NewsFeed34DebugFormatContentSizeCategoryCell_onChangeBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  sub_1D613694C(v4);
}

- (void)onValueChangeWithSlider:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6E97520(v4);
}

@end