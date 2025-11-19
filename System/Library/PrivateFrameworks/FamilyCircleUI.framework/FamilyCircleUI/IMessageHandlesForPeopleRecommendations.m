@interface IMessageHandlesForPeopleRecommendations
- (IMessageHandlesForPeopleRecommendations)init;
- (IMessageHandlesForPeopleRecommendations)initWithProvider:(id)a3;
- (void)getRecommendationsWith:(id)a3 completion:(id)a4;
@end

@implementation IMessageHandlesForPeopleRecommendations

- (IMessageHandlesForPeopleRecommendations)initWithProvider:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider) = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for IMessageHandleForPeopleRecommendations();
  swift_unknownObjectRetain();
  return [(IMessageHandlesForPeopleRecommendations *)&v4 init];
}

- (void)getRecommendationsWith:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_21BB3A2A4(0, &qword_27CDB8FE8, 0x277D082D8);
  v6 = sub_21BE28C3C();
  _Block_copy(v5);
  v7 = self;
  sub_21BD783C4(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (IMessageHandlesForPeopleRecommendations)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end