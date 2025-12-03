@interface BlastDoorBalloonPlugin
- (BOOL)has_associatedMessageType;
- (BlastDoorBalloonPlugin)init;
- (BlastDoorBalloonPluginPayloadWrapper)payload;
- (BlastDoorEncodedAttachments)attachments;
- (NSArray)participantDestinationIdentifiers;
- (NSAttributedString)content;
- (NSString)associatedMessageGUID;
- (NSString)bundleID;
- (_NSRange)associatedMessageRange;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorBalloonPlugin

- (BlastDoorBalloonPluginPayloadWrapper)payload
{
  v3 = type metadata accessor for BalloonPlugin.Payload(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v6, type metadata accessor for BalloonPlugin.Payload);
  v7 = type metadata accessor for _ObjCEnumBalloonPluginPayloadWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v6, v8 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, type metadata accessor for BalloonPlugin.Payload);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(BlastDoorBalloonPlugin *)&v11 init];
  sub_213FB5844(v6, type metadata accessor for BalloonPlugin.Payload);

  return v9;
}

- (NSString)bundleID
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v7, type metadata accessor for BalloonPlugin);
  v8 = &v7[*(v4 + 28)];
  if (*(v8 + 3))
  {
    v9 = *(v8 + 2);
    v10 = *(v8 + 3);

    sub_213FB5844(v7, type metadata accessor for BalloonPlugin);
    v11 = sub_2146D9588();

    return v11;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (NSAttributedString)content
{
  v2 = self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin;
  v3 = &v2[*(type metadata accessor for BalloonPlugin(0) + 36)];
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

- (NSArray)participantDestinationIdentifiers
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v7, type metadata accessor for BalloonPlugin);
  v8 = &v7[*(v4 + 48)];
  if (*(v8 + 2))
  {
    v9 = *(v8 + 2);

    sub_213FB5844(v7, type metadata accessor for BalloonPlugin);
    v10 = sub_2146D98E8();

    return v10;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (NSString)associatedMessageGUID
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v7, type metadata accessor for BalloonPlugin);
  v8 = &v7[*(v4 + 52)];
  v9 = *(v8 + 3);
  if (v9 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v10 = *(v8 + 2);
    v11 = *(v8 + 3);

    sub_213FB5844(v7, type metadata accessor for BalloonPlugin);
    if (v9)
    {
      v12 = sub_2146D9588();
      sub_213FDC6D0(v10, v9);
    }

    else
    {
      v12 = 0;
    }

    return v12;
  }

  return result;
}

- (_NSRange)associatedMessageRange
{
  selfCopy = self;
  v3 = sub_214553214();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)has_associatedMessageType
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v7, type metadata accessor for BalloonPlugin);
  v8 = &v7[*(v4 + 60)];
  if (v8[25])
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v9 = v8[24];
    selfCopy = self;
    sub_213FB5844(v7, type metadata accessor for BalloonPlugin);

    return (v9 & 1) == 0;
  }

  return result;
}

- (int64_t)associatedMessageType
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v7, type metadata accessor for BalloonPlugin);
  v8 = &v7[*(v4 + 60)];
  if (v8[25])
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v9 = v8[24];
    v10 = *(v8 + 2);
    sub_213FB5844(v7, type metadata accessor for BalloonPlugin);
    if (v9)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

- (BlastDoorEncodedAttachments)attachments
{
  v2 = self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin;
  v3 = *&v2[*(type metadata accessor for BalloonPlugin(0) + 56)];
  v4 = type metadata accessor for _ObjCEncodedAttachmentsWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = [(BlastDoorBalloonPlugin *)&v8 init];

  return v6;
}

- (BlastDoorBalloonPlugin)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end