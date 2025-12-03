@interface DataTypeDetailDescriptionCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (_TtC18HealthExperienceUI29DataTypeDetailDescriptionCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation DataTypeDetailDescriptionCell

- (_TtC18HealthExperienceUI29DataTypeDetailDescriptionCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell____lazy_storage___textView) = 0;
  v3 = (self + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_textInsets);
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v3[1] = _Q0;
  v9 = self + OBJC_IVAR____TtC18HealthExperienceUI29DataTypeDetailDescriptionCell_item;
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DataTypeDetailDescriptionCell();
  v2 = v7.receiver;
  [(DataTypeDetailDescriptionCell *)&v7 layoutSubviews];
  v3 = sub_1BA152D34();
  contentView = [v2 contentView];
  [contentView bounds];
  v6 = v5;

  [v3 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = fits.width + -16.0 + -16.0;
  if (v4 < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  selfCopy = self;
  v7 = sub_1BA152D34();
  sub_1BA228B24(v5);
  v9 = v8;

  v10 = ceil(v9 + 16.0 + 16.0);
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (NSString)description
{
  selfCopy = self;
  DataTypeDetailDescriptionCell.description.getter();

  v3 = sub_1BA4A6758();

  return v3;
}

@end