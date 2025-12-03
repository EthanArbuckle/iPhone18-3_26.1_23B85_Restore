@interface InteractionResultDetailEducationCell
- (_TtC19HealthMedicationsUI36InteractionResultDetailEducationCell)initWithCoder:(id)coder;
- (void)awakeFromNib;
@end

@implementation InteractionResultDetailEducationCell

- (_TtC19HealthMedicationsUI36InteractionResultDetailEducationCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___stackView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI36InteractionResultDetailEducationCell____lazy_storage___attributionLabel) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for InteractionResultDetailEducationCell();
  [(InteractionResultDetailEducationCell *)&v2 awakeFromNib];
}

@end