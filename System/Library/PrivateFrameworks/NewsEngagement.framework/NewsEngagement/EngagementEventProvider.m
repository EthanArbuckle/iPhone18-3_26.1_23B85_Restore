@interface EngagementEventProvider
- (_TtC14NewsEngagement23EngagementEventProvider)init;
- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
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

- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_25BEB4884();
  v13 = v12;
  v14 = sub_25BEB4884();
  v16 = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_25BE97080(a4, v11, v13, v14, v16);
  _Block_release(v10);
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v9 = sub_25BEB4884();
  v11 = v10;
  v12 = sub_25BEB4884();
  v14 = v13;
  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_25BE973D4(a4, v9, v11, v12, v14);
}

@end