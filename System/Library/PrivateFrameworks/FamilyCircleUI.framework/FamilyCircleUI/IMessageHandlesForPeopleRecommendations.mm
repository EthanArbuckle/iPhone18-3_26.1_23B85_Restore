@interface IMessageHandlesForPeopleRecommendations
- (IMessageHandlesForPeopleRecommendations)init;
- (IMessageHandlesForPeopleRecommendations)initWithProvider:(id)provider;
- (void)getRecommendationsWith:(id)with completion:(id)completion;
@end

@implementation IMessageHandlesForPeopleRecommendations

- (IMessageHandlesForPeopleRecommendations)initWithProvider:(id)provider
{
  *(&self->super.isa + OBJC_IVAR___IMessageHandlesForPeopleRecommendations_provider) = provider;
  v4.receiver = self;
  v4.super_class = type metadata accessor for IMessageHandleForPeopleRecommendations();
  swift_unknownObjectRetain();
  return [(IMessageHandlesForPeopleRecommendations *)&v4 init];
}

- (void)getRecommendationsWith:(id)with completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_21BB3A2A4(0, &qword_27CDB8FE8, 0x277D082D8);
  v6 = sub_21BE28C3C();
  _Block_copy(v5);
  selfCopy = self;
  sub_21BD783C4(v6, selfCopy, v5);
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