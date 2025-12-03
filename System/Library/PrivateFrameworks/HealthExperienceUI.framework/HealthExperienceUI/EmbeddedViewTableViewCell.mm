@interface EmbeddedViewTableViewCell
- (_TtC18HealthExperienceUI25EmbeddedViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation EmbeddedViewTableViewCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1BA161C28();
}

- (_TtC18HealthExperienceUI25EmbeddedViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25EmbeddedViewTableViewCell_embeddedViewController) = 0;
  if (v7)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for EmbeddedViewTableViewCell();
  v10 = [(EmbeddedViewTableViewCell *)&v12 initWithStyle:style reuseIdentifier:v9];

  return v10;
}

@end