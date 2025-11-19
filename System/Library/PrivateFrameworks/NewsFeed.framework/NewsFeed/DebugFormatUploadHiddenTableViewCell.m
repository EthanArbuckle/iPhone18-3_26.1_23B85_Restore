@interface DebugFormatUploadHiddenTableViewCell
- (_TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell)initWithCoder:(id)a3;
- (_TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation DebugFormatUploadHiddenTableViewCell

- (_TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = sub_1D726207C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1D7055A8C(v4, v5);
}

- (_TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_button;
  *(&self->super.super.super.super.isa + v4) = [objc_opt_self() buttonWithType_];
  v5 = OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_onTap;
  sub_1D5BFDBB4();
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(v6) init];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(DebugFormatUploadHiddenTableViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed36DebugFormatUploadHiddenTableViewCell_button];
  v4 = [v2 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(DebugFormatUploadHiddenTableViewCell *)&v3 prepareForReuse];
}

@end