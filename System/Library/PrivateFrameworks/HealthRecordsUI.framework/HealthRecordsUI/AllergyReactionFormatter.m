@interface AllergyReactionFormatter
- (_TtC15HealthRecordsUI24AllergyReactionFormatter)init;
- (id)displayItemsFromReaction:(id)a3 country:(id)a4;
@end

@implementation AllergyReactionFormatter

- (id)displayItemsFromReaction:(id)a3 country:(id)a4
{
  if (*(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI24AllergyReactionFormatter_context) >= 2)
  {
    v9 = a3;
    v10 = self;
    result = sub_1D139169C();
    __break(1u);
  }

  else
  {
    v5 = a3;
    v6 = self;
    sub_1D1227904(v5);

    sub_1D106F934(0, &qword_1EC609BE8);
    v7 = sub_1D139044C();

    return v7;
  }

  return result;
}

- (_TtC15HealthRecordsUI24AllergyReactionFormatter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end