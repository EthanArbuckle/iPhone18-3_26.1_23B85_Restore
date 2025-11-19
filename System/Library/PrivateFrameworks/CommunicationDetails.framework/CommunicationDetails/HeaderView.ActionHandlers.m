@interface HeaderView.ActionHandlers
- (_TtCV20CommunicationDetails10HeaderView14ActionHandlers)init;
@end

@implementation HeaderView.ActionHandlers

- (_TtCV20CommunicationDetails10HeaderView14ActionHandlers)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtCV20CommunicationDetails10HeaderView14ActionHandlers_initiateGroupAudioCall);
  *v2 = closure #1 in variable initialization expression of HeaderView.ActionHandlers.initiateGroupAudioCall;
  v2[1] = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtCV20CommunicationDetails10HeaderView14ActionHandlers_initiateGroupVideoCall);
  *v3 = closure #1 in variable initialization expression of HeaderView.ActionHandlers.initiateGroupVideoCall;
  v3[1] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HeaderView.ActionHandlers();
  return [(HeaderView.ActionHandlers *)&v5 init];
}

@end