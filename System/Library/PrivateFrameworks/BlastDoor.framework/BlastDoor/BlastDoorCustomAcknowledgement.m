@interface BlastDoorCustomAcknowledgement
- (BlastDoorBalloonPluginPayloadWrapper)payload;
- (BlastDoorCustomAcknowledgement)init;
- (NSArray)participantDestinationIdentifiers;
- (NSAttributedString)content;
- (_NSRange)associatedMessageRange;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorCustomAcknowledgement

- (int64_t)associatedMessageType
{
  if (*(&self->super.isa + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement))
  {
    return 4000;
  }

  else
  {
    return 0;
  }
}

- (_NSRange)associatedMessageRange
{
  v2 = sub_21457AF78(self, a2, &OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement);
  result.length = v3;
  result.location = v2;
  return result;
}

- (NSArray)participantDestinationIdentifiers
{
  v3 = type metadata accessor for CustomAcknowledgement();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement, v6, type metadata accessor for CustomAcknowledgement);
  if (*(v6 + 9))
  {
    v7 = *(v6 + 9);

    sub_213FB5844(v6, type metadata accessor for CustomAcknowledgement);
    v8 = sub_2146D98E8();

    return v8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (BlastDoorBalloonPluginPayloadWrapper)payload
{
  v3 = type metadata accessor for BalloonPlugin.Payload(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement;
  v8 = type metadata accessor for CustomAcknowledgement();
  sub_213FB568C(&v7[*(v8 + 44)], v6, type metadata accessor for BalloonPlugin.Payload);
  v9 = type metadata accessor for _ObjCEnumBalloonPluginPayloadWrapper(0);
  v10 = objc_allocWithZone(v9);
  sub_213FB568C(v6, v10 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, type metadata accessor for BalloonPlugin.Payload);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = [(BlastDoorCustomAcknowledgement *)&v13 init];
  sub_213FB5844(v6, type metadata accessor for BalloonPlugin.Payload);

  return v11;
}

- (NSAttributedString)content
{
  v2 = self + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement;
  v3 = &v2[*(type metadata accessor for CustomAcknowledgement() + 52)];
  if (*v3)
  {
    v6 = *v3;
    v7 = *(v3 + 1);
    v8 = *(v3 + 2);
    v4 = sub_214664BB8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorCustomAcknowledgement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end