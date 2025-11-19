@interface BlastDoorCombinedPluginAttachment
- (BlastDoorBalloonPluginPayloadWrapper)payload;
- (BlastDoorCombinedPluginAttachment)init;
- (BlastDoorEncodedAttachments)attachments;
@end

@implementation BlastDoorCombinedPluginAttachment

- (BlastDoorEncodedAttachments)attachments
{
  v2 = *(&self->super.isa + OBJC_IVAR___BlastDoorCombinedPluginAttachment_combinedPluginAttachment);
  v3 = type metadata accessor for _ObjCEncodedAttachmentsWrapper();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = [(BlastDoorCombinedPluginAttachment *)&v7 init];

  return v5;
}

- (BlastDoorBalloonPluginPayloadWrapper)payload
{
  v3 = type metadata accessor for BalloonPlugin.Payload(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorCombinedPluginAttachment_combinedPluginAttachment;
  v8 = type metadata accessor for CombinedPluginAttachment();
  sub_213FB568C(&v7[*(v8 + 20)], v6, type metadata accessor for BalloonPlugin.Payload);
  v9 = type metadata accessor for _ObjCEnumBalloonPluginPayloadWrapper(0);
  v10 = objc_allocWithZone(v9);
  sub_213FB568C(v6, v10 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, type metadata accessor for BalloonPlugin.Payload);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = [(BlastDoorCombinedPluginAttachment *)&v13 init];
  sub_213FB5844(v6, type metadata accessor for BalloonPlugin.Payload);

  return v11;
}

- (BlastDoorCombinedPluginAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end