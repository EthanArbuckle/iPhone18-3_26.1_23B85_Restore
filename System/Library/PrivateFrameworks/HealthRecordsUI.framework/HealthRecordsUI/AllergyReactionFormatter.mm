@interface AllergyReactionFormatter
- (_TtC15HealthRecordsUI24AllergyReactionFormatter)init;
- (id)displayItemsFromReaction:(id)reaction country:(id)country;
@end

@implementation AllergyReactionFormatter

- (id)displayItemsFromReaction:(id)reaction country:(id)country
{
  if (*(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI24AllergyReactionFormatter_context) >= 2)
  {
    reactionCopy = reaction;
    selfCopy = self;
    result = sub_1D139169C();
    __break(1u);
  }

  else
  {
    reactionCopy2 = reaction;
    selfCopy2 = self;
    sub_1D1227904(reactionCopy2);

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