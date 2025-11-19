@interface ParticipantGrid.ActionHandlers
- (_TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers)init;
@end

@implementation ParticipantGrid.ActionHandlers

- (_TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_removeParticipant);
  *v2 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.removeParticipant;
  v2[1] = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_blockContact);
  *v3 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.blockContact;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_unblockContact);
  *v4 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.unblockContact;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_isPhoneCallAvailable);
  *v5 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.isPhoneCallAvailable;
  v5[1] = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_startPhoneCall);
  *v6 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.startPhoneCall;
  v6[1] = 0;
  v7 = (self + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_isFaceTimeVideoAvailable);
  *v7 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.isFaceTimeVideoAvailable;
  v7[1] = 0;
  v8 = (&self->super.isa + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_startFaceTimeVideoCall);
  *v8 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.startFaceTimeVideoCall;
  v8[1] = 0;
  v9 = (&self->super.isa + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantGrid14ActionHandlers_presentPopoverForUnknownContact);
  *v9 = closure #1 in variable initialization expression of ParticipantGrid.ActionHandlers.presentPopoverForUnknownContact;
  v9[1] = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for ParticipantGrid.ActionHandlers();
  return [(ParticipantGrid.ActionHandlers *)&v11 init];
}

@end