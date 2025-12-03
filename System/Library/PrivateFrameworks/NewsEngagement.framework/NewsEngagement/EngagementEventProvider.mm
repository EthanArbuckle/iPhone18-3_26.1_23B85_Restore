@interface EngagementEventProvider
- (_TtC14NewsEngagement23EngagementEventProvider)init;
- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
@end

@implementation EngagementEventProvider

- (_TtC14NewsEngagement23EngagementEventProvider)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_observersStore) = MEMORY[0x277D84F98];
  v4 = OBJC_IVAR____TtC14NewsEngagement23EngagementEventProvider_engagement;
  *(&self->super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(EngagementEventProvider *)&v6 init];
}

- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = sub_25BEB4884();
  v13 = v12;
  v14 = sub_25BEB4884();
  v16 = v15;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_25BE97080(request, v11, v13, v14, v16);
  _Block_release(v10);
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = sub_25BEB4884();
  v11 = v10;
  v12 = sub_25BEB4884();
  v14 = v13;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_25BE973D4(request, v9, v11, v12, v14);
}

@end